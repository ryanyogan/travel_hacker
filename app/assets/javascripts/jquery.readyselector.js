
// This little script will dynamically load external scripts
// we do not want to store the stripe javascript, we want to load
// their library so it is not altered and executed...
//
(function($){
  var ready = $.fn.ready;
  $.fn.ready = function(fn){
    if (this.context === undefined) {
      ready(fn);
    } else if (this.selector) {
      ready($.proxy(function(){
        $(this.selector, this.context).each(fn);
      }, this));
    } else {
      ready($.proxy(function(){
        $(this).each(fn);
      }, this));
    }
  }
})(jQuery);
