other
doIt
	"This method is called by Orbeon when a user click 'Delete' in a Form Definition in the Form Runner page"

	^(systemRoot logicalRemoveDefinitionWithId: id ifNone: [nil]) xmlString