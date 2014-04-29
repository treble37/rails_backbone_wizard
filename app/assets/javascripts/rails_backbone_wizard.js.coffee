window.RailsBackboneWizard =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    alert 'Hello from Backbone!'
    new RailsBackboneWizard.Routers.TreeWizards
    Backbone.history.start()
$(document).ready ->
  RailsBackboneWizard.initialize()
  cars = $("#cars").jstree
      core:
        themes: 
          icons: false
      checkbox:
        keep_selected_style: false
      state: 
        key: "cars"
      plugins: ["checkbox", "state"]

