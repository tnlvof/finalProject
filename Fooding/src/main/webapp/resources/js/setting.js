//뒤로가기
$(document).ready(function() {
	$('#go-back').click(function() {
		parent.history.back();
		return false;
	});
});

//프로필사진 변경
$(document).ready(function(){
   var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            // 파일명 추출
            var filename = $(this)[0].files[0].name;
        } 

        else {
            // Old IE 파일명 추출
            var filename = $(this).val().split('/').pop().split('\\').pop();
        };

        $(this).siblings('.upload-name').val(filename);
    });

    //preview image 
    var imgTarget = $('.preview-image .upload-hidden');

    imgTarget.on('change', function(){
        var parent = $(this).parent();
        parent.children('.upload-display').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            reader.readAsDataURL($(this)[0].files[0]);
        }

        else {
            $(this)[0].select();
            $(this)[0].blur();
            var imgSrc = document.selection.createRange().text;
            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
    });
});


//이름 변경 modal
function changeName(){
	document.getElementById('change-name').style.display = 'block';
}
//이메일 변경 modal
function changeEmail(){
	document.getElementById('change-email').style.display = 'block';
}
//비밀번호 변경 modal
function changePwd(){
	document.getElementById('change-pwd').style.display = 'block';
}
//1:1문의 modal
function ask(){
	document.getElementById('ask').style.display = 'block';
}
//회원 탈퇴 modal
function leave(){
	document.getElementById('leave').style.display = 'block';
}
//modal창 닫기
function closeModal(){
	document.getElementById('change-name').style.display='none';
	document.getElementById('change-email').style.display='none';
	document.getElementById('change-pwd').style.display='none';
	document.getElementById('ask').style.display='none';
	document.getElementById('leave').style.display='none';
}