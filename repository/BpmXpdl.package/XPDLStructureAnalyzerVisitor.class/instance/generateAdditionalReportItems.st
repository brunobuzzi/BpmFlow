other
generateAdditionalReportItems
	"The receiver check for additional rules after the visitation is finished"

	hasStartNode ifFalse: [self addNoStartNodeItem].
	hasEndNode ifFalse: [self addNoEndNodeItem].