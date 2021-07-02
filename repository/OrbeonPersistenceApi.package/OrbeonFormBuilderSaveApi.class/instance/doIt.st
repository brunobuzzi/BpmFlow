other
doIt
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| latestSavedDefinition |

	(self getFormName isNil or: [self getApplicationName isNil]) ifTrue: [self setApplicationAndFormNameFromXmlString].

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: self getFormName app: self getApplicationName ifNone: [nil].
	version := (self getOrbeonApplicationClass getDefinitionWithId: id ifNone: [nil]) ifNil: [1] ifNotNil: [:def | def version].

	self ifRequiredUpdateForm. "if the <formName> or <appName> has been changed"

	savedFormDefinition := self createAndStoreSavedDefinitionOnApplication. "here the OrbeonFormDefinition is created and associate to the receiver <savedFormDefinition>"

	self moveFilesFromTempPathToSavedPathOf: savedFormDefinition. "move attachments if it is the case -issue #37-"

	^savedFormDefinition xmlString