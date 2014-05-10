(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  RailsBackboneWizard.Models.TreeWizard = (function(_super) {
    __extends(TreeWizard, _super);

    function TreeWizard() {
      return TreeWizard.__super__.constructor.apply(this, arguments);
    }

    TreeWizard.prototype.initialize = function(attributes) {
      this.current_step = attributes.current_step;
    };

    TreeWizard.prototype.defaults = {
      current_step: 0
    };

    return TreeWizard;

  })(Backbone.Model);

}).call(this);
