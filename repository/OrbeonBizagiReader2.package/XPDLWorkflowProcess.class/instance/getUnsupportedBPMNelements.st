import unsupported
getUnsupportedBPMNelements
	"The receiver detect gateway events used to merge transitions (not allowed)"
	| report activitiesNames |

	report := OrderedCollection new.

	"Unsupported task elements"
	report addAll: self getServiceTasksItemsReport;
		addAll: self getManualTasksItemsReport;
		addAll: self getBussinessRuleTasksItemsReport;
		addAll: self getUserTasksItemsReport;
		addAll: self getReceiverTasksItemsReport.

	"Unsupported events elements"
	report addAll: self getAttachedMessageEventsItemsReport; "non attached event message is supported (in event gateways)"
		addAll: self getErrorEventsItemsReport;
		addAll: self getCompensationEventsItemsReport;
		addAll: self getParallelMultipleEventsItemsReport;
		addAll: self getEscalationEventsItemsReport;
		addAll: self getConditionalEventsItemsReport;
		addAll: self getSignalEventsItemsReport;
		addAll: self getMultipleEventsItemsReport.

	^report