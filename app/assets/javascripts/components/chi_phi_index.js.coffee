{ div, h1, ul, li, a, span, label, input, table, thead, tbody, tr, th, td } = React.DOM

ChiPhiList = React.createFactory React.createClass
  render: ->
    table {},
      thead {},
        tr {},
          th {}, 'STT'
          th {}, 'KMC'
          th {}, 'SL'
          th {}, 'DG'
      tbody {},
        _.map @props.chi_phis, (chi_phi)=>
          tr {},
            td {}, 1
            td {}, chi_phi.khoan_muc_chi
            td {}, chi_phi.so_luong
            td {}, chi_phi.don_gia

window.ChiPhiIndex = React.createClass
  getInitialState: ->
    chi_phis: []

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
      div className: 'row',
        ChiPhiList(chi_phis: @state.chi_phis)

