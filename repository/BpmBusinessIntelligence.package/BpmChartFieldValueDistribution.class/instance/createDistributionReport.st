other
createDistributionReport

	^self isForSpecificVersion
	ifTrue: [self createDistributionReportForSpecificVersion] 
	ifFalse: [self createDistributionReportForAllVersions]