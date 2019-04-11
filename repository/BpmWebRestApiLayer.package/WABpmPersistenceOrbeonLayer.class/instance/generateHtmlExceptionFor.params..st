html generation
generateHtmlExceptionFor: anException params: anArray

	^'<!DOCTYPE html>
<html>
<body>

<h1>Exception</h1>
<h2>Application: ', anArray fourth,'</h2>
<h2>Form Name: ', anArray fifth,'</h2>
<h2>Form ID: ', anArray first,'</h2>
<h2>Language: ', anArray second,'</h2>
<h2>Valid: ', anArray third,'</h2>

<p>', anException description,'</p>
<p>', (GsProcess stackReportToLevel: 20),'</p>

</body>
</html>'