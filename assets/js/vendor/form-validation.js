// Wait for the DOM to be ready
$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='contact-form']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side

      contactname: "required",
      contactmessage: "required",
      contactreason: "required",
      contactemail: {
        required: true,
        // Specify that email should be validated
        // by the built-in "email" rule
        email: true
      },
      contactphone: {
        required: true,
        // Specify that email should be validated
        // by the built-in "email" rule
        phoneUS: true
      },

      password: {
        required: true,
        minlength: 5
      }
    },
    // Specify validation error messages
    messages: {

      contactname: "<p class='error'>Please enter your name</p>",
      contactemail: "<p class='error'>Please enter a valid email address</p>",
      contactphone: "<p class='error'>Please enter a valid 10 digit phone number</p>",
      contactreason: "<p class='error'>Please select a reason</p>"



    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});
