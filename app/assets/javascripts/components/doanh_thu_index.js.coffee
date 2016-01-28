{ div, i, form, button, h1, ul, li, a, span, label, input, table, thead, tbody, tr, th, td } = React.DOM


DoanhThuForm = React.createFactory React.createClass
  getInitialState: ->
    masoban: ''
    khoanmucthu: ''
    donvitinh: ''
    soluong: ''
    dongia: ''

  componentDidMount: ->    
    @setTypeAheadMaSoBan()
    @setTypeAheadKhoanMucThu()
    @setTypeAheadDonViTinh()

  setTypeAheadMaSoBan: ->
    $.typeahead
      input: "#masoban"
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
        data: @props.options_masoban
      debug: true
      callback:
        onInit: (node)->
          console.log('Typeahead Initiated on ' + node.selector)
        onClick: (node, a, item, event)=>
          console.log item
          @setState(masoban: item.display)

  setTypeAheadKhoanMucThu: ->
    $.typeahead
      input: "#khoanmucthu"
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
        data: @props.options_khoanmucthu
      debug: true
      callback:
        onInit: (node)->
          console.log('Typeahead Initiated on ' + node.selector)
        onClick: (node, a, item, event)=>
          console.log item
          @setState(khoanmucthu: item.display)

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
    @setState(masoban: '', khoanmucthu: '', donvitinh: '', dongia: '', soluong: '')
    @setTypeAheadMaSoBan()
    @setTypeAheadKhoanMucThu()
    @setTypeAheadDonViTinh()

  onChangeMaSoBan: (e)->
    @setState(masoban: e.target.value)

  onChangeKhoanMucThu: (e)->
    @setState(khoanmucthu: e.target.value)

  onChangeDonViTinh: (e)->
    @setState(donvitinh: e.target.value)

  onChangeSoLuong: (e)->
    @setState(soluong: e.target.value)

  onChangeDonGia: (e)->
    @setState(dongia: e.target.value)

  

  onSubmit: (e)->
    e.preventDefault()
    data =
      doanh_thu: 
        masoban: this.refs.masoban.value
        khoanmucthu: this.refs.khoanmucthu.value
        donvitinh: this.refs.donvitinh.value
        soluong: this.refs.soluong.value
        dongia: this.refs.dongia.value
        create_at: new Date()
    DoanhThuActions.submitDoanhThu data
    @resetState()
  
  render: ->
    div className: 'row',
      div className: 'column',
        div className: 'typeahead-container',
          div className: 'typeahead-field',
            span className: 'typeahead-query',
              input 
                id: 'masoban',
                type: 'text',
                ref: 'masoban',
                onChange: @onChangeMaSoBan,
                placeholder: 'Mã số bàn',
                value: @state.masoban,
                type: 'search',
                name: 'masoban',
                autoComplete: 'off'

      div className: 'column',
        div className: 'typeahead-container',
          div className: 'typeahead-field',
            span className: 'typeahead-query',
              input 
                id: 'khoanmucthu',
                type: 'text',
                ref: 'khoanmucthu',
                onChange: @onChangeKhoanMucThu,
                placeholder: 'Khoản mục thu',
                value: @state.khoanmucthu,
                type: 'search',
                name: 'khoanmucthu',
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


DoanhThuList = React.createFactory React.createClass
  render: ->
    table {},
      thead {},
        tr {},
          th {}, 'STT'
          th {}, 'Mã số bàn'
          th {}, 'Khoản mục thu'
          th {}, 'Đơn vị tính'
          th {}, 'Số lượng'
          th {}, 'Đơn giá'
      tbody {},
        _.map @props.doanh_thus, (doanh_thu)=>
          tr {key: doanh_thu.id},
            td {}, doanh_thu.id
            td {}, doanh_thu.masoban
            td {}, doanh_thu.khoanmucthu
            td {}, doanh_thu.donvitinh
            td {}, doanh_thu.soluong
            td {}, doanh_thu.dongia

window.DoanhThuIndex = React.createClass
  getInitialState: ->
    doanh_thus: []
    options_masoban: []
    options_khoanmucthu: []
    options_donvitinh: []

  componentWillMount: ->
    DoanhThuStore.listen(@onChange)
    DoanhThuActions.initData(@props)

  componentWillUnmount: ->
    DoanhThuStore.unlisten(@onChange)
  
  onChange: (state)->
    @setState(state)

  render: ->
    div className: 'container',
      div className: 'row',
        div className: 'column',
          h1 {}, 'Doanh Thu'
      DoanhThuForm(options_masoban: @state.options_masoban, options_khoanmucthu: @state.options_khoanmucthu, options_donvitinh: @state.options_donvitinh)
      div className: 'row',
        DoanhThuList(doanh_thus: @state.doanh_thus)

