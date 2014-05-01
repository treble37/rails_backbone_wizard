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
  cars = $("#cars").jstree
    core:
      themes: 
        icons: false
    checkbox:
      keep_selected_style: false
    state: 
      key: "cars"
    plugins: ["checkbox", "state"]

  input_boxes = $("#input_boxes").jstree
    core:
      themes: 
        icons: false
    inputbox:
      visible: true
    plugins: ["inputbox"]

