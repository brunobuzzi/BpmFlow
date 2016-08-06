other
getObjectsSatisfying: aBlock
	"Answer a collection of objects in <messages> collection that comply with the query <aBlock>.
	To use indexes: aBlock: 
	{:e | e.processId = 3336433824} "

	^(GsQuery fromSelectBlock: aBlock on: messages) queryResult