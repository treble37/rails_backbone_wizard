(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  RailsBackboneWizard.Views.TreeWizardsIndex = (function(_super) {
    __extends(TreeWizardsIndex, _super);

    function TreeWizardsIndex() {
      return TreeWizardsIndex.__super__.constructor.apply(this, arguments);
    }

    TreeWizardsIndex.prototype.template = JST['tree_wizards/index'];

    return TreeWizardsIndex;

  })(Backbone.View);

}).call(this);
