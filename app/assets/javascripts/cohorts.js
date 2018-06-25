// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  if (document.querySelector('body.cohorts.index') == undefined) {
    return;
  }

  $('.delete-todo').on('ajax:success', function(e) {
    $(e.target).parents('.parent-tr').remove();
    toastr.success('Your todo has been successfully deleted');
  });
});

$(document).ready(function() {
  if (document.querySelector('body.cohorts.new, body.cohorts.edit') == undefined) {
    return;
  }
});