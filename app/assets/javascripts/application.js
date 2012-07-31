//= require jquery-1.7.2.min
//= require jquery-ui-1.8.22.dialog-only.min

$(function() {
  $('a', '#menu').on('click', function(event) {
    event && event.preventDefault();

    var selector = $(this).attr('href');
    var $dialog = $(selector);

    $dialog.dialog({
      title: $(this).html(),
      width: 800,
      height: 500
    });
  });
});
