other
renderContentOn: html
	| widthClass |

	seasideK := self requestContext request at: '_k' ifAbsent: ['error'].

	self hasIFrame ifFalse: [^super renderContentOn: html].

	html div id: 'top-search-area'; with: [self renderSearchAreaOn: html.].

	showLateralList ifTrue: [
		html div id: 'lateral-assignment-list'; with: [self renderLateralListOn: html]].

	widthClass := showLateralList ifFalse: ['process-assignment-width100'] ifTrue: ['process-assignment-width80'].
	
	html div id: 'process-assignment'; class: widthClass;
		with: [self renderEmbeddedProcessAssignmentOn: html.
				self renderContentWithFrameOn: html].