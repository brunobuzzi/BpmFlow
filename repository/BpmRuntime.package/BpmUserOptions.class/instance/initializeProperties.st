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
	self atProperty: 'bizagi.task.borderColor.done' put: '-7780796'.
	self atProperty: 'bizagi.task.fillColor.done' put: '-2517356'.
	self atProperty: 'bizagi.task.borderColor.pending' put: '-13684945'.
	self atProperty: 'bizagi.task.fillColor.pending' put: '-8421505'.
	"Bizagi sub process task color"
	self atProperty: 'bizagi.subprocess.borderColor.done' put: '-7780796'.
	self atProperty: 'bizagi.subprocess.fillColor.done' put: '-2517356'.
	"Bizagi gateway color"
	self atProperty: 'bizagi.gateway.borderColor.done' put: '-7780796'.
	self atProperty: 'bizagi.gateway.fillColor.done' put: '-2517356'.
	"Bizagi transition color"
	self atProperty: 'bizagi.transition.borderColor.done' put: '-7136256'.
	self atProperty: 'bizagi.transition.borderColor.pending' put: '-7136256'.

	"SVG color initialization"
	self atProperty: 'svg.task.fillColor.done' put: 'lightgreen'.
	self atProperty: 'svg.task.fillColor.running' put: 'lightblue'.
	self atProperty: 'svg.task.fillColor.pending' put: 'lightgray'.
	self atProperty: 'svg.task.borderColor.done' put: 'darkgreen'.
	self atProperty: 'svg.task.borderColor.running' put: 'darkblue'.
	self atProperty: 'svg.task.borderColor.pending' put: 'darkgray'.
	self atProperty: 'svg.transition.borderColor.done' put: 'darkgreen'.
	self atProperty: 'svg.transition.borderColor.pending' put: 'red'.