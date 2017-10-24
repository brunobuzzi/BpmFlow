running
addEvent: aBpmEventInstance
	"The receiver add <aBpmEventInstance> to it's event collection"

	^intermediateEvents 
		at: aBpmEventInstance getName  
		ifPresent: [:collection | collection add: aBpmEventInstance]
		ifAbsent: [intermediateEvents at: aBpmEventInstance getName put: (OrderedCollection with: aBpmEventInstance)]