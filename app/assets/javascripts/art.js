$(function() {
  $(document).keypress(show_login);
  $('#cancel_login').click(hide_login);
  $('.best_in_place').best_in_place();
});

function show_login(event) {
  if(event.which == 96) {
    $('#login').show();
  }
}

function hide_login() {
  $('#login').hide();
}

function cancel_form() {
  $('#paint_form').empty();
  $('#paper_form').empty();
  $('#link_form').empty();
  $('#solo_form').empty();
  $('#group_form').empty();
  $('#teaching_form').empty();
  $('#school_form').empty();
  $('#bio_image_form').empty();
  $('#contact_image_form').empty();
}