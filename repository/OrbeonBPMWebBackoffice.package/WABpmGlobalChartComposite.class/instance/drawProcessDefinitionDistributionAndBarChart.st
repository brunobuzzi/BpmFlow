other
drawProcessDefinitionDistributionAndBarChart
	| report text |

	report := BpmProcessDefinition reportProcessDefinitionsQuantityDistribution.

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.

	text := ' Total Process Definitions: ', report getTotalValue printString.

	canvas drawText: text at: 10@30 textSizePx: '18px'.
	canvas drawVerticalBarGraph: report rootDistribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,330)'.

	report svgContents: canvas contents.