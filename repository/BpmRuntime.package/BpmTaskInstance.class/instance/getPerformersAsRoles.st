performers
getPerformersAsRoles
	"The receiver answer a collection of <BpmFrontOfficeRole> converted from performers "

	^self performers collect: [:performer | self getRoleForPerformer: performer]