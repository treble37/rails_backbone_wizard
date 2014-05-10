(function() {
  window.RailsBackboneWizard = {
    Models: {},
    Collections: {},
    Views: {},
    Routers: {},
    initialize: function() {
      new RailsBackboneWizard.Routers.TreeWizards;
      return Backbone.history.start();
    }
  };

  $(document).ready(function() {
    var hobbies, input_boxes, medical;
    RailsBackboneWizard.initialize();
    medical = $("#medical").jstree({
      core: {
        themes: {
          icons: false
        }
      },
      checkbox: {
        keep_selected_style: false
      },
      state: {
        key: "medical"
      },
      plugins: ["checkbox", "state"]
    });
    input_boxes = $("#input_boxes").jstree({
      core: {
        themes: {
          icons: false
        }
      },
      inputbox: {
        key: "inputbox"
      },
      plugins: ["inputbox"]
    });
    return hobbies = $("#hobbies").jstree({
      core: {
        themes: {
          icons: false
        }
      },
      checkbox: {
        keep_selected_style: false
      },
      state: {
        key: "hobbies"
      },
      plugins: ["checkbox", "state"]
    });
  });

}).call(this);
