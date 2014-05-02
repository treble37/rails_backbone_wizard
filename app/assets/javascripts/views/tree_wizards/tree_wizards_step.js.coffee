class RailsBackboneWizard.Views.TreeWizardsStep extends Backbone.View

  initialize: (obj) ->
    _.bindAll(this, 'render','nextStep');
    @step = obj.id - 1
    @router = obj
    return
    
  first_step_template: JST['tree_wizards/first_step'],
  second_step_template: JST['tree_wizards/second_step']

  render: ->
    switch @step
      when 0
        $(@el).html(@first_step_template())
      when 1
        $(@el).html(@second_step_template())
    # @load_tree(@step)
    this       

  nextStep: ->
    @router.navigate('steps/'+((@step+1)%2+1).toString(), {trigger: true})
    $.ajax
      url: ""
      context: document.body
      success: (s, x) ->
        $(this).html s
        return
  
  load_tree: (step) ->
    switch step
      when 0
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
      when 1
        hobbies = $("#hobbies").jstree
          core:
            themes: 
              icons: false
          checkbox:
            keep_selected_style: false
          state: 
            key: "hobbies"
          plugins: ["checkbox", "state"]
    return

  events: ->
    'click #next-step': 'nextStep'