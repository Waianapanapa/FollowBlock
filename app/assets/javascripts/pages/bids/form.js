define("pages.bids.form", function () {
  var el,
      areaType,
      forwardFields,
      paymentType,
      ruralFields;

  var init = function (element) {
    el = element;

    forwardFields = el.find(".forward");
    ruralFie