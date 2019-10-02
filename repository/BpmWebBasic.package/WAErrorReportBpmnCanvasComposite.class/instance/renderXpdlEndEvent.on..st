render xpdl
renderXpdlEndEvent: aXPDLEndNode on: html

	super renderXpdlEndEvent: aXPDLEndNode on: html.

	self renderImportErrorOn: html for: aXPDLEndNode