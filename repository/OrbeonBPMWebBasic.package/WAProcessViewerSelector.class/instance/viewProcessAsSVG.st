other
viewProcessAsSVG
	| svgOutput |

	svgOutput := BpmProcessSvgFileOut newFor: self object: selectedProcess user: self session user.

	svgOutput isDownload: false.

	^svgOutput generateOutput