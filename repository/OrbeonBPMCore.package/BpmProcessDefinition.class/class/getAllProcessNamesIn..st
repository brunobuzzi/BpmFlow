query
getAllProcessNamesIn: appName

	^(self cacheAt: appName ifAbsent: [^#()]) keys asSortedCollection