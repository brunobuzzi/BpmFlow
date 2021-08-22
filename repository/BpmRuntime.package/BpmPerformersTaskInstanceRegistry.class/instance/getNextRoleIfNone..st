other
getNextRoleIfNone: aBlock
	"The receiver answer the next <role> that is working now"

	^(self getNextPerformerIfNone: [^aBlock value]) ifNotNil: [:performer | self getRoleForPerformer: performer]