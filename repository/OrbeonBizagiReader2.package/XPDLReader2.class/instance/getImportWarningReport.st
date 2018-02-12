warnings
getImportWarningReport

	importReport addAll: self getSubProcessNodesWithoutProcessDefinition;
		addAll: self getPoolsWithoutLanes.

	self getAllWorkflows do: [:each | 
		importReport addAll: each getActivitiesWithMixedStartConditions; "activities with some conditions in one transition and none in others"
			addAll: each getActivitiesWithoutName; "activities without name"
			addAll: each getActivitiesWithSameName; "activities with the same name"
			addAll: each getEndNodesReport; "has no end nodes"
			addAll: each getGatewaysWithoutConditions; "gateways without conditions"
			addAll: each getIsolatedActivities; "activities without any connection"
			addAll: each getLanesWithoutName; "lanes without name"
			addAll: each getStartNodeReport; "has no start node"
			addAll: each getSuspiciousConditions;
			addAll: each getTaskScriptWarnings.
	].

	^importReport