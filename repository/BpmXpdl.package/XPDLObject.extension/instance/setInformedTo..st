*bpmxpdl
setInformedTo: aBpmActivityDefinition
	"The receiver set the roles to be informed in any action performed on activity <aBpmActivityDefinition>"
	| role |

	(self hasExtendedAttribute: 'BizagiInformed') ifFalse: [^self].

	role := BpmFrontOfficeRole createNewOrGetExisting: (self extendedValueOf: 'BizagiInformed') in: aBpmActivityDefinition applicationName.

	aBpmActivityDefinition onAnyActionInformTo: role.