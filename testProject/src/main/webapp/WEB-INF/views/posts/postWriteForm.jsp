<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Text Input Effects | Set 2</title>
<meta name="description"
	content="Simple ideas for enhancing text input interactions" />
<meta name="keywords"
	content="input, text, effect, focus, transition, interaction, inspiration, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="resources/css/posts/writeForm/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="resources/fonts/posts/writeForm/font-awesome-4.2.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/posts/writeForm/demo.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/posts/writeForm/set2.css" />
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
</head>

<body>
	<section class="content">
		<span class="input input--yoshiko"> <input
			class="input__field input__field--yoshiko" type="text" id="postTitle" />
			<label class="input__label input__label--yoshiko" for="postTitle">
				<span class="input__label-content input__label-content--yoshiko"
				data-content="Bird's Color">Bird's Color</span>
		</label>
		</span> <br> <span class="input input--yoshiko"> <textarea
				class="input__field input__field--yoshiko" id="postContent"></textarea>
			<label class="input__label input__label--yoshiko" for="postContent">
				<span class="input__label-content input__label-content--yoshiko"
				data-content="Beak Length">Beak Length</span>
		</label>
		</span> <br>
		<button class="button">버튼</button>
	</section>
	<script src="resources/js/posts/writeForm/classie.js"></script>
	<script>
		(function() {
			// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
			if (!String.prototype.trim) {
				(function() {
					// Make sure we trim BOM and NBSP
					var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
					String.prototype.trim = function() {
						return this.replace(rtrim, '');
					};
				})();
			}

			[].slice
					.call(
							document
									.querySelectorAll('input.input__field, textarea.input__field'))
					.forEach(function(inputEl) {
						// in case the input is already filled..
						if (inputEl.value.trim() !== '') {
							classie.add(inputEl.parentNode, 'input--filled');
						}

						// events:
						inputEl.addEventListener('focus', onInputFocus);
						inputEl.addEventListener('blur', onInputBlur);
					});

			function onInputFocus(ev) {
				classie.add(ev.target.parentNode, 'input--filled');
			}

			function onInputBlur(ev) {
				if (ev.target.value.trim() === '') {
					classie.remove(ev.target.parentNode, 'input--filled');
				}
			}
		})();
	</script>
</body>

</html>