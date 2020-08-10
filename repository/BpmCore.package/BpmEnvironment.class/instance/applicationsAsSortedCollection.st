Accessing
applicationsAsSortedCollection

	^applications asSortedCollection: [:a :b | a applicationName <= b applicationName]