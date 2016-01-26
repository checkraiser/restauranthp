class ChiPhiStore
  @displayName: 'ChiPhiStore'
  constructor: ->
    @bindActions(ChiPhiActions)
    @chi_phis = []
    @options = []
    @exportPublicMethods(
      {
        getChiPhis: @getChiPhis,
        getOptions: @getOptions
      }
    )
    
  onInitData: (props)->
    @chi_phis = props.chi_phis
    $.ajax
      type: 'GET'
      url: '/options?type=chi_phi'
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
      url: '/chi_phis'
      dataType: 'json'
      success: (response)=>
        @chi_phis = response.chi_phis
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log('response')

    $.ajax
      type: 'GET'
      url: '/options?type=chi_phi'
      dataType: 'json'
      success: (response)=>
        @options = response.options
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log('response')

  onSubmitChiPhi: (data)->
    $.ajax
      type: 'POST'
      url: '/chi_phis'
      dataType: 'json'
      data: data
      error: (response)=>
        console.log('error')
        console.log(response)
    return false

  getChiPhis: ()->
    @getState().chi_phis

  getOptions: ()->
    @getState().options

window.ChiPhiStore = alt.createStore(ChiPhiStore)