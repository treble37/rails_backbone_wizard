(function() {
  if (window.JST == null) {
    window.JST = {};
  }

  window.JST['tree_wizards/first_step'] = function(context) {
    return (function() {
      var $o;
      $o = [];
      $o.push("<div class='row'>\n  <div class='col-md-4'>1.  Medical Profile</div>\n  <div class='col-md-4'>2.  Hobbies</div>\n</div>\n<h1>STEP 1</h1>\n<br>\n<button class='btn btn-primary' id='next-step'>Step 2</button>\n<p>Fill out this 1 minute questionnaire to find the best match.</p>\n<h3>I am:</h3>\n<select>\n  <option value='Male'>Male</option>\n  <option value='Female'>Female</option>\n  <option value='Both'>Both</option>\n  <option value='Not sure'>Not sure</option>\n</select>\n<h5>Medical Profile</h5>\n<div id='medical'>\n  <ul>\n    <li>Medical History\n      <ul>\n        <li>Heart disease</li>\n        <li>High blood pressure</li>\n        <li>Cancer</li>\n      </ul>\n    </li>\n  </ul>\n</div>\n<h5>Nested Input Boxes Example</h5>\n<div id='input_boxes'>\n  <ul>\n    <li id='parent1'>All Boxes\n      <ul>\n        <li id='child1'>Box 1</li>\n        <li id='child2'>Box 2</li>\n        <li id='child3'>Box 3</li>\n        <li id='child4'>Box 4</li>\n      </ul>\n    </li>\n  </ul>\n</div>");
      return $o.join("\n").replace(/\s(?:id|class)=(['"])(\1)/mg, "");
    }).call(window.HAML.context(context));
  };

}).call(this);
