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

      contactname: "Please enter your name",
      contactemail: "Please enter a valid email address",
      contactphone: "Please enter a valid phone number",
      contactreason: "Please select a reason"



    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});
