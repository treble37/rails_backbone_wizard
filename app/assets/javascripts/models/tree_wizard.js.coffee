class RailsBackboneWizard.Models.TreeWizard extends Backbone.Model
  initialize: (attributes) ->
      @current_step = attributes.current_step
      return

  # Default attributes 
  defaults:
    current_step: 0