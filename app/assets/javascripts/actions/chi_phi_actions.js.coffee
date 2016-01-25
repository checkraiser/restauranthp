class ChiPhiActions
  constructor: ->
    @generateActions(
      'initData',
      'submitChiPhi',
    )

window.ChiPhiActions = alt.createActions(ChiPhiActions)