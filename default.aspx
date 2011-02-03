<html>
<head>
<script type="text/javascript">
	function doKey(key) {
		var theText = document.getElementById("theText")

		if (key=='@') {
			if (theText.innerHTML.length>0) {
				theText.innerHTML = theText.innerHTML.substring(0,theText.innerHTML.length-1);
			}
		} else {
			theText.innerHTML += key.toUpperCase();
		}
	}
</script>
</head>
<body>
<img src="fringeglyphs.png" usemap="#fringe_glyphs" border="0" style="left:0px; top:0px; position:absolute;z-index:1" />
<div id="theText" type="textbox" style="left:15px; top:14px; width:469px; height:42px; background-color: azure; position:absolute;z-index:2;font-size:32px;"></div>
<%
Dim Glyphs As String ="abcdefghijklmnoprstu@vwy@"
%>
<map name="fringe_glyphs">
<%
Dim x1, y1, x2, y2 As Integer
Dim key As String
For y As Integer = 0 To 4
	For x As Integer = 0 To 4
		x1 = 12 + x * 96
		x2 = x1 + 96
		y1 = 62 + y * 74
		y2 = y1 + 74
		key = Glyphs.Substring(x+y*5,1)
%>
	<area shape="rect" coords="<%=x1%>,<%=y1%>,<%=x2%>,<%=y2%>" href="javascript://" onclick="doKey('<%=key%>');"></area>
<%
	Next
Next
%>
</map>

</body>
</html>