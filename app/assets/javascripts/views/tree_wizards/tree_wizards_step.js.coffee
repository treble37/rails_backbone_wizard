class RailsBackboneWizard.Views.TreeWizardsStep extends Backbone.View


  initialize: ->
    _.bindAll(this, 'render','nextStep');
    @collection = new RailsBackboneWizard.Collections.TreeWizards
    tree_wizard = new RailsBackboneWizard.Models.TreeWizard(
      current_step: 0
    )
    @collection.add(tree_wizard)
    @model = tree_wizard
    
  first_step_template: JST['tree_wizards/first_step'],
  second_step_template: JST['tree_wizards/second_step']

  render: ->
    step = @collection.at(0).get 'current_step'
    switch step
      when 0
        $(@el).html(@first_step_template())
      when 1
        $(@el).html(@second_step_template())
    this       

  nextStep: ->
    tree_wizard = @collection.at(0)
    count = ((tree_wizard.get 'current_step')+1)%2
    tree_wizard.set 
      current_step: count
    tree_wizard.save
    @collection.fetch
    @render()

   events: ->
    'click #next-step': 'nextStep'