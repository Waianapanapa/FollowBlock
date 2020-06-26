define("boot", ["jQuery"], function ($) {
  var controller = $("body").data("controller"),
      action = $("body").data("action");

  try {
    require("pages." + controller + "." + action);
  } catch (error) {
  