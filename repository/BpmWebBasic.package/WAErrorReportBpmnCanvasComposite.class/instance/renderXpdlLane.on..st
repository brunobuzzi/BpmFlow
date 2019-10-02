render xpdl
renderXpdlLane: aXPDLLaneNode on: html

	super renderXpdlLane: aXPDLLaneNode on: html.

	self renderImportErrorOn: html for: aXPDLLaneNode