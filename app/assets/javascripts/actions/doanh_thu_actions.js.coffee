class DoanhThuActions
  constructor: ->
    @generateActions(
      'reloadData',
      'initData',
      'submitDoanhThu',
    )


window.DoanhThuActions = alt.createActions(DoanhThuActions)
