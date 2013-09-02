$(document).ready(function () {
	$('.shows-datatable').dataTable({
		"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	  "sPaginationType": "bootstrap",
    "bRetrieve": true
	});

  $('.add-link-btn').hover( 
    function() {
      $(this).animate({'opacity': 1}, 500);
    },
    function() {
      $(this).animate({'opacity': .4}, 500);
    }
    );
   $('.add-link-btn').click(function () {
    $(this).next().animate({'top': 11}, 400).animate({'opacity': 1}, 400);
   });

   //ajax for add show
   $('#add-link-container').html('did something');
   
});
