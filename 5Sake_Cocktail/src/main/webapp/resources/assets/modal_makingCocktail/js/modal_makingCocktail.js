$(document).ready(function() {
	var selectedColor ="";
	$('.color-picker').children().on('click',function(){
		console.log(this);	
		selectedColor = $(this).attr('class');
	});
	
	
  // Color Picker Click
  $(".color-picker").on("click", ".color", function() {
    //console.log( $(this).text() );
    $(".color").removeClass("color-selected");
    $(this).addClass("color-selected");
    $(".buttons-wrapper").removeClass(function (index, css) {
      return (css.match (/(^|\s)color-\S+/g) || []).join(' ');
    });
    $(".buttons-wrapper").addClass( "color-" + $(this).text() );
  });
  // Style Picker Click
  $(".style-picker").on("click", ".style", function() {
    $(".style").removeClass("style-selected");
    $(this).addClass("style-selected");
    $(".buttons-wrapper").removeClass(function (index, css) {
      return (css.match (/(^|\s)style-\S+/g) || []).join(' ');
    });
    $(".buttons-wrapper").addClass( "style-" + $(this).text() );
  });
  // Size Picker Click
  $(".size-picker").on("click", ".size", function() {
    $(".size").removeClass("size-selected");
    $(this).addClass("size-selected");
    $(".buttons-wrapper").removeClass(function (index, css) {
      return (css.match (/(^|\s)size-\S+/g) || []).join(' ');
    });
    $(".buttons-wrapper").addClass( "size-" + $(this).text() );
  });
});




//inputbox_js
var TagsInput = function(element) { 
	  var self = this;
	  var initChar = "\u200B";
	  var initCharPattern = new RegExp(initChar, 'g');
	  
	  var insert = function(element) {
	     if(self.textNode) self.element.insertBefore(element, self.textNode);
	     else self.element.appendChild(element);
	  };
	  
	  var updateCursor = function() {
	    self.cursor = self.blank;
	  };
	  
	  var keydown = function(event) {
	    if(event.keyCode == 188) {
	      event.preventDefault();
	      setTimeout(function() {
	        var text = self.text;
	        if(text) {
	          self.text = initChar;
	          self.add(text);
	        }
	      }, 1);
	    }
	    else if(event.keyCode == 8) {
	      if(self.text.replace(initCharPattern, '') == '') {
	        self.text = initChar+initChar;
	        if(self.selected) {
	          self.element.removeChild(self.selected);
	        }
	        else {
	          var tags = self.tags;
	          var keys = Object.keys(tags)
	          if(keys.length > 0) {
	            var tag = tags[keys[keys.length-1]];
	            tag.setAttribute('data-selected', '');
	          }
	        }
	      }
	    }
	    
	    if(event.keyCode !== 8) {
	      if(self.selected) self.selected.removeAttribute('data-selected');
	    }
	    setTimeout(function() {
	      updateCursor();
	    }, 1);
	  };
	  
	  var focus = function() {
	    updateCursor();
	  };
	  
	  Object.defineProperties(this, {
	    element: {
	      get: function() {
	        return element;
	      },
	      set: function(v) {
	        if(typeof v == 'string') v = document.querySelector(v);
	        element = v instanceof Node ? v : document.createElement('div');
	        if(!element.className.match(/\btags-input\b/)) element.className += ' tags-input';
	        if(element.getAttribute('contenteditable') != 'true') element.setAttribute('contenteditable', 'true');
	        
	        element.removeEventListener('keydown', keydown);
	        element.addEventListener('keydown', keydown);
	        
	        element.removeEventListener('focus', focus);
	        element.addEventListener('focus', focus);
	        this.text = initChar;
	      }
	    },
	    tags: {
	      get: function() {
	        var element;
	        var elements = this.element.querySelectorAll('span');
	        var tags = {};
	        for(var i = 0; i < elements.length; i++) {
	          element = elements[i]
	          tags[element.innerText] = element;
	        }
	        
	        return tags;
	      }
	    },
	    lastChild: {
	      get: function() {
	        return this.element.lastChild;
	      }
	    },
	    textNode: {
	      get: function() {
	        return this.element.lastChild instanceof Text ? this.element.lastChild : null;
	      }
	    },
	    text: {
	      get: function() {
	        return this.textNode ? this.textNode.data : null;
	      },
	      set: function(v) {
	        if(!this.textNode) this.element.appendChild(document.createTextNode(','));
	        this.textNode.data = v;
	      },
	    },
	    cursor: {
	      get: function() {
	        return this.element.getAttribute('data-cursor') !== null;
	      },
	      set: function(v) {
	        if(v) this.element.setAttribute('data-cursor', '');
	        else this.element.removeAttribute('data-cursor');
	      }
	    },
	    focused: {
	      get: function() {
	        return document.activeElement == this.element;
	      }
	    },
	    blank: {
	      get: function() {
	        return this.text.replace(initCharPattern, '') == '';
	      }
	    },
	    selected: {
	      get: function() {
	        return this.element.querySelector('span[data-selected]');
	      }
	    }
	  });
	  
	  this.add = function(tag) {
	    tag = tag.replace(initCharPattern, '');
	    tag = tag.replace(/^\s+/, '').replace(/\s+$/, '');
	    tag = tag[0].toUpperCase()+tag.toLowerCase().slice(1);
	    if(tag != '' && this.tags[tag] === undefined) {
	      var element = document.createElement('span');
	      element.appendChild(document.createTextNode(tag));
	      element.setAttribute('contenteditable', 'false');
	      
	      insert(element);
	    }
	  };
	  
	  this.remove = function(tag) {
	     var element = this.tags[tag];
	     if(element) this.element.removeChild(element);
	  };
	  
	  this.element = element;
	};

	var input = new TagsInput('.tags-input');
	
