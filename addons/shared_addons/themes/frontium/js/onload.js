$(document).ready(function () {
	
	// Drop-down navigation
	$('nav ul').superfish({
		delay:       300,
		animation:   {height:'show'},
		speed:       200,
		dropShadows: false
	});
	
	// Latest tweets
	getTwitters('tweet', {
		id: 'envato',		// twitter username
		count: 3,			// number of tweets
		clearContents: true,
		withFriends: true,
		ignoreReplies: true,
		enableLinks: true,
		template: '<p>%text% <span>%time%</span></p>'
	});
	
	// Slider
	$('#slides').slides({
		preload: true,
		preloadImage: 'img/spinner.gif',
		generatePagination: true,
		generateNextPrev: false,
		play: 5000,
		pause: 2500,
		hoverPause: true
	});
	
	// Activate and configure FancyBox lightbox
	$(".fancybox").fancybox({
		'titlePosition'		: 'over',
		'overlayShow'		: true,
		'overlayOpacity'	: 0.6,
		'overlayColor'		: 'black'
	});
	
	// FancyBox lightbox plugin for videos
	$(".video").click(function() {
		$.fancybox({
			'padding'		: 0,
			'overlayShow'	: true,
			'overlayOpacity': 0.6,
			'overlayColor'	: 'black',
			'autoScale'		: true,
			'width'			: 800,
			'height'		: 450,
			'title'			: this.title,
			'href'			: this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
			'type'			: 'swf',
			'swf'			: {
			'wmode'			: 'transparent',
			'allowfullscreen': 'true'
			}
		});
		return false;
	});
	
	// Wrap the headers in the footer in span tags for styling purposes
	$('footer h3').wrapInner('<span>');
	
	// Form validation in the contact form
	$("#contactForm").validate({
		errorElement: "em"
	});
	
	// Form validation in the newsletter form
	$("#newsletter").validate({
		errorElement: "em"
	});

	// Activate the smooth scrolling effect
	$('.top').scroller();

});


$.fn.scroller = function(){

    return this.each( function()
    {
        $(this).click( function()
        {
            var scroll_target = $(this).attr('href');
            $.scrollTo(scroll_target,800); 
            return false;
        });  
    });
};