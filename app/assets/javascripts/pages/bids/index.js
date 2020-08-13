define("pages.bids.index",
[
  "jQuery",
  "modules.message"
], function($, Message) {
  _.each($(".bid"), function(order) {
    new Message($(order));
  });
})