other
getDistributionOptions

	^self isForSpecificVersion 
	ifFalse: [#('Creation Day' 'Field Value' 'Field Evolution' 'Processes Average Time' 'Process Instances')] 
	ifTrue: [#('Creation Day' 'Field Value' 'Tasks Average Time' 'Tasks Instances Heatmap')]