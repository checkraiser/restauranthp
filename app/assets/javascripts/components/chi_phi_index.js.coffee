{ div, form, button, h1, ul, li, a, span, label, input, table, thead, tbody, tr, th, td } = React.DOM

Typeahead = React.createFactory ReactTypeahead.Typeahead

ChiPhiForm = React.createFactory React.createClass
  getInitialState: ->
    khoan_muc_chi: ''
    so_luong: 0
    don_gia: 0

  resetState: ->
    @setState(khoan_muc_chi: '', so_luong: '', don_gia: '')

  onChangeKhoanMucChi: (e)->
    @setState(khoan_muc_chi: e.target.value)

  onChangeSoLuong: (e)->
    @setState(so_luong: e.target.value)

  onChangeDonGia: (e)->
    @setState(don_gia: e.target.value)

  onSubmit: ()->
    data =
      chi_phi: 
        khoan_muc_chi: this.refs.khoan_muc_chi.value
        so_luong: this.refs.so_luong.value
        don_gia: this.refs.don_gia.value
    ChiPhiActions.submitChiPhi data
    @resetState()
  
  render: ->
    div className: 'row',
      div className: 'column',
        Typeahead(options:['John', 'Paul', 'George', 'Ringo'], maxVisible:2)

        input 
          type: 'text'
          ref: 'khoan_muc_chi',
          onChange: @onChangeKhoanMucChi,
          placeholder: 'Enter KMC',
          value: @state.khoan_muc_chi
      div className: 'column',
        input 
          type: 'text'
          ref: 'so_luong',
          onChange: @onChangeSoLuong,
          placeholder: 'Enter SL',
          value: @state.so_luong
      div className: 'column',
        input 
          type: 'text'
          ref: 'don_gia',
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
          th {}, 'SL'
          th {}, 'DG'
          th {}, 'TT'
      tbody {},
        _.map @props.chi_phis, (chi_phi)=>
          tr {key: chi_phi.id},
            td {}, chi_phi.id
            td {}, chi_phi.khoan_muc_chi
            td {}, chi_phi.so_luong
            td {}, chi_phi.don_gia
            td {}, chi_phi.thanh_tien

window.ChiPhiIndex = React.createClass
  getInitialState: ->
    chi_phis: []
    options: []

  componentWillMount: ->
    ChiPhiStore.listen(@onChange)
    ChiPhiActions.initData(@props)
    pusher = new Pusher('6c57eb75f33d0b498bed', {
      encrypted: true
    });
    channel = pusher.subscribe('chi_phi_channel');
    channel.bind 'chi_phi_updated', (data)->
      ChiPhiActions.reloadData()

  componentWillUnmount: ->
    ChiPhiStore.unlisten(@onChange)

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

