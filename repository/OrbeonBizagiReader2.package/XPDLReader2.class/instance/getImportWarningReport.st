other
getImportWarningReport

	importReport addAll: self getSubProcessNodesWithoutProcessDefinition.

	self getAllWorkflows do: [:each | 
		importReport addAll: each getActivitiesWithMixedStartConditions;
			addAll: each getActivitiesWithoutName;
			addAll: each getActivitiesWithSameName;
			addAll: each getEndNodesReport;
			addAll: each getGatewaysWithoutConditions;
			addAll: each getIsolatedActivities;
			addAll: each getLanesWithoutName;
			addAll: each getStartNodeReport;
			addAll: each getSuspiciousConditions;
			addAll: each getTaskScriptWarnings.
	].

	^importReport