{ div, i, form, button, h1, ul, li, a, span, label, input, table, thead, tbody, tr, th, td } = React.DOM


ChiPhiForm = React.createFactory React.createClass
  getInitialState: ->
    tenhang: ''
    donvitinh: ''
    soluong: ''
    dongia: ''

  

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

  

  onSubmit: ()->
    data =
      chi_phi: 
        tenhang: this.refs.tenhang.state.entryValue
        donvitinh: this.refs.donvitinh.state.entryValue
        soluong: this.refs.soluong.value
        dongia: this.refs.dongia.value
        create_at: new Date()
    ChiPhiActions.submitChiPhi data
    @resetState()
  
  render: ->
    form id: 'chi_phi_form', name: 'chi_phi_form',
      div className: 'row',
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
            span className: 'typeahead-button',
              button type: 'sumit',
                i className: 'typeahead-search-icon'

      div className: 'row',
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
            span className: 'typeahead-button',
              button type: 'sumit',
                i className: 'typeahead-search-icon'  

      div className: 'row',
        div className: 'column',
          input 
            type: 'text'
            ref: 'soluong',
            onChange: @onChangeSoLuong,
            placeholder: 'Enter SL',
            value: @state.so_luong
        div className: 'column',
          input 
            type: 'text'
            ref: 'dongia',
            onChange: @onChangeDonGia,
            placeholder: 'Enter DG',
            value: @state.don_gia
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
  
  componentDidMount: ->
    console.log @state.options_tenhang
    $.typeahead
      input: "#tenhang"
      order: "asc"
      source: 
        data: @state.options_tenhang
      callback:
        onInit: (node)->
          console.log('Typeahead Initiated on ' + node.selector)
    
    $.typeahead
      input: "#donvitinh"
      order: "asc"
      source: 
        data: @state.options_donvitinh
      callback:
        onInit: (node)->
          console.log('Typeahead Initiated on ' + node.selector)

  onChange: (state)->
    @setState(state)

  render: ->
    div className: 'container',
      div className: 'row',
        div className: 'column',
          h1 {}, 'Chi Phi'
      ChiPhiForm()
      div className: 'row',
        ChiPhiList(chi_phis: @state.chi_phis)

