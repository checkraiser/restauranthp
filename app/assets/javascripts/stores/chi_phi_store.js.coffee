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

  onSubmitChiPhi: (params)->
    console.log(params)
    $.ajax
      type: 'POST'
      url: '/chi_phis'
      data:
        chi_phi:
          khoan_muc_chi: params.khoan_muc_chi
          so_luong: params.so_luong
          don_gia: params.don_gia
          ghi_chu: params.ghi_chu
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