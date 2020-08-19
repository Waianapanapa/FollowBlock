
define("pages.registrations.form", function () {
  var el,
      companyFields,
      individualFields,
      personableType;

  var init = function (element) {
    el = element;

    companyFields = el.find(".company");
    individualFields = el.find(".individual");
    personableType = el.find("select[name$='[personable_type]']");
    personableType.on("change", onChangePersonableType);
    personableType.trigger("change");
  };

  var onChangePersonableType = function () {
    var value = $(this).val();

    if (value === "company") {
      hideFields(individualFields);
      showFields(companyFields);
    } else {
      hideFields(companyFields);
      showFields(individualFields);
    }
  };

  var showFields = function(fields) {
    for (var i = 0; i < fields.length; i++) {
      $(fields[i]).show();
    }
  };

  var hideFields = function(fields) {
    for (var i = 0; i < fields.length; i++) {
      $(fields[i]).hide()
                  .find("input")
                  .val("");
    }
  };

  return {
    init: init
  };
});