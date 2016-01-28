{ div, i, form, button, h1, ul, li, a, span, label, input, table, thead, tbody, tr, th, td } = React.DOM


NhapForm = React.createFactory React.createClass
  getInitialState: ->
    tenhang: ''
    donvitinh: ''
    soluong: ''
    dongia: ''

  componentDidMount: ->    
    @setTypeAheadTenhang()
    @setTypeAheadDonViTinh()

  setTypeAheadTenhang: ->
    $.typeahead
      input: "#tenhang"
      minLength: 0
      maxItem: 15
      order: "asc"
      hint: true
      accent: true
      searchOnFocus: true
      backdrop: 
        "background-color": "#3879d9",
        "opacity": "0.1",
        "filter": "alpha(opacity=10)"
      source: 
        data: @props.options_tenhang
      debug: true
      callback:
        onInit: (node)->
          console.log('Typeahead Initiated on ' + node.selector)
        onClick: (node, a, item, event)=>
          console.log item
          @setState(tenhang: item.display)

  setTypeAheadDonViTinh: ->
    $.typeahead
      input: "#donvitinh"
      minLength: 0
      maxItem: 15
      order: "asc"
      hint: true
      accent: true
      searchOnFocus: true
      backdrop: 
        "background-color": "#3879d9",
        "opacity": "0.1",
        "filter": "alpha(opacity=10)"
      source: 
        data: @props.options_donvitinh
      callback:
        onInit: (node)->
          console.log('Typeahead Initiated on ' + node.selector)  
        onClick: (node, a, item, event)=>
          console.log item
          @setState(donvitinh: item.display)

  resetState: ->
    @setState(tenhang: '', donvitinh: '', dongia: '', soluong: '')
    @setTypeAheadTenhang()
    @setTypeAheadDonViTinh()

  onChangeTenHang: (e)->
    @setState(tenhang: e.target.value)

  onChangeDonViTinh: (e)->
    @setState(donvitinh: e.target.value)

  onChangeSoLuong: (e)->
    @setState(soluong: e.target.value)

  onChangeDonGia: (e)->
    @setState(dongia: e.target.value)

  

  onSubmit: (e)->
    e.preventDefault()
    data =
      nhap: 
        tenhang: this.refs.tenhang.value
        donvitinh: this.refs.donvitinh.value
        soluong: this.refs.soluong.value
        dongia: this.refs.dongia.value
        create_at: new Date()
    NhapActions.submitNhap data
    @resetState()
  
  render: ->
    div className: 'row',
      div className: 'column',
        div className: 'typeahead-container',
          div className: 'typeahead-field',
            span className: 'typeahead-query',
              input 
                id: 'tenhang',
                type: 'text',
                ref: 'tenhang',
                onChange: @onChangeTenHang,
                placeholder: 'Khoản mục nhập',
                value: @state.tenhang,
                type: 'search',
                name: 'tenhang',
                autoComplete: 'off'
            
      div className: 'column',
        div className: 'typeahead-container',
          div className: 'typeahead-field',
            span className: 'typeahead-query',
              input 
                id: 'donvitinh',
                type: 'text',
                ref: 'donvitinh',
                onChange: @onChangeDonViTinh,
                placeholder: 'Đơn vị tính',
                value: @state.donvitinh,
                type: 'search',
                name: 'donvitinh',
                autoComplete: 'off'

      div className: 'column',
        input 
          type: 'text'
          ref: 'soluong',
          onChange: @onChangeSoLuong,
          placeholder: 'Số lượng',
          value: @state.soluong
      div className: 'column',
        input 
          type: 'text'
          ref: 'dongia',
          onChange: @onChangeDonGia,
          placeholder: 'Đơn giá',
          value: @state.dongia
      button 
        className: 'button',
        onClick: @onSubmit,
        'Add'


NhapList = React.createFactory React.createClass
  render: ->
    table {},
      thead {},
        tr {},
          th {}, 'STT'
          th {}, 'Khoản mục nhập'
          th {}, 'Đơn vị tính'
          th {}, 'Số lượng'
          th {}, 'Đơn giá'
      tbody {},
        _.map @props.nhaps, (nhap)=>
          tr {key: nhap.id},
            td {}, nhap.id
            td {}, nhap.tenhang
            td {}, nhap.donvitinh
            td {}, nhap.soluong
            td {}, nhap.dongia

window.NhapIndex = React.createClass
  getInitialState: ->
    nhaps: []
    options_tenhang: []
    options_donvitinh: []

  componentWillMount: ->
    NhapStore.listen(@onChange)
    NhapActions.initData(@props)

  componentWillUnmount: ->
    NhapStore.unlisten(@onChange)
  
  onChange: (state)->
    @setState(state)

  render: ->
    div className: 'container',
      div className: 'row',
        div className: 'column',
          h1 {}, 'Nhập'
      NhapForm(options_tenhang: @state.options_tenhang, options_donvitinh: @state.options_donvitinh)
      div className: 'row',
        NhapList(nhaps: @state.nhaps)

