other
viewProcessAsSVG
	| svgOutput svgStream |

	svgStream := PrintStream on: String new.

	svgStream nextPutAll: '<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head></head><body style="background: RGB(190,190,190);">'.

	selectedProcess getProcessesTreeAsCollection do: [:each | 	
		svgOutput := BpmProcessSvgFileOut newFor: self object: each user: self session user.
		svgOutput isDownload: false;
			withXmlHeader: false. 
		svgStream nextPutAll: svgOutput generateOutput.
	].

	svgStream nextPutAll: '</body></html>'.
	^svgStream contents