class ChiPhiStore
  @displayName: 'ChiPhiStore'
  constructor: ->
    @bindActions(ChiPhiActions)
    @chi_phis = []
    @options_tenhang = []
    @options_donvitinh = []
    @exportPublicMethods(
      {
        getChiPhis: @getChiPhis,
        getOptionsTenHang: @getOptionsTenHang,
        getOptionsDonViTinh: @getOptionsDonViTinh
      }
    )
    
  onInitData: (props)->
    @chi_phis = props.chi_phis.chi_phis
    @options_tenhang = props.chi_phis.options_tenhang
    @options_donvitinh = props.chi_phis.options_donvitinh

  onReloadData: ()->
    $.ajax
      type: 'GET'
      url: '/chi_phis'
      dataType: 'json'
      success: (response)=>
        @chi_phis = response.chi_phis.chi_phis
        @options_tenhang = response.chi_phis.options_tenhang
        @options_donvitinh = response.chi_phis.options_donvitinh
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
      success: (response)=>
        @chi_phis.push(response)
        @emitChange()
      error: (response)=>
        console.log('error')
        console.log(response)
    return false

  getChiPhis: ()->
    @getState().chi_phis

  getOptionsTenHang: ()->
    @getState().options_tenhang

  getOptionsDonViTinh: ()->
    @getState().options_donvitinh

window.ChiPhiStore = alt.createStore(ChiPhiStore)