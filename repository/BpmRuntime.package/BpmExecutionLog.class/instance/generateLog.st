other
generateLog
	"The receiver collect all generated elements in the execution of <BpmProcessInstance> <bpmProcess> as <BpmExecutionLogEntry> objects and store them on <logEntries> collection"
	| collectorBlock |

	logEntries := OrderedCollection new.

	collectorBlock := [:collection | collection do: [:each | logEntries addAll: each asLogEntry]].

	collectorBlock 
		value: bpmProcess currentActivities;
		value: bpmProcess executedActivities;
		value: bpmProcess transitions;
		value: bpmProcess subprocesses;
		value: (OrderedCollection with: bpmProcess startEvent);
		value: bpmProcess endEventsAsOrderedCollection;
		value: bpmProcess runningGateways;
		value: bpmProcess executedGateways;
		value: bpmProcess executedScripts;
		value: bpmProcess intermediateEvents;
		value: bpmProcess states;
		value: bpmProcess userAssignments.

	logEntries := logEntries asSortedCollection: [:a :b | a getTimeStamp <= b getTimeStamp].