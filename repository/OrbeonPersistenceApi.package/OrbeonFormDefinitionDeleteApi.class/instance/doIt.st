other
doIt
	"This method is called by Orbeon when a user click 'Delete' in a Form Definition in the Form Runner page"

	^(self getOrbeonApplicationClass logicalRemoveDefinitionWithId: id ifNone: [nil]) xmlString