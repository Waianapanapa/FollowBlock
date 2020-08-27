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
      successHandler(data);
    }).fail(function (jxr, textStatus, message) {
      errorHandler(message);
    });
  };

  HttpService.prototype.post = function (url, payload, successHandler, errorHandler) {
    $.ajax({
      url: url,
      method: "POST",
      data: payload,
      dataType: "json"
    }).done(function (data) {
      successHandler(data);
    }).fail(function (jxr, textStatus, message) {
      errorHandler(me