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

    var source = this.el.find("#message-template").html();
    this.template = Handlebars.compile(source);
  };

  var show = function (event) {
    event.preventDefault();

    this.hideMessages.show();
    this.showMessages.hide();
    this.messages.show();
  };

  var hide = function (event) {
    event.preventDefault();

    this.hideMessages.hide();
    this.showMessages.show();
    this.messages.hide();
  };

  var save = function (event) {
    event.preventDefault();

    var url = '/bids/' + this.bidId + '/messages',
        payload = {
          message: { text: this.text.val() }
        };

    this.httpService.post(url, payload, function(data) {
      var message = this.template({
        text: data.text,
        author: data.author,
        sentAt: data.sent_at
      });

      this.messages.prepend(message);
      this.text.val("");
    }.bind(this), function(data) {
      console.log('error', data);
    });
  };

  return Message;
});
