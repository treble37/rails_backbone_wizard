(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  RailsBackboneWizard.Views.TreeWizardsStep = (function(_super) {
    __extends(TreeWizardsStep, _super);

    function TreeWizardsStep() {
      return TreeWizardsStep.__super__.constructor.apply(this, arguments);
    }

    TreeWizardsStep.prototype.initialize = function(obj) {
      _.bindAll(this, 'render', 'nextStep');
      this.step = obj.id - 1;
      this.router = obj;
    };

    TreeWizardsStep.prototype.first_step_template = JST['tree_wizards/first_step'];

    TreeWizardsStep.prototype.second_step_template = JST['tree_wizards/second_step'];

    TreeWizardsStep.prototype.render = function() {
      switch (this.step) {
        case 0:
          $(this.el).html(this.first_step_template());
          break;
        case 1:
          $(this.el).html(this.second_step_template());
      }
      return this;
    };

    TreeWizardsStep.prototype.nextStep = function() {
      this.router.navigate('steps/' + ((this.step + 1) % 2 + 1).toString(), {
        trigger: true
      });
      return $.ajax({
        url: "",
        context: document.body,
        success: function(s, x) {
          $(this).html(s);
        }
      });
    };

    TreeWizardsStep.prototype.load_tree = function(step) {
      var hobbies, input_boxes, medical;
      switch (step) {
        case 0:
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
          break;
        case 1:
          hobbies = $("#hobbies").jstree({
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
      }
    };

    TreeWizardsStep.prototype.events = function() {
      return {
        'click #next-step': 'nextStep'
      };
    };

    return TreeWizardsStep;

  })(Backbone.View);

}).call(this);
