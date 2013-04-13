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

  $('#cast_crew').jcarousel();

  $('.previous', '#cast_crew').click(function(e) {
    $('#cast_crew').jcarousel('scroll', '-=1');
    e.preventDefault();
  });

  $('.next', '#cast_crew').click(function(e) {
    $('#cast_crew').jcarousel('scroll', '+=1');
    e.preventDefault();
  });

  $('#notice').delay(5000).fadeOut();

  var $firstQuote = $("li", "#quotes").first();
  var showQuote = function($quote) {
      var $nextQuote = $quote.next();
      if ($nextQuote.length == 0) $nextQuote = $firstQuote;
      $quote.fadeIn();

      setTimeout(function() {
        $quote.fadeOut();
        showQuote($nextQuote);
      }, 6000);
  };
  showQuote($firstQuote);
});
