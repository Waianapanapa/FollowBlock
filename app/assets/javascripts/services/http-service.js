define("services.http",
[
  "jQuery"
], function ($) {
  var HttpService = function() {};

  HttpService.prototype.get = function (url, successHandler, errorHandler) {
    $.ajax({
      url: url,
      method: "GET",
      dataType: "json"
    }).done(function (data) {
      successHand