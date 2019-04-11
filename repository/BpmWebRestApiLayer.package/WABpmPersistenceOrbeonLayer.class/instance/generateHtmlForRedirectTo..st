html redirect
generateHtmlForRedirectTo: url

	^'<!DOCTYPE HTML>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="1; url=', url,'">
 <script>
  top.location.href = "', url,'"
</script>
 <title>Page Redirection</title>
 If you are not redirected automatically, follow the <a href=''', url,'''>link to example</a>'