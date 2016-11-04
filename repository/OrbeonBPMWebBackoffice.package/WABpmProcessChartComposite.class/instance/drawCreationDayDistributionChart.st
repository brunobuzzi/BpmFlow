other
drawCreationDayDistributionChart
	| report text version |

	version := self isAllVersionSelected ifTrue: [nil] ifFalse: [Number fromString: self getVersion].
 
	report := BpmProcessDefinition reportCreationDayFor: self getProcessName in: self  getApplicationName version: version from: self getStartDate to: self getEndDate satisfying: self queryBlock.

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'Nothing'.

	canvas drawText: text at: 20@20 textSizePx: '18px'.

	canvas 
		drawWorkingDays: report rootDistribution
		at: 60@80 
		from: self getStartDate
		to: self getEndDate 
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent' ifAbsent: [true]).

	report svgContents: canvas contents.