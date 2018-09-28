<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="./resources/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="./resources/assets/css/styles.css">
    <link rel="stylesheet" href="./resources/assets/css/styles.min.css">
     <style type="text/css">
@import url("//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css");

body{background: rgb(225,225,225);}

.dragAndUploadHolder{
  height: 140px;
  position: relative;
  width: 200px;
}

.dragAndUpload {
    background: rgb(255,255,255);
    box-shadow: rgba(0,0,0,.1) 3px 3px 3px;
    color: rgba(0,0,0,.55);
    display: block;
    height: 115px;
    line-height: 132px;
    position: relative;
    text-align: center;
    -moz-transition: all .2s;
    -ms-transition: all .2s;
    -webkit-transition: all .2s;
    transition: all;
    width: 100%;
}

.dragAndUpload .fa {
    display: block;
    font-size: 65px;
    left: 50%;
    margin-left: -70px;
    margin-top: -32px;
    position: absolute;
    top: 50%;
}

.dragAndUpload .fa-spin,
.dragAndUpload .fa-check,
.dragAndUpload .fa-frown-o,
.dragAndUploadUploading .fa-arrow-up,
.dragAndUploadUploading .fa-frown-o,
.dragAndUploadSuccess .fa-arrow-up,
.dragAndUploadSuccess .fa-frown-o,
.dragAndUploadFailure .fa-arrow-up {
    display: none;
}

.dragAndUploadUploading .fa-spin,
.dragAndUploadUploading .gpCounter,
.dragAndUploadSuccess .fa-check,
.dragAndUploadFailure .fa-frown-o {
    display: block;
}

.dragAndUpload .fa-arrow-up,
.dragAndUpload .fa-spin,
.dragAndUpload .fa-check,
.dragAndUpload .fa-frown-o {
    margin-left: 18px;
}

.dragAndUploadActive, .dragAndUploadUploading {
    background: rgb(135,60,255);
    border-color: rgb(135,60,255);
    color: rgb(255,255,255);
}

.dragAndUploadActive .fa.fa-arrow-up {
    animation: upDown .7s infinite linear;
    -moz-animation: upDown .7s infinite linear;
    -ms-animation: upDown .7s infinite linear;
    -webkit-animation: upDown .7s infinite linear;
}

.dragAndUploadFailure {
    background: rgba(255,25,30,.5);
    transition: all .2s;
    -moz-transition: all .2s;
    -ms-transition: all .2s;
    -webkit-transition: all .2s;
    -moz-animation: errorShake .45s;
    -ms-animation: errorShake .45s;
    -webkit-animation: errorShake .45s;
}

.dragAndUploadSuccess {
    background: rgb(135,255,160);
    transition: all .2s;
    -moz-transition: all .2s;
    -ms-transition: all .2s;
    -webkit-transition: all .2s;
    animation: okShakeGreen .75s;
    -moz-animation: okShakeGreen .75s;
    -ms-animation: okShakeGreen .75s;
    -webkit-animation: okShakeGreen .75s;
}

#dragAndUploadStatus {
    color: rgba(0,0,0,.6);
    bottom: 0;
    font: Bold 14px "Helvetica Neue", Helvetica, Arial, sans-serif;
    left: 0;
    position: absolute;
    text-align: center;
    text-transform: uppercase;
    width: 100%;
}

/* ANIMATIONS */
@keyframes upDown {
    50% {
        top: +30px;
    }
}

@-moz-keyframes upDown {
    50% {
        top: +30px;
    }
}

@-ms-keyframes upDown {
    50% {
        top: +30px;
    }
}


@-webkit-keyframes upDown {
    50% {
        top: +30px;
    }
}



@-moz-keyframes okShakeGreen {
    0% {
        background: rgba(245,45,0,.5);
        top: 0px;
    }

    25% {
        background: rgba(255,255,255,1);
        top: -15px;
    }

    50% {
        top: 9px;
    }

    75% {
        top: -6px;
    }

    100% {
        background: rgba(135,255,160,1);
        top: 0px;
    }
}

@-ms-keyframes okShakeGreen {
    0% {
        background: rgba(245,45,0,.5);
        top: 0px;
    }

    25% {
        background: rgba(255,255,255,1);
        top: -15px;
    }

    50% {
        top: 9px;
    }

    75% {
        top: -6px;
    }

    100% {
        background: rgba(135,255,160,1);
        top: 0px;
    }
}

@-webkit-keyframes okShakeGreen {
    0% {
        background: rgba(60,135,255,1);
        top: 0px;
    }

    25% {
        top: -15px;
    }

    50% {
        top: 9px;
    }

    75% {
        top: -6px;
    }

    100% {
        background: rgba(135,255,160,1);
        top: 0px;
    }
}

@-webkit-keyframes errorShake {
    0% {
        left: 0px;
    }

    25% {
        left: -15px;
    }

    50% {
        left: 9px;
    }

    75% {
        left: -6px;
    }

    100% {
        left: 0;
    }
}

@-moz-keyframes okShake {
    0% {
        top: 0px;
    }

    25% {
        top: -15px;
    }

    50% {
        top: 9px;
    }

    75% {
        top: -6px;
    }

    100% {
        top: 0px;
    }
}

@-ms-keyframes okShake {
    0% {
        top: 0px;
    }

    25% {
        top: -15px;
    }

    50% {
        top: 9px;
    }

    75% {
        top: -6px;
    }

    100% {
        top: 0px;
    }
}

@-webkit-keyframes okShake {
    0% {
        background: rgba(245,45,0,.5);
        top: 0px;
    }

    25% {
        background: rgba(135,255,160,1);
        top: -15px;
    }

    50% {
        top: 9px;
    }

    75% {
        top: -6px;
    }

    100% {
        background: rgba(255,255,255,1);
        top: 0px;
    }
}
</style>
</head>

