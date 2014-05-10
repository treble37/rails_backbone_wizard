(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  RailsBackboneWizard.Routers.TreeWizards = (function(_super) {
    __extends(TreeWizards, _super);

    function TreeWizards() {
      return TreeWizards.__super__.constructor.apply(this, arguments);
    }

    TreeWizards.prototype.routes = {
      'steps/:id': 'step'
    };

    TreeWizards.prototype.step = function(id) {
      var view;
      this.id = id;
      view = new RailsBackboneWizard.Views.TreeWizardsStep(this);
      return $('#step-view').html(view.render().el);
    };

    return TreeWizards;

  })(Backbone.Router);

}).call(this);
