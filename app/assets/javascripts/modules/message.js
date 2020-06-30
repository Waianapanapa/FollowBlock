define("modules.message",
[
  "services.http",
], function (HttpService) {
  var Message = function (element) {
    this.httpService = new HttpService();

    this.el = element;
    this.b