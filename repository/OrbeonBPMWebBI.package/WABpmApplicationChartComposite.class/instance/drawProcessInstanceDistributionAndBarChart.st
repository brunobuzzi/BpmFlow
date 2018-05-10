other
drawProcessInstanceDistributionAndBarChart
	| text |

	report := BpmProcessDefinition reportProcessInstancesQuantityDistributionFor: self getApplicationName.
	report name: ('Process Instances per Process Definition' translateFor: self session user);
		creator: self session user.

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.

	text := report name, (' | Total Process Instances: ' translateFor: self session user), report getTotalValue printString.

	canvas drawText: text at: 10@30 textSizePx: '18px'.
	canvas drawVerticalBarGraph: report rootDistribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,330)'.

	report svgContents: canvas contents.