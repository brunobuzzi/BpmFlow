other
drawProcessInstanceDistributionAndDonutChart
	| report text |

	report := BpmProcessDefinition reportProcessInstancesQuantityDistribution.

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.

	text := ' Total Process Instances: ', report getTotalValue printString.

	canvas drawText: text at: 10@30 textSizePx: '18px'.
	canvas drawDonutQuantity: report rootDistribution at: 10@20 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,170)'.

	report svgContents: canvas contents.