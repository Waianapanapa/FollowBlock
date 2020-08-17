define("pages.orders.index",
[
  "jQuery",
  "modules.message"
], function($, Message) {
  _.each($(".order"), function(order) {
    new Message($(order));
  });
});
