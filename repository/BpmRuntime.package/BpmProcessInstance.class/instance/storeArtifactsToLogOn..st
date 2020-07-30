Accessing
storeArtifactsToLogOn: anOrderedCollection

	anOrderedCollection 
		add: startEvent;
		addAll: currentActivities;
		addAll: executedActivities;
		addAll: transitions;
		addAll: subprocesses;
		addAll: self endEventsAsOrderedCollection;
		addAll: runningGateways;
		addAll: executedGateways;
		addAll: executedScripts;
		addAll: intermediateEvents;
		addAll: states;
		addAll: userAssignments.