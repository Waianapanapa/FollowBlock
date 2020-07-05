define("modules.message",
[
  "services.http",
], function (HttpService) {
  var Message = function (element) {
    this.httpService = new HttpService();

    this.el = element;
    this.bidId = this.el.data('bid-id')
    this.messages = this.el.find("[data-wrapper='messages']");
    this.text = this.el.find("textarea[name='text']");

    this.showMessages = this.el.find("[data-action='show-messages']");
    this.showMessages.on("click", show.bind(this));

    this.hideMessages = this.el.find("[data-action='hide-messages']");
    this.hideMessages.on("click", hide.bind(this));

    this.saveMessage = this.el.find("[data-action='save-message']");
    this.saveMessage.on("click", save.bind(this));

    var sou