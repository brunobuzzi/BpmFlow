other
viewProcessAsSVG
	| svgOutput svgStream |

	svgStream := PrintStream on: String new.

	svgStream nextPutAll: '<svgs>'.

	selectedProcess getProcessesTreeAsCollection do: [:each | 	
		svgOutput := BpmProcessSvgFileOut newFor: self object: each user: self session user.
		svgOutput isDownload: false;
			withXmlHeader: false. 
		svgStream nextPutAll: svgOutput generateOutput.
	].

	svgStream nextPutAll: '</svgs>'.
	^svgStream contents