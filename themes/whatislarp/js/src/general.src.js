/*jslint browser: true*/
/*global $, jQuery*/

$(function() {
	"use strict";

	$('.no-js').removeClass('no-js').addClass('js');

	if($('.flexslider').length > 0){

		$('.flexslider').flexslider({
				pauseOnAction: false,
				directionNav: false,
				animation: "slide",
				slideshowSpeed:10000,
				pausePlay: true,
				pauseText: " ",
				playText: " ",
				smoothHeight: true
		});
	}


	// Customize validation for user forms. Accessibility fixes
	var siteForm = $('.UserDefinedForm #Form_Form');
	if (siteForm.length > 0) {

			// Set up validation.
			siteForm.validate({
					errorPlacement: function(error, element) {
							var errorId = element.attr('id') + '_message';
							//prevent duplicate labels
							element.closest('div.field').find('label .error').remove();
							error.appendTo(element.closest('div.field'));
							//Make valid html and adjust attributes
							error.removeAttr('for').addClass('message').attr('id', errorId);
							//Link error to input
							element.attr('aria-describedby', errorId);
					},
					errorElement: 'span'
			});

			if(siteForm.find('.requiredField').length > 0){
					siteForm.prepend('<p class="req-indicator-message">Required fields are marked</p>');
			}
	}

});
