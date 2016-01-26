{ div, form, button, h1, ul, li, a, span, label, input, table, thead, tbody, tr, th, td } = React.DOM

Typeahead = React.createFactory ReactTypeahead.Typeahead

NhapForm = React.createFactory React.createClass
  getInitialState: ->
    loai_mat_hang: ''
    so_luong: 0
    don_gia: 0

  resetState: ->
    @setState(loai_mat_hang: '', so_luong: '', don_gia: '')

  onChangeKhoanMucChi: (e)->
    @setState(loai_mat_hang: e.target.value)

  onChangeSoLuong: (e)->
    @setState(so_luong: e.target.value)

  onChangeDonGia: (e)->
    @setState(don_gia: e.target.value)

  onSubmit: ()->
    data =
      nhap: 
        loai_mat_hang: this.refs.loai_mat_hang.state.entryValue
        so_luong: this.refs.so_luong.value
        don_gia: this.refs.don_gia.value
    ChiPhiActions.submitChiPhi data
    @resetState()
  
  render: ->
    div className: 'row',
      div className: 'column',
        Typeahead(options: @props.options, maxVisible:2, ref: 'loai_mat_hang', placeholder: 'LMH')
        
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


NhapList = React.createFactory React.createClass
  render: ->
    table {},
      thead {},
        tr {},
          th {}, 'STT'
          th {}, 'LMH'
          th {}, 'SL'
          th {}, 'DG'
          th {}, 'TT'
      tbody {},
        _.map @props.nhaps, (chi_phi)=>
          tr {key: chi_phi.id},
            td {}, chi_phi.id
            td {}, chi_phi.loai_mat_hang
            td {}, chi_phi.so_luong
            td {}, chi_phi.don_gia
            td {}, chi_phi.thanh_tien

window.NhapIndex = React.createClass
  getInitialState: ->
    nhaps: []
    options: []

  componentWillMount: ->
    NhapStore.listen(@onChange)
    NhapActions.initData(@props)
    pusher = new Pusher('6c57eb75f33d0b498bed', {
      encrypted: true
    });
    channel = pusher.subscribe('nhap_channel');
    channel.bind 'nhap_updated', (data)->
      NhapActions.reloadData()

  componentWillUnmount: ->
    NhapStore.unlisten(@onChange)

  onChange: (state)->
    @setState(state)

  render: ->
    div className: 'container',
      div className: 'row',
        div className: 'column',
          h1 {}, 'Nhap'
      NhapForm(options: @state.options)
      div className: 'row',
        NhapList(nhaps: @state.nhaps)

