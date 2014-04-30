class RailsBackboneWizard.Views.TreeWizardsStep extends Backbone.View


  initialize: ->
    _.bindAll(this, 'render','nextStep', 'load_tree');
    @collection = new RailsBackboneWizard.Collections.TreeWizards
    tree_wizard = new RailsBackboneWizard.Models.TreeWizard(
      current_step: 0
    )
    @collection.add(tree_wizard)
    @model = tree_wizard
    return
    
  first_step_template: JST['tree_wizards/first_step'],
  second_step_template: JST['tree_wizards/second_step']

  render: ->
    step = @model.get 'current_step'
    switch step
      when 0
        $(@el).html(@first_step_template())
      when 1
        $(@el).html(@second_step_template())
    @load_tree()
    this       

  nextStep: ->
    tree_wizard = @model
    count = ((tree_wizard.get 'current_step')+1)%2
    if count==1
      @save_tree()
    tree_wizard.set 
      current_step: count
    tree_wizard.save
    @collection.fetch
    @render()

  load_tree: ->
    if $.vakata.storage.get("cars")
      $("#cars").on "ready.jstree", (e, data) ->
        data.instance.restore_state()
        data.instance.open_all()
        return
    else
      cars = $("#cars").jstree
        core:
          themes: 
            icons: false
        checkbox:
          keep_selected_style: true
        state: 
          key: "cars"
        plugins: ["checkbox", "state"]

    return 
  save_tree: ->
    if $.vakata.storage.get("cars")
      $("#cars").on "ready.jstree", (e, data) ->
        alert 'save'
        data.instance.save_state()
        return
    return

   events: ->
    'click #next-step': 'nextStep'