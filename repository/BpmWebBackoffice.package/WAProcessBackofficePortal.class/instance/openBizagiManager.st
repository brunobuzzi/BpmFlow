subcomponents
openBizagiManager

	(arena isKindOf: WAXpdlImporterBrowser)
	ifTrue: [^arena].

	^WAXpdlImporterBrowser newOn: (self session user getVisibleApplicationsIn: self session bpmEnvironment).