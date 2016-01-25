class ChiPhiStore
  @displayName: 'ChiPhiStore'
  constructor: ->
    @bindActions(ChiPhiActions)
    @chi_phis = []
    @exportPublicMethods(
      {
        getChiPhis: @getChiPhis  
      }
    )
    


  onInitData: (props)->
    @chi_phis = props.chi_phis

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

  onSubmitChiPhi: (data)->
    console.log(JSON.stringify(data))
    $.ajax
      type: 'POST'
      url: '/chi_phis'
      dataType: 'json'
      data: data
      success: (response)=>
        @chi_phis.push(response)
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log(response)
    return false

  getChiPhis: ()->
    @getState().chi_phis

window.ChiPhiStore = alt.createStore(ChiPhiStore)