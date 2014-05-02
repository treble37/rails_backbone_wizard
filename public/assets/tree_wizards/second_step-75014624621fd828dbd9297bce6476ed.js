(function() {
  if (window.JST == null) {
    window.JST = {};
  }

  window.JST['tree_wizards/second_step'] = function(context) {
    return (function() {
      var $o;
      $o = [];
      $o.push("<div class='row'>\n  <div class='col-md-4'>1.  Medical Profile</div>\n  <div class='col-md-4'>2.  Hobbies</div>\n</div>\n<h1>STEP 2</h1>\n<br>\n<button class='btn btn-primary' id='next-step'>Back to Step 1</button>\n<p>Fill out this 1 minute questionnaire to find the best match.</p>\n<h5>What kinds of hobbies below do you like best?</h5>\n<div id='hobbies'>\n  <ul>\n    <li>Hobbies\n      <ul>\n        <li>Skiing</li>\n        <li>Football</li>\n        <li>Travel</li>\n        <li>Reading</li>\n        <li>Other</li>\n      </ul>\n    </li>\n  </ul>\n</div>");
      return $o.join("\n").replace(/\s(?:id|class)=(['"])(\1)/mg, "");
    }).call(window.HAML.context(context));
  };

}).call(this);
