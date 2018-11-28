file out
generateProcessDefinitionOutput
	| stream converter |

	stream := PrintStream on: String new.
	converter := BizagiSvgConverter convert: fileOutObject xmlString.

	withXmlHeader ifTrue: [stream nextPutAll: self xmlHeader, String lf].
	
	stream nextPutAll: (converter generateSVGFor: fileOutObject).

	isDownload ifTrue: [^self downloadSvg: stream]. "to download as regular file"

	^stream contents "to show in a javascript popup"