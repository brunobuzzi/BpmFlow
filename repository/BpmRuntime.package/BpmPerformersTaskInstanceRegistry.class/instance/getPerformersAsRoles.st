other
getPerformersAsRoles
	"The receiver answer a collection of <BpmFrontOfficeRole> converted from performers "

	^self performersCollect: [:performer | self getRoleForPerformer: performer]