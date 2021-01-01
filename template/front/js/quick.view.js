$(document).ready(function(){
	"use strict";
	//var cartFavEvt;
	$('.quick-view-addtocart').on('click', function(){
		$('.product-detail').addClass('moveleft');
	 	$('.quick-view-addcart-main').addClass('show-added-cart');
    });
	$('.minusBtn').click(function(){
		no_of_bottle = parseInt($(this).parent('.plus-minus').find('.noValue').val());		
		if(no_of_bottle > 1){
			no_of_bottle = no_of_bottle - 1;
			$(this).parent('.plus-minus').find('.noValue').val(no_of_bottle);
		}
	});
	$('.plusBtn').click(function(){
		no_of_bottle =  parseInt($(this).parent('.plus-minus').find('.noValue').val());
		no_of_bottle = no_of_bottle + 1;
		$(this).parent('.plus-minus').find('.noValue').val(no_of_bottle);
	});
	$(".noValue").on("keypress keyup blur",function (event) {
		"use strict";
	   $(this).val($(this).val().replace(/[^\d].+/, ""));
		if ((event.which < 48 || event.which > 57)) {
			event.preventDefault();
		}
	});
});