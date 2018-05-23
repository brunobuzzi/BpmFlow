search area
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := (self isAllVersionSelected 
									ifTrue: [#('Creation Day' 'Field Value' 'Field Evolution' 'Processes Average Time' 'Process Instances')] 
									ifFalse: [#('Creation Day' 'Field Value' 'Tasks Average Time')]).

	^self renderActiveDistributionComboOn: html withDistribution: distributionNames