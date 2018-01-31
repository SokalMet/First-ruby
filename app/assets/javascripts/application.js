// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require bootstrap.min
//= require jquery-ui
//= require underscore_settings
//= require underscore-min
//= require jquery.easy-overlay
//= require jquery.ui.touch-punch.min
//= require jquery-ui-combobox
//= require js.cookie
//= require autogrow/jquery.autogrow
//= require sweetalert2.min
//= require alert
//= require jquery.easy-overlay
//= require jquery_ujs
//= require_tree .

$(function() {
  $('.wrapper').easyOverlay('stop');
  $(document).on('click dblclick', 'textarea', function() {
    $(this).autoGrow();
  });

  $(document).on('click dblclick', '.btn-danger', function(e) {
    var $button = $(this);
    e.preventDefault();
    e.stopPropagation();
    Sokalshop.Alerts.warning().then(function (isConfirm) {
      if (isConfirm) {
        $button.parent().parent().find('.empty_cart').click();
        $('.wrapper').easyOverlay('start');
      }
    })
  });

  $(document).on('click', '.toggle-window', function(e) {
    e.preventDefault();
    var panel = $(this).parent().parent();
    var messages_list = panel.find('.messages-list');

    panel.find('.panel-body').toggle();
    panel.attr('class', 'panel panel-default');

    if (panel.find('.panel-body').is(':visible')) {
      var height = messages_list[0].scrollHeight;
      messages_list.scrollTop(height);
    }
  });
});
