class RailsBackboneWizard.Routers.TreeWizards extends Backbone.Router
  
  routes:
    'steps/:id': 'step'

  step: (id) ->
    this.id = id
    view = new RailsBackboneWizard.Views.TreeWizardsStep(this)
    $('#step-view').html(view.render().el)
