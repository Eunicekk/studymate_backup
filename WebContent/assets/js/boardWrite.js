/**
 * 
 */

// 취소 버튼 처리
$('.writeButton-cancel').on('click', () => {
	window.location.href = '/board/boardListOk.bo';
});
  
// 파일 업로드



/*$('#summernote-boardWrite').summernote({
    callbacks: {
        onImageUpload: function(files) {
            uploadFile(files[0]);
        }
    }
});

function uploadFile(file) {
    var formData = new FormData();
    formData.append('file', file);
    $.ajax({
        url: '/upload',
        type: 'POST',
        data: formData,
        contentType: false,
        processData: false,
        success: function(data) {
            // 서버에서 반환된 파일 경로를 이용하여 Summernote 에디터에 이미지 삽입
            $('#summernote-boardWrite').summernote('insertImage', data.file_path);
        }
    });
}
*/