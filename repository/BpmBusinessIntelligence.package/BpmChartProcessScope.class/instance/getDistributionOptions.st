other
getDistributionOptions

	^self isForSpecificVersion 
	ifFalse: [#('Creation Day' 'Date Distribution' 'Field Value' 'Field Evolution' 'Processes Average Time' 'Process Instances')] 
	ifTrue: [#('Creation Day' 'Date Distribution' 'Field Value' 'Tasks Average Time' 'Tasks Instances Heatmap')]