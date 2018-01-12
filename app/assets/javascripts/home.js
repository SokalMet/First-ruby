(function() {
  var $circle = $(document).find('#circle');
  var show = $circle.hasClass('show');

  $(document).on('click', '.new-item', function() {
    if (show) {
      $circle.css('opacity','1');
    }else{
      $circle.css('opacity','0');
    }
  })
}());