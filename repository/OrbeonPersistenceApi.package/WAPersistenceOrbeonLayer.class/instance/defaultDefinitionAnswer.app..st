other
defaultDefinitionAnswer: formName app: app
	"This method is called when the OrbeonApplication was not found. This can be caused by Orbeon calling library forms"

	self requestContext response headerAt: 'orbeon-form-definition-version' put: '1'.

	^(GRCodec forEncoding: 'utf-8') decode: (self defaultPublishedFormDefinitionClass defaultXmlDefinition: formName app: app)