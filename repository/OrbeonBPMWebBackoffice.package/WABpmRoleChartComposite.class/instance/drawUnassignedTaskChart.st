other
drawUnassignedTaskChart
	| report text |

	report := self getFrontOfficeRoleClass reportNumberOfUnassignedTasksFor: self getApplicationName.
	report name: ('Free Tasks per Role' translateFor: self session user).

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.

	text := report name, (' | Unassigned Tasks: ' translateFor: self session user) , report getTotalValue printString.

	canvas drawText: text at: 10@30 textSizePx: '18px'.

	self isBarChart ifTrue: [canvas drawVerticalBarGraph: report rootDistribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,330)'].
	self isDonutChart ifTrue: [canvas drawDonutQuantity: report rootDistribution at: 10@20 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,170)'.]. 

	report svgContents: canvas contents.