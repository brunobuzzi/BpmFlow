subcomponents
openBizagiManager

	(arena isKindOf: WAXpdlImporterBrowser)
	ifTrue: [^arena].

	^WAXpdlImporterBrowser new orbeonApplications: (self session user getVisibleApplicationsIn: self session bpmEnvironment).