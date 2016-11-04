other
drawProcessInstanceDistributionAndBarChart
	| report text |

	report := BpmProcessDefinition reportProcessInstancesQuantityDistributionFor: self getProcessName in: self getApplicationName.

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.

	text := (' Total Process Instances: ' translateFor: self session user) , report getTotalValue printString.

	canvas drawText: text at: 10@30 textSizePx: '18px'.
	canvas drawVerticalBarGraph: report rootDistribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,330)'.

	report svgContents: canvas contents.