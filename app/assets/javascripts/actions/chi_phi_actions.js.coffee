class ChiPhiActions
  constructor: ->
    @generateActions(
      'reloadData',
      'initData',
      'submitChiPhi',
    )


window.ChiPhiActions = alt.createActions(ChiPhiActions)
