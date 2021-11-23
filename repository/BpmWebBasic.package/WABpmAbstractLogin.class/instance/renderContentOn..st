other
renderContentOn: html

	super renderContentOn: html.

	self session systemRoot: (Globals at: #SystemRoot)