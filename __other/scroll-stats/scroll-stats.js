// TODO: Remove jQuery dependency
(function (factory) {
	'use strict';

	if (typeof module === 'object' && typeof module.exports === 'object') {
		module.exports = factory(require('jquery'));
	}
	else {
		factory(jQuery);
	}
})(function ($) {
	'use strict';

	$.fn.scrollStats = function (conf) {
		var config = $.extend({
			sensitivity: 100
		}, conf);

		return this.each(function () {
			var lastST = 0;
			var lastSTns = 0; // Last scroll top (no sensitivity)
			var sensitivity = config.sensitivity;
			var el = $(this);

			var addScrollClasses = function () {
				var st = $(document).scrollTop();
				var dh = $(document).height();

				// If user has scrolled at all
				if (Math.abs(lastSTns - st) > 0) {
					if (st > lastSTns) {
						el.removeClass('scrolling-up scrolling-up-far').addClass('scrolling-down has-scrolled-down');
					}
					else {
						el.removeClass('scrolling-down scrolling-down-far').addClass('scrolling-up has-scrolled-up');
					}

					lastSTns = st;
				}

				// If user has scrolled passed sensitivity
				if (Math.abs(lastST - st) > sensitivity) {
					if (st > lastST) {
						el.removeClass('scrolling-up-far').addClass('scrolling-down-far has-scrolled-down-far');
					}
					else {
						el.removeClass('scrolling-down-far').addClass('scrolling-up-far has-scrolled-up-far');
					}

					lastST = st;
				}

				// User has scrolled down more than half the page
				if (st > dh / 2) {
					el.addClass('scrolling-down-halfway');
				}
				else {
					el.removeClass('scrolling-down-halfway');
				}

				// If user is not at the top of the page
				if (st) {
					el.addClass('has-scrolled').removeClass('at-top');
				}
				// User is at top
				else {
					el.addClass('at-top').removeClass('has-scrolled scrolling-down has-scrolled-down scrolling-down-far has-scrolled-down-far scrolling-up has-scrolled-up scrolling-up-far has-scrolled-up-far');
				}
			};

			window.requestAnimationFrame(addScrollClasses);

			$(window).on('scroll', function () {
				window.requestAnimationFrame(addScrollClasses);
			});
		});
	};
});
