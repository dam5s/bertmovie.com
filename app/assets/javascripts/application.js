//= require jquery-1.7.2.min
//= require jquery-ui-1.8.22.dialog-only.min
//= require jquery.carousel
$(function() {
  $('a.modal').on('click', function(event) {
    event && event.preventDefault();

    var selector = $(this).attr('href');
    var $dialog = $(selector);

    $dialog.dialog({
      title: $(this).attr('title'),
      width: 800,
      height: 523,
      beforeClose: function(event, ui) {
        $(this).dialog('destroy');
      }
    });
  });

  $('#gallery').jcarousel();

  $('.previous', '#gallery').click(function(e) {
    $('#gallery').jcarousel('scroll', '-=1');
    e.preventDefault();
  });

  $('.next', '#gallery').click(function(e) {
    $('#gallery').jcarousel('scroll', '+=1');
    e.preventDefault();
  });

  $('#notice').delay(5000).fadeOut();
});
