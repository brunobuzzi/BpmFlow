other
getCurrentCollection

	searchApplied 
	ifFalse: [^lateralCollection := (self session user getBackofficeApplicationsIn: self session bpmEnvironment) asSortedCollection: [:a :b | a applicationName <= b applicationName]].

	^searchResult