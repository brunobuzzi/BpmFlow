html render
getDistributionToRender

	dateGroupName ifNil: [^report rootDistribution].
	dateGroupName isEmpty ifTrue: [^report rootDistribution].

	(dateGroupName = 'Year') ifTrue: [^report getYearDistribution].

	(dateGroupName = 'Month') ifTrue: [^report getMonthDistribution].

	(dateGroupName = 'Week') ifTrue: [^report getWeekDistribution].

	^Dictionary new