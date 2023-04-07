/**
 * 
 */

let $fileInput = $('#file');
let $fileList = $('.file-list');
let $cnt = $('.count');

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
		/*이미지 주소 가져오기*/
		let src = URL.createObjectURL(files[i]);
		/*append 도 html 메소드 처럼 html 코드를 넣을수있는데 축척해서 코드가 쌓이는 식으로 된다*/
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

	//for문이 끝나야 img-cancel-btn 가 생성되기때문에 잘 생각하고 작성
	$('.img-cancel-btn').on('click', function() {
		console.log("클릭!!!!");

		//버튼의 부모의 부모를 삭제(화면상에서만 삭제)
		$(this).parent().parent().remove();

		/*		console.log($fileInput);
				console.log($fileInput.files);
		*/
		
		//button 태그 안에 우리가 data-name을 설정해 줬기 때문에 test1.jpg를 넣어놨던거를 가져왔다
		//화면상에는 삭제가 되도 서버에는 아직 남아있기 때문에 삭제 작업을 해줘야한다.
		let fileName = $(this).data('name');
		let dt = new DataTransfer();
		
		for(let i=0; i< files.length; i++){
			if(files[i].name !== fileName){
				dt.items.add(files[i]);		
			}
		}
		//초기화 하는 느낌
		files = dt.files;
		console.log(files);
		//카운터도 길이로 변화를 준다.
		$cnt.text(files.length);
		
	});

});





