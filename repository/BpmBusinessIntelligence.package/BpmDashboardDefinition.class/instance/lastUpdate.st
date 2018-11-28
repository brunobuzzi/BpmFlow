dashboard generation
lastUpdate
	"The receiver answer <aTimeStamp> of the last update of <BpmDashboardInstance>s"

	items isEmpty ifTrue: [^TimeStamp fromString: '01/01/1970'].

	^items last lastUpdate