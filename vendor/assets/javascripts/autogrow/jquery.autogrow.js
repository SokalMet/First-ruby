jQuery.fn.autoGrow = function() {
  return this.each(function() {

    var $this = jQuery(this);

    var createMirror = function(textarea) {
      var $element = jQuery(textarea);
      if ($element.parent().find('.autogrow-textarea-mirror').length < 1) {
        $element.after('<div class="autogrow-textarea-mirror"></div>');
      }
      return $element.next('.autogrow-textarea-mirror')[0];
    };

    var sendContentToMirror = function (textarea) {
      if (typeof mirror !== 'undefined' && mirror !== null) {
        mirror.innerHTML = String(textarea.value).replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/'/g, '&#39;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/\n/g, '<br />') + '.';

        var $textArea = jQuery(textarea);
        var $mirror = jQuery(mirror);

        if ($textArea.height() !== $mirror.height()) {
          $textArea.height($mirror.height());
        }
      }
    };

    var growTextarea = function () {
      sendContentToMirror(this);
    };

    // Create a mirror
    var mirror = createMirror(this);

    if (typeof mirror !== 'undefined' && mirror !== null) {
      // Style the mirror
      mirror.style.display = 'none';
      mirror.style.wordWrap = 'break-word';

      // mirror.style.padding = $this.css('padding');
      mirror.style.paddingTop = $this.css('paddingTop');
      mirror.style.paddingBottom = $this.css('paddingBottom');
      mirror.style.paddingLeft = $this.css('paddingLeft');
      mirror.style.paddingRight = $this.css('paddingRight');

      mirror.style.width = $this.css('width');
      mirror.style.fontFamily = $this.css('font-family');
      mirror.style.fontSize = $this.css('font-size');
      mirror.style.lineHeight = $this.css('line-height');
    }

    // Style the textarea
    this.style.overflow = "hidden";
    this.style.minHeight = this.rows + "em";

    // Bind the textarea's event
    this.onkeyup = growTextarea;

    // Fire the event for text already present
    sendContentToMirror(this);

  });
};
