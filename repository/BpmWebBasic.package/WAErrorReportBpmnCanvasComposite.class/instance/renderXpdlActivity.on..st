render xpdl
renderXpdlActivity: aXPDLActivityNode on: html

	super renderXpdlActivity: aXPDLActivityNode on: html.

	self renderImportErrorOn: html for: aXPDLActivityNode