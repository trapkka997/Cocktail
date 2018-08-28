$(function() {
  $(".col-md-4").slice(0, 3).show();
  $("#loadMore").on('click', function(e) {
    e.preventDefault();
    $("div:hidden").slice(1, 9).slideDown();
    if ($("div:hidden").length == 0) {
      $("#load").fadeOut('slow');
    }
    
	if ($(".col-md-4:hidden").length == 0) {
      alert("No more dreams");
    }
  });
	
});
