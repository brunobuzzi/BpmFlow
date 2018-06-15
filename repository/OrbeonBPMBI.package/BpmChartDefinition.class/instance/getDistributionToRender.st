html render
getDistributionToRender

	dateGroupName ifNil: [^self rootDistribution].
	dateGroupName isEmpty ifTrue: [^self rootDistribution].
	(dateGroupName = 'Day') ifTrue: [^self rootDistribution].

	(dateGroupName = 'Year') ifTrue: [^self getYearDistribution].

	(dateGroupName = 'Month') ifTrue: [^self getMonthDistribution].

	(dateGroupName = 'Week') ifTrue: [^self getWeekDistribution].

	^Dictionary new