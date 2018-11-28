inform
getRolesToInformOn: actionName
	"Answer a collection of roles <BpmFrontOfficeRole> to inform when the action named <actionName> is performed"

	^informTo at: actionName ifAbsent: [#()]