other
generateAdditionalReportItems

	hasStartNode ifFalse: [self addNoStartNodeItem].
	hasEndNode ifFalse: [self addNoEndNodeItem].