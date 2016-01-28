{ div, i, form, button, h1, ul, li, a, span, label, input, table, thead, tbody, tr, th, td } = React.DOM


ChiPhiForm = React.createFactory React.createClass
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
      chi_phi: 
        tenhang: this.refs.tenhang.value
        donvitinh: this.refs.donvitinh.value
        soluong: this.refs.soluong.value
        dongia: this.refs.dongia.value
        create_at: new Date()
    ChiPhiActions.submitChiPhi data
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
                placeholder: 'Enter TH',
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
                placeholder: 'Enter DVT',
                value: @state.donvitinh,
                type: 'search',
                name: 'donvitinh',
                autoComplete: 'off'

      div className: 'column',
        input 
          type: 'text'
          ref: 'soluong',
          onChange: @onChangeSoLuong,
          placeholder: 'Enter SL',
          value: @state.soluong
      div className: 'column',
        input 
          type: 'text'
          ref: 'dongia',
          onChange: @onChangeDonGia,
          placeholder: 'Enter DG',
          value: @state.dongia
      button 
        className: 'button',
        onClick: @onSubmit,
        'Add'


ChiPhiList = React.createFactory React.createClass
  render: ->
    table {},
      thead {},
        tr {},
          th {}, 'STT'
          th {}, 'KMC'
          th {}, 'DVT'
          th {}, 'SL'
          th {}, 'DG'
      tbody {},
        _.map @props.chi_phis, (chi_phi)=>
          tr {key: chi_phi.id},
            td {}, chi_phi.id
            td {}, chi_phi.tenhang
            td {}, chi_phi.donvitinh
            td {}, chi_phi.soluong
            td {}, chi_phi.dongia

window.ChiPhiIndex = React.createClass
  getInitialState: ->
    chi_phis: []
    options_tenhang: []
    options_donvitinh: []

  componentWillMount: ->
    ChiPhiStore.listen(@onChange)
    ChiPhiActions.initData(@props)

  componentWillUnmount: ->
    ChiPhiStore.unlisten(@onChange)
  
  onChange: (state)->
    @setState(state)

  render: ->
    div className: 'container',
      div className: 'row',
        div className: 'column',
          h1 {}, 'Chi Phi'
      ChiPhiForm(options_tenhang: @state.options_tenhang, options_donvitinh: @state.options_donvitinh)
      div className: 'row',
        ChiPhiList(chi_phis: @state.chi_phis)

