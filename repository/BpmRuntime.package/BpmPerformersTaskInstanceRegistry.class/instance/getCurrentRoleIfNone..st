other
getCurrentRoleIfNone: aBlock
	"The receiver answer the current <role> that is working now"

	^(self getCurrentPerformerIfNone: [^aBlock value]) ifNotNil: [:performer | self getRoleForPerformer: performer]