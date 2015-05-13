(function($) {

	//there may be multiple groupings of accordions on a page
	//each accordion group is wrapped in a div with ids created
	//like accordion-###, where ### is the id of the content element from tt_content
	var $allAccordionGroups = $('[id^="accordion-"]');

	//go through all accordion groups and hide their enclosed panels
	//each accordions group can have many panels
	var $allPanels = $('.panel-body').addClass('panel-body_hidden');

	//clicking a header reveals the accordion content
	$('.panel-heading').on('click', function(evt){
		evt.preventDefault();
		//hide all other panel bodies
		$allPanels.addClass('panel-body_hidden');
		//reveal the one next to the clicked header
		$(this).next('.panel-collapse')
			.find('.panel-body')
			.removeClass('panel-body_hidden');
	});



})(jQuery);