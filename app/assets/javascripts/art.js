$(function() {
  $(document).keypress(show_login);
  $('#cancel_login').click(hide_login);
  arrange_paintings();
  // $('#container').isotope('layout', '.item');
});

function show_login(event) {
  if(event.which == 108) {
    $('#login').show();
  }
}

function hide_login() {
  $('#login').hide();
}

function arrange_paintings() {
  $('#container').isotope({
    // itemSelector : '.item',
    // layoutMode : 'fitRows'
    masonryHorizontal: {
      rowHeight: 216
    }
  });
}