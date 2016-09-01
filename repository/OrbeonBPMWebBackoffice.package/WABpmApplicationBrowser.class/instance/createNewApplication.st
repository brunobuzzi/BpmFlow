other
createNewApplication
	| appClass appName |

	appName := self componentValueAt: 'appName'.
	(appName isNil or: [appName isEmpty]) ifTrue: [^self].

	appClass := (self componentValueAt: 'isOrbeon') 
		ifNil: [^self]
		ifNotNil: [:aBoolean | aBoolean ifTrue: [OrbeonApplication] ifFalse: [BpmApplication]].

	(appClass newNamed: appName) addToCache.