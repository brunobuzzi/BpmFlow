properties
initializeProperties

	"SewafSelectTableReport"
	self atProperty: 'selectTable.selectedColor' put: 'white'.
	self atProperty: 'selectTable.nonSelectedColor' put: 'gainsboro'.

	"SewafBooleanTable"
	self atProperty: 'booleanTable.backcolor' put: 'gainsboro'.

	"SewafTableReport"
	self atProperty: 'tableReport.backcolor' put: 'gainsboro'.

	"Bizagi task color"
	self atProperty: 'task.borderColor.done' put: '-6998220'.
	self atProperty: 'task.fillColor.done' put: '-6998220'.
	self atProperty: 'task.borderColor.pending' put: '-16384'.
	self atProperty: 'task.fillColor.pending' put: '-5279744'.
	"Bizagi sub process task color"
	self atProperty: 'subprocess.borderColor.done' put: '-6998220'.
	self atProperty: 'subprocess.fillColor.done' put: '-6998220'.
	"Bizagi gateway color"
	self atProperty: 'gateway.borderColor.done' put: '-7136256'.
	self atProperty: 'gateway.borderColor.pending' put: '-7136256'.
	"Bizagi transition color"
	self atProperty: 'transition.borderColor.done' put: '-7136256'.
	self atProperty: 'transition.borderColor.pending' put: '-7136256'.