
var $fileInput = $('#file');
var $fileList = $('.file-list');
var $cnt = $('.count');

console.log($fileInput);

$fileInput.on('change', function() {
	/*files의 프로퍼티 가져오기*/
	let files = this.files;
	console.log(files);

	/*파일을 변경 하면 원래 선택된 파일은 미리보기를 제거한다.*/
	$fileList.html('');

	//5개를 넘기면 초기화 처리 
	if (files.length > 5) {
		//files 프로퍼티를 가져온다 초기화 한다고 생각하면 된다.
		let dt = new DataTransfer();
		files = dt.files;
		console.log(files);
		alert("파일은 최대 5개 까지만 첨부 가능합니다.");
		$cnt.text(files.length);
		return;

	}

	for (let i = 0; i < files.length; i++) {
		let src = URL.createObjectURL(files[i]);
		$fileList.append(`
			<li>
				<div class="show-img-box">
					<img src = ${src}>
				</div>			
				<div class = "btn-box">
					<button type = 'button' class='img-cancel-btn' data-name = '${files[i].name}'>삭제</button>
				</div>
			</li>		
		`);
	}

	$cnt.text(files.length);

	$('.img-cancel-btn').on('click', function() {
		console.log("클릭!!!!");

		$(this).parent().parent().remove();

				console.log($fileInput.files);
		
		let fileName = $(this).data('name');
		let dt = new DataTransfer();
		
		for(let i=0; i< files.length; i++){
			if(files[i].name !== fileName){
				dt.items.add(files[i]);		
			}
		}
		files = dt.files;
		console.log(files);
		$cnt.text(files.length);
		
	});

});






