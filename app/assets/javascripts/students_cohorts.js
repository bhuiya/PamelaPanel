// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  if (document.querySelector('body.students_cohorts.index') == undefined) {
    return;
  }

  $('.delete-todo').on('ajax:success', function(e) {
    $(e.target).parents('.parent-tr').remove();
    toastr.success('Your todo has been successfully deleted');
  });
});

$(document).ready(function() {
  if (document.querySelector('body.students_cohorts.new, body.students_cohorts.edit') == undefined) {
    return;
  }

});