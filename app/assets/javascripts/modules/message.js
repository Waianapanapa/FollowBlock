define("modules.message",
[
  "services.http",
], function (HttpService) {
  var Message = function (element) {
    this.httpService = new HttpService();

    this.el = element;
    this.bidId = this.el.data('bid-id')
    this.messages = this.el.find("[data-wrapper='messages