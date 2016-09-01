other
getCurrentCollection

	searchApplied 
	ifFalse: [^lateralCollection := self session user getBackofficeApplications 
												asSortedCollection: [:a :b | a applicationName <= b applicationName]].

	^searchResult