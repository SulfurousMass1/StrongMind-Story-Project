document.addEventListener("turbo:load", function() {
  $('#selected-crust').val('Plain') // Sets the default crust to plain in the event the user does not select a crust option

  // Reinitialize Bootstrap dropdowns
  var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'));
  dropdownElementList.forEach(function (dropdownToggleEl) {
    new bootstrap.Dropdown(dropdownToggleEl);
  });

  // Attach click event handler for dropdown menu items
  $(document).on('click', '.dropdown-menu a', function(event) {
    event.preventDefault();
    var selectedText = $(this).text();
    $('.dropdown-toggle').text(selectedText);
    $('#selected-crust').val(selectedText);
  });
});

// $(document).on('turbo:load', function() {
//   // Sets the default crust to "Plain" if the user does not select a crust option
//   $('#selected-crust').val('Plain');

//   // Reinitialize Bootstrap dropdowns
//   $('.dropdown-toggle').each(function() {
//     new bootstrap.Dropdown(this);
//   });

//   // Attach click event handler for dropdown menu items using jQuery
//   $(document).on('click', '.dropdown-menu a', function(event) {
//     event.preventDefault();
//     var selectedText = $(this).text();
//     $('.dropdown-toggle').text(selectedText);
//     $('#selected-crust').val(selectedText);
//   });
// });

// document.addEventListener("turbo:load", function() {
//   // Initialize Bootstrap dropdowns again if needed
//   var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'));
//   dropdownElementList.forEach(function (dropdownToggleEl) {
//     new bootstrap.Dropdown(dropdownToggleEl);
//   });

//   // Attach click event handler for dropdown menu items
//   $('.dropdown-menu a').on('click', function(event) {
//     event.preventDefault();
//     var selectedValue = $(this).data('value'); // Get the data-value of the clicked item
//     var selectedText = $(this).text(); // Get the text of the clicked item

//     $('#dropdownMenuButton').text(selectedText); // Update the button text
//     $('#selected-crust').val(selectedValue); // Update the hidden select's value to match the clicked item
//   });
// });
