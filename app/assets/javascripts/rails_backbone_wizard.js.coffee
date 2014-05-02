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
  medical = $("#medical").jstree
    core:
      themes: 
        icons: false
    checkbox:
      keep_selected_style: false
    state: 
      key: "medical"
    plugins: ["checkbox", "state"]

  input_boxes = $("#input_boxes").jstree
    core:
      themes: 
        icons: false
    inputbox:
      key: "inputbox"
    plugins: ["inputbox"]

