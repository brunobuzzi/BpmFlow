other
createApplication
	| appClass appName newApplication |

	appName := self componentValueAt: 'appName'.
	(appName isNil or: [appName isEmpty]) ifTrue: [^self].

	(self session bpmEnvironment applicationNamed: appName) ifNotNil: [^parent addValue: appName named: 'Error'].
 
	appClass := (self componentValueAt: 'isOrbeon') 
		ifNil: [^self]
		ifNotNil: [:aBoolean | aBoolean ifTrue: [OrbeonApplication] ifFalse: [BpmApplication]].

	newApplication := appClass newNamed: appName on: self session systemRoot.
	newApplication initializeForBpmFlow.

	parent lateralCollection add: newApplication.

	self session bpmEnvironment registerApplication: newApplication