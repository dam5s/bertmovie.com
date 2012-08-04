//= require jquery-1.7.2.min
//= require jquery-ui-1.8.22.dialog-only.min
$(function() {
  $('a.modal').on('click', function(event) {
    event && event.preventDefault();

    var selector = $(this).attr('href');
    var $dialog = $(selector);

    $dialog.dialog({
      title: $(this).attr('title'),
      width: 800,
      height: 531,
      beforeClose: function(event, ui) {
        $(this).dialog('destroy');
      }
    });
  });

  $('#notice').delay(5000).fadeOut();
});
