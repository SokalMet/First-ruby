/*
JQuery Easy Overlay v2.0.0
*/
(function( $ ){
	$.fn.easyOverlay = function(action) {
		switch (action) {
			case 'start':
				{
					var $this = $(this);
		
					if($this.length <= 0) return;
					
					// Calculating OVERLAY DIV z-index
					var overlayZIndex;
					var targetZIndex = $this.css('z-index');
					if (targetZIndex == "auto")
						overlayZIndex = "99999";
					else 
						overlayZIndex = parseFloat(targetZIndex) + 1;
					
					// Putting and Styling OVERLAY DIV if doesn't exist
					if( !$("#jqueryEasyOverlayDiv").length ) {
						var innerDiv = document.createElement('div');
						$(innerDiv)
							.css({ position: "absolute"})
							.attr("id", "jqueryOverlayLoad")
							.html("<i class='fa fa-spin fa-spinner fa-2x'></i>&nbsp;");
						
						var containerDiv = document.createElement('div');	
						$(containerDiv)
							.css({
								display: "none",
								position: "absolute",
								background: "#fff"
							})
							.attr('id',"jqueryEasyOverlayDiv")
							.append(innerDiv);
						
						$("body").append(containerDiv);
					}
					
					// Restoring some CSS of OVERLAY DIV after every 'overlayout' because jquery.fadeOut method take off it
					$("#jqueryEasyOverlayDiv").css({
						opacity : 0.5,
						zIndex  : overlayZIndex,
						top     :  $this.offset().top,
						left    : $this.offset().left,
						width   : $this.outerWidth(),
						height  : $this.outerHeight()
					});
					
					// Calculating Spinner Div positioning
					var topOverlay = (($this.height()/2)-12);
					var leftOverlay = (($this.width()/2)-12);
					if(topOverlay < 0) topOverlay = 0;
                    if(typeof $this.attr('class') !== 'undefined') {
                        if ($this.attr('class').indexOf('decision-tile') >= 0) topOverlay = (($this.height() / 2));
                        if ($this.attr('class').indexOf('decision-header') >= 0) topOverlay = (($this.height() / 2) - 4);
                    }
					$("#jqueryOverlayLoad").css({
						top  : topOverlay,
						left : leftOverlay
					});
					
					// Show OVERLAY DIV
					$("#jqueryEasyOverlayDiv").fadeIn();
				}
				break;
			case 'stop':
				{
					if( $("#jqueryEasyOverlayDiv").length ) $("#jqueryEasyOverlayDiv").fadeOut();
				}
				break;
		}
    	
		return this;
   	}; 
})(jQuery);