<body>
    <div>
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
            <div class="container"><a class="navbar-brand" href="#">Company Name</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                    id="navcol-1">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="#">First Item</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#">Second Item</a></li>
                        <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Dropdown </a>
                            <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">First Item</a><a class="dropdown-item" role="presentation" href="#">Second Item</a><a class="dropdown-item" role="presentation" href="#">Third Item</a></div>
                        </li>
                    </ul><span class="navbar-text actions"> <a href="#" class="login">Log In</a><a class="btn btn-light action-button" role="button" href="#">Sign Up</a></span></div>

            </div>

        </nav>
    </div>
    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <form name="uploadForm" id="uploadForm" enctype="multipart/form-data" method="post">
                            <div class="dragAndUploadHolder">
                                 <div id="dragFile" class="dragAndUpload dragAndUp loadUploading">
                                    <span class="fa fa-file"></span>
                                    <span class="fa fa-spin fa-cog"></span>
                                    <span class="fa fa-arrow-up"></span>
                                    <span class="fa fa-check"></span>
                                    <span class="fa fa-frown-o"></span>
                                 </div>
                                 <div id="dragAndUploadStatus">
                                     Drag and drop file.
                                 </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div>
                    <c:forEach var="url" items="${urls}">
						<img src="${url}" height="100" width="100">
					</c:forEach>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
    <div class="modal fade" role="dialog" tabindex="-1" id="getCocktailModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Modal Title</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <p>The content of your modal.</p>
                    <div><img id="modalImgId"></div>
                    <div><textarea id="modalTextArea"></textarea></div>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" data-dismiss="modal" onclick="saveBtn()">Save</button></div>
            </div>
        </div>
    </div>
    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#getCocktailModal">Button</button>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
    var cocktailList;
; ( function ( $ ) {
    var settings = {
        url: '/cocktail/vision',
        toDo: 'OPTIONAL TODO VARIABLE TO SEND TO UPLOAD FILE',
        hoverClass: 'dragAndUploadActive',
        uploadingClass: 'dragAndUploadUploading',
        errorClass: 'dragAndUploadFailure',
        successClass: 'dragAndUploadSuccess',
        statusField: '#dragAndUploadStatus',
        classChangeDelay: 750,
        maxSize: 5242880
    };

    function message( item, newClass, text, removeClass ) {
        $( settings.statusField ).html( text );
        $( item ).removeClass( settings.hoverClass + ' ' + settings.uploadingClass ).addClass( newClass ).delay( settings.classChangeDelay ).promise().done(
            function () {
                if ( removeClass === 1 ) {
                    $( this ).removeClass( newClass );
                }
            }
        );
    }

    function uploadFile( file, item ) {
        if ( file.size <= settings.maxSize ) {
            var fd = new FormData();
            fd.append("file", file);
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
              if (this.readyState == 4 && this.status == 200) {
                    succFunction(this, item,xhr.response);
                    console.log(xhr.response);
              } else if(this.status == 500){
                failFunction(this,item,xhr.response); 
              } else if(this.status == 403){
                failFunction(this,item,xhr.response); 
              } else if(this.status == 404){
                failFunction(this,item,xhr.response); 
              } 
            };
            xhr.open("POST", "/cocktail/vision");
            xhr.send(fd);
           
        } else {
            message( item, settings.errorClass, 'File is too large.', 0 );
        }
    }
    function succFunction(xhttp, item, resp) {
    var arr = JSON.parse(resp);
    cocktailList = arr;
    message( item, settings.successClass, 'File successfully uploaded.', 0 );
    $('#modalImgId').attr("src",arr[0].imageRink);
    $('#getCocktailModal').modal('show');
  }
    function failFunction(xhttp, item, resp) {
    message( item, settings.errorClass, 'Upload failed.', 0 );
  }

    function findFiles( e, item ) {
      console.log(e);
      console.log(item);
        var files = e.originalEvent.dataTransfer.files;
        console.log(files);
        $( item ).addClass( settings.uploadingClass );
        $.each( files,
            function ( key, value ) {
          console.log(key);
          console.log(value);
                uploadFile( value, item );
            }
        );
    }

    function setEvents( item ) {
        $( item ).on( 'drop dragover dragenter dragleave',
            function ( e ) {
                $( this ).removeClass( settings.errorClass + ' ' + settings.successClass );
                e.stopPropagation();
                e.preventDefault();
                if ( e.type !== 'dragover' ) {
                    $( this ).toggleClass( settings.hoverClass );
                }
                if ( e.type === 'drop' ) {
                    findFiles( e, item );
                    console.log(e);
                    console.log(item);
                }
            }
        );
    }

    function setOptions( options ) {
        $.each( options, function ( key, val ) {
            settings[key] = val;
        } );
    }

    $.fn.dragAndUpload = function ( options ) {
        if ( options !== undefined ) setOptions( options );
        this.each( function () {
            setEvents( this );
        } );
        return this;
    }
}( jQuery ) );

$( document ).ready(
  function () {
    // Uses default settings
    $("#dragFile").dragAndUpload();
  }
);

function saveBtn() {
	var imgSource = $('#modalImgId').attr("src");
	var textAreaSource = $('#modalTextArea').val();
	console.log(imgSource);
	console.log(textAreaSource);
	alert(' 버튼 클릭 ');	
	$.ajax({
		method:'post',
		url:'writeBoard',
		data:{
			contents:textAreaSource,
			cocktailName: cocktailList[0].cocktailname,
		},
		dataType: 'text',
		success: function(resp) {
			alert("success");
		},
		error: function() {
			alert('err');
		}
	})
}
</script>
</body>

</html>