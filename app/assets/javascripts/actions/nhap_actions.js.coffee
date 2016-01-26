class NhapActions
  constructor: ->
    @generateActions(
      'reloadData',
      'initData',
      'submitNhap',
    )


window.NhapActions = alt.createActions(NhapActions)
