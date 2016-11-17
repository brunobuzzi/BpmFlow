draw svg
drawCreationDayDistributionChart
	| report text version |

	version := self isAllVersionSelected ifTrue: [nil] ifFalse: [Number fromString: self getVersion].
	self analyzeQueryBlockIfFail: [:analyzer | ^self queryBlockFailedWith: analyzer].

	report := self getProcessDefinitionClass reportCreationDayFor: self getProcessName in: self  getApplicationName version: version from: self getStartDate to: self getEndDate satisfying: self queryBlock.
	report name: ('Creation of Processes in Calendar' translateFor: self session user). 

	canvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := report name, (' | Total Process Instances: ' translateFor: self session user) , report getTotalValue printString.

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