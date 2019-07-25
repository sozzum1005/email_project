<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일발송</title>
<script src="https://cdn.ckeditor.com/4.8.0/full-all/ckeditor.js"></script>
</head>
<body>
	<form method="POST" action="./doSend">
		<div>
			<input type="email" name="email" placeholder="이메일"
				required="required" autofocus="autofocus">
		</div>

		<div>
			<input type="text" name="title" placeholder="제목" required="required">
		</div>

		<div>
			<textarea id="editor-body" name="body" placeholder="내용" required="required"></textarea>
		</div>

		<div>
			<input type="submit" value="전송">
		</div>

	</form>

	<script>
		CKEDITOR.replace('editor-body', {
			skin : 'moono',
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			toolbar : [
					{
						name : 'basicstyles',
						groups : [ 'basicstyles' ],
						items : [ 'Bold', 'Italic', 'Underline', "-",
								'TextColor', 'BGColor' ]
					},
					{
						name : 'styles',
						items : [ 'Format', 'Font', 'FontSize' ]
					},
					{
						name : 'scripts',
						items : [ 'Subscript', 'Superscript' ]
					},
					{
						name : 'justify',
						groups : [ 'blocks', 'align' ],
						items : [ 'JustifyLeft', 'JustifyCenter',
								'JustifyRight', 'JustifyBlock' ]
					},
					{
						name : 'paragraph',
						groups : [ 'list', 'indent' ],
						items : [ 'NumberedList', 'BulletedList', '-',
								'Outdent', 'Indent' ]
					}, {
						name : 'links',
						items : [ 'Link', 'Unlink' ]
					}, {
						name : 'insert',
						items : [ 'Image' ]
					}, {
						name : 'spell',
						items : [ 'jQuerySpellChecker' ]
					}, {
						name : 'table',
						items : [ 'Table' ]
					} ],
		});
	</script>
</body>
</html>