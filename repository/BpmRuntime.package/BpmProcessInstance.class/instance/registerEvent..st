events
registerEvent: aBpmEventInstance
	"The receiver add <aBpmEventInstance> to it's event collection"

	^intermediateEvents 
		at: aBpmEventInstance getDefinitionName  
		ifPresent: [:collection | collection add: aBpmEventInstance]
		ifAbsent: [intermediateEvents at: aBpmEventInstance getDefinitionName put: (OrderedCollection with: aBpmEventInstance)]