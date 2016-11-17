other
drawProcessInstanceDistributionAndDonutChart
	| report text |

	report := self getProcessDefinitionClass reportProcessInstancesQuantityDistribution.
	report name: ('Process Instances by Application' translateFor: self session user). 

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.

	text := report name, (' | Total Process Instances: ' translateFor: self session user), report getTotalValue printString.

	canvas drawText: text at: 10@30 textSizePx: '18px'.
	canvas drawDonutQuantity: report rootDistribution at: 10@20 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,170)'.

	report svgContents: canvas contents.