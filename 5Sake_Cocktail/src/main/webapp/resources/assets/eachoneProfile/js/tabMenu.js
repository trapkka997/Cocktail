var tabs = $('.tabs_tabMenu');
var items = $('.tabs_tabMenu').find('a').length;
var selector = $(".tabs_tabMenu").find(".selector_tabMenu");
var activeItem = tabs.find('.active_tabMenu');
var activeWidth = activeItem.innerWidth();
$(".selector_tabMenu").css({
  "left": activeItem.position.left + "px", 
  "width": activeWidth + "px"
});

$(".tabs_tabMenu").on("click","a",function(){
  $('.tabs_tabMenu a').removeClass("active_tabMenu");
  $(this).addClass('active_tabMenu');
  var activeWidth = $(this).innerWidth();
  var itemPos = $(this).position();
  $(".selector_tabMenu").css({
    "left":itemPos.left + "px", 
    "width": activeWidth + "px"
  });
});