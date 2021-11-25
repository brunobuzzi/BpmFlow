cache
isLastVersion
	| lastProcessVersion |

	lastProcessVersion := application lastVersionOfProcessNamed: processName ifNone: [^AppObjectNotInCacheException signal: 'No such Process Definition'].

	^lastProcessVersion == self