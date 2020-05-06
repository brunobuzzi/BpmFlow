other
updateRoot: anHtmlRoot

    super updateRoot: anHtmlRoot.

    SEWAFCssLibrary default updateRoot: anHtmlRoot.

	anHtmlRoot stylesheet url: (SEWAFCssLibrary / layout getBpmCssFileName).
"
'http://192.168.29.142:8787/files/SEWAFCssLibrary/main.css'
"
	anHtmlRoot javascript contents: SEWAFJavaScriptLibrary default jsExpandCollapseFunctions.