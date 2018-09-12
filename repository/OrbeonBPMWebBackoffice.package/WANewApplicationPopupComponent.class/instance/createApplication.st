other
createApplication
	| appClass appName newApplication |

	appName := self componentValueAt: 'appName'.
	(appName isNil or: [appName isEmpty]) ifTrue: [^self].

	(self getApplicationManagerClass getAnyApplicationNamed: appName) ifNotNil: [^parent addValue: appName named: 'Error'].
 
	appClass := (self componentValueAt: 'isOrbeon') 
		ifNil: [^self]
		ifNotNil: [:aBoolean | aBoolean ifTrue: [OrbeonApplication] ifFalse: [BpmApplication]].

	newApplication := (appClass newNamed: appName) addToCache.

	[self session bpmEnvironment registerApplication: newApplication] on: Error do: [:ex | ].