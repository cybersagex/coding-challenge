$(document).ready(function(){
	//code here....
	var code = $(".codemirror-textarea")[0];
	//adding codemirror to textarea
	var editor = CodeMirror.fromTextArea(code,{
		lineNumbers : true,
		theme :  "rubyblue",
		mode : "python",
        autoCloseBrackets : true
	});
});