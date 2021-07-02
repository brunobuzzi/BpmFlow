other
defaultLibrarySourceTemplate
	"This method is called when the OrbeonApplication was not found. This can be caused by Orbeon calling library forms"

	^(GRCodec forEncoding: 'utf-8') decode: (self defaultPublishedFormDefinitionClass defaultXmlDefinition: formName app: appName)