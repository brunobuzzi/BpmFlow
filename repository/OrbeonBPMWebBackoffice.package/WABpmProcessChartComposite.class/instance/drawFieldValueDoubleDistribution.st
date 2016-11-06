draw svg
drawFieldValueDoubleDistribution
	| report definition text |

	definition := self getSelectedProcessDefinitions last.
	report := definition reportValueDistributionForFieldName: self getFieldName secondaryField: self getFieldName2 in: self getFormName satisfying: self queryBlock.

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.

	text := (' Total Process Instances: ' translateFor: self session user) , report getTotalValue printString.

	canvas drawText: text at: 10@30 textSizePx: '18px'.

	self isDoubleBarChart ifTrue: [canvas drawJoin: report getFirstSubDistribution
					verticalBarGraph: report rootDistribution 
					at: 15@15 
					maxHeight: 150 
					width: 30
					transform: 'translate(50,300) scale(1.5, 1.5)'].

	self isDoubleDonutChart ifTrue: [canvas drawDoubleDonutQuantity: report rootDistribution 
					subQuantities: report getFirstSubDistribution
					at: 10@10 
					radius: 100 
					subRadiusRatio: 1.4 
					backcolor: 'lightgray' 
					transform:  'translate(200,200)']. 

	report svgContents: canvas contents.