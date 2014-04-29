class RailsBackboneWizard.Routers.TreeWizards extends Backbone.Router
  
  routes:
    'step/': 'steps'
  steps: ->
    view = new RailsBackboneWizard.Views.TreeWizardsStep()
    $('#step-view').html(view.render().el)