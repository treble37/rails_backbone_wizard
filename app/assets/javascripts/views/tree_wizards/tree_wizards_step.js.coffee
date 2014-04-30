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
        @load_tree()
      when 1
        $(@el).html(@second_step_template())
    this       

  nextStep: ->
    count = ((@model.get 'current_step')+1)%2
    if count==0
      location.reload()
    @model.set 
      current_step: count
    @model.save
    @collection.fetch
    @render()

  load_tree: ->
    if $.vakata.storage.get("cars")
      $("#cars").jstree('refresh')
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
  
   events: ->
    'click #next-step': 'nextStep'