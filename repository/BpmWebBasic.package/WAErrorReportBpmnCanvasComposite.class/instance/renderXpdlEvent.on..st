render xpdl
renderXpdlEvent: aXPDLEventNode on: html

	super renderXpdlEvent: aXPDLEventNode on: html.

	self renderImportErrorOn: html for: aXPDLEventNode