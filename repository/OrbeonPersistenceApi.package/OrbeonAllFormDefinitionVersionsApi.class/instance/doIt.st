other
doIt
	"Implemented as stated in: 
	https://doc.orbeon.com/form-runner/api/persistence/forms-metadata.html#returning-all-form-definition-versions"
	| application |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^'<form/>'].

	((application hasRegistryForFormNamed: self getFormName) not and: [self getFormName notNil]) ifTrue: [^'<form/>'].

	allversions := allversions = 'true'. "the original values is <aString>"
	allforms := allforms = 'true'. "the original values is <aString>"

	allversions ifFalse: [^self generateXmlWithLatestFormDefinitionVersionIn: application].
 
	^self generateXmlWithAllFormDefinitionsIn: application