class DoanhThuStore
  @displayName: 'DoanhThuStore'
  constructor: ->
    @bindActions(DoanhThuActions)
    @doanh_thus = []
    @options_masoban = []
    @options_khoanmucthu = []
    @options_donvitinh = []
    @exportPublicMethods(
      {
        getDoanhThus: @getDoanhThus,
      }
    )
    
  onInitData: (props)->
    @doanh_thus = props.doanh_thus
    @options_masoban = props.options_masoban
    @options_khoanmucthu = props.options_khoanmucthu
    @options_donvitinh = props.options_donvitinh

  onReloadData: ()->
    $.ajax
      type: 'GET'
      url: '/doanh_thus'
      dataType: 'json'
      success: (response)=>
        @doanh_thus = response.doanh_thus
        @options_masoban = response.options_masoban
        @options_khoanmucthu = response.options_khoanmucthu
        @options_donvitinh = response.options_donvitinh
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log('response')

  onSubmitDoanhThu: (data)->
    $.ajax
      type: 'POST'
      url: '/doanh_thus'
      dataType: 'json'
      data: data
      success: (response)=>
        @doanh_thus.push(response)
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log(response)
    return false

  getDoanhThus: ()->
    @getState().doanh_thus

window.DoanhThuStore = alt.createStore(DoanhThuStore)