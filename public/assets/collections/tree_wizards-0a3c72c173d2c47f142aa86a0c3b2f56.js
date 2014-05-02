(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  RailsBackboneWizard.Collections.TreeWizards = (function(_super) {
    __extends(TreeWizards, _super);

    function TreeWizards() {
      return TreeWizards.__super__.constructor.apply(this, arguments);
    }

    TreeWizards.prototype.model = RailsBackboneWizard.Models.TreeWizard;

    return TreeWizards;

  })(Backbone.Collection);

}).call(this);
