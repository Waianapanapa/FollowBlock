define("services.http",
[
  "jQuery"
], function ($) {
  var HttpService = function() {};

  HttpService.prototype.get = function (url, successHandler, errorHandler) {
    $.ajax({
      url: url,
   