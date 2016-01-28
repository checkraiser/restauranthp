class NhapStore
  @displayName: 'NhapStore'
  constructor: ->
    @bindActions(NhapActions)
    @nhaps = []
    @options_tenhang = []
    @options_donvitinh = []
    @exportPublicMethods(
      {
        getNhaps: @getNhaps,
      }
    )
    
  onInitData: (props)->
    @nhaps = props.nhaps
    @options_tenhang = props.options_tenhang
    @options_donvitinh = props.options_donvitinh

  onReloadData: ()->
    $.ajax
      type: 'GET'
      url: '/nhaps'
      dataType: 'json'
      success: (response)=>
        @nhaps = response.nhaps
        @options_tenhang = response.options_tenhang
        @options_donvitinh = response.options_donvitinh
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log('response')

  onSubmitNhap: (data)->
    $.ajax
      type: 'POST'
      url: '/nhaps'
      dataType: 'json'
      data: data
      success: (response)=>
        @nhaps.push(response)
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log(response)
    return false

  getNhaps: ()->
    @getState().nhaps

window.NhapStore = alt.createStore(NhapStore)