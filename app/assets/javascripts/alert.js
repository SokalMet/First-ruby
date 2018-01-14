var Sokalshop = Sokalshop || {};
Sokalshop.Alerts = function () {};

(function (Class) {
  function show(default_options, options) {
    var $options = $.extend(default_options, options);
    return swal($options);
  }

  Class.warning = function (options) {
    return show({
      title: "Are you sure?",
      text: "",
      showCancelButton: true,
      confirmButtonText: "Yes",
      confirmButtonColor: '#d9534f',
      cancelButtonText: "No",
      closeOnCancel: true
    }, options);
  };

  Class.confirm = function (options) {
    return show({
      title: "Please confirm",
      text: "",
      showCancelButton: true,
      confirmButtonText: "OK",
      closeOnConfirm: false,
      closeOnCancel: true
    }, options);
  };

  return Class;
}(Sokalshop.Alerts));

