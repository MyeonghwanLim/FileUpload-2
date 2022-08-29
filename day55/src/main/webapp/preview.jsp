<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 미리보기</title>
</head>
<body>

<input type="file" onchange="loadFile(this)">
<!--  this 는 인풋전체를 사용하기 때문에 -->
<hr>
<img alt="미리보기" id="preview" />
<!--  이미지경로가 아닌 js로 불러올꺼라고 id를 설정 해준다. -->

<script type="text/javascript">
	function loadFile(input){
		// 여러개의 이미지를 읽을수도 있기 때문에 
		if(input.files && input.files[0]){
			var fr = new FileReader();
			//파일리더로 일고 읽는게 완료되면  만들어준 아이디에 속성값을 지정하여 사용하겠다.
			fr.onload=function(event){
				document.getElementById('preview').src=event.target.result;
			};
			fr.readAsDataURL(input.files[0]);
			// 이미지파일을 읽어 온다.
		}
		else{
			document.getElementById('preview').src="";
		}
	}
</script>
</body>
</html>