other
createEnviroment
	| envName environment |

	envName := self componentValueAt: 'envName'.
	(envName isNil or: [envName isEmpty]) ifTrue: [^self].

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: envName.

	environment seasideApplicationName: (self componentValueAt: 'seasideApplicationName' ifAbsent: ['bpmflow'])

	"this value is used to generate the redirect from Orbeon to Seaside. 
	Check WABpmPersistenceOrbeonLayer>>generateLinkedUrlFor:s:andK: 
	This inst var is used in ATOP application. All Atop applications should change the value of <seasideApplicationName>. See issue #820 for more information."