// photo upload
	
	var hoverCls = "file-hover";
	var $fileDrop = $('[data-droppable=""]');
	var $fileInput = $('[data-droppable-input=""]');
	var $fileImage = $('[data-droppable-image=""]');
	var files;
	var fileHover = function(ev) {
	  ev.stopPropagation();
	  ev.preventDefault();
	  if (ev.type === "dragover") {
	    $fileDrop.addClass(hoverCls);
	  } else {
	    $fileDrop.removeClass(hoverCls);
	  }
	};

	var fileSelect = function(ev) {
	  fileHover(ev);
	  files = ev.target.files || ev.dataTransfer.files;
	  var reader = new FileReader();

	  reader.onload = function(ev) {
	    $fileImage.css("background-image", "url(" + ev.target.result + ")");
	  };
	  reader.readAsDataURL(files[0]);
	};

	$fileDrop[0].ondragover = fileHover;
	$fileDrop[0].ondragleave = fileHover;
	$fileDrop[0].ondrop = fileSelect;
	$fileInput[0].onchange = fileSelect;
	
	
	/// uploadbutton
	
	$(document).ready(function () {
		var $button = $('button[type="submit"]');

		$button.on('click', function () {
			var $this = $(this);
			if ($this.hasClass('active') || $this.hasClass('success')) {
				return false;
			}
			$this.addClass('active');
			setTimeout(function () {
				$this.addClass('loader');
			}, 125);
			setTimeout(function () {
				$this.removeClass('loader active');
				$this.text('Success');
				console.log($fileImage);
				console.log(files[0]);
			    var fd = new FormData();
			    
			    fd.append("file", files[0]);
			    fd.append("usercolorvalue", selectedColor+"Color");
			    fd.append("usercocktailname", $('.tags-input').text());
			    var selected ="";
			    var se1 = $('.select1 option:selected').each(function() {
			    	selected += $(this).val()+",";
				});
			    var se2 = $('.select2 option:selected').each(function() {
			    	selected += $(this).val()+",";
				});
			    var se3 = $('.select3 option:selected').each(function() {
			    	selected += $(this).val()+",";
				});
			   
			    selected = selected.substr(0, selected.length -1);
			    console.log(selected);
			    fd.append("userIngredient", selected);
			    var xhr = new XMLHttpRequest();
			    xhr.onreadystatechange = function() {
			       if (this.readyState == 4 && this.status == 200) {
			          console.log(xhr.response);
			          $("#content").load("/cocktail/selfMaking");
			          //$('#myModal').modal('hide');
			       } else if(this.status == 500){
			       } else if(this.status == 403){
			       } else if(this.status == 404){
			       } 
			    };
			    xhr.open("POST", "/cocktail/usercocktailInsert");
			    xhr.send(fd);
			           
				$this.addClass('success animated pulse');
			}, 1600);
			setTimeout(function () {
				$this.text('Upload');
				$this.removeClass('success animated pulse');
				$this.blur();
			}, 2900);
		});
	});