class NhapStore
  @displayName: 'NhapStore'
  constructor: ->
    @bindActions(NhapActions)
    @nhaps = []
    @options = []
    @exportPublicMethods(
      {
        getNhaps: @getNhaps,
        getOptions: @getOptions
      }
    )
    
  onInitData: (props)->
    @nhaps = props.nhaps
    $.ajax
      type: 'GET'
      url: '/options?type=nhap'
      dataType: 'json'
      success: (response)=>
        @options = response.options
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log('response')

  onReloadData: ()->
    $.ajax
      type: 'GET'
      url: '/nhaps'
      dataType: 'json'
      success: (response)=>
        @nhaps = response.nhaps
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log('response')

    $.ajax
      type: 'GET'
      url: '/options?type=nhap'
      dataType: 'json'
      success: (response)=>
        @options = response.options
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

  getOptions: ()->
    @getState().options

window.NhapStore = alt.createStore(NhapStore)