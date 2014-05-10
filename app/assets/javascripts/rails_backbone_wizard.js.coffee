window.RailsBackboneWizard =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new RailsBackboneWizard.Routers.TreeWizards
    Backbone.history.start()
$(document).ready ->
  RailsBackboneWizard.initialize()

  

