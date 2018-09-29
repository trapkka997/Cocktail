$('ul.tabs').tabs();


$('.editor').scroll(function() {    
    var scroll = $(this).scrollTop();

    if (scroll >= 13.312) {
        $(".editor-toolbar").addClass("over");
    } else {
        $(".editor-toolbar").removeClass("over");
    }
});

$('.js-preview').on('click', function () {
  $('body').toggleClass('preview')
})

$('.tooltipped').tooltip({delay: 50});

$(".button-collapse").sideNav({
  menuWidth: 400,
  edge: 'right',
  closeOnClick: false,
  draggable: true,
});