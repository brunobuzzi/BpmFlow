connecting
connectActivitiesAndTrasitions
	"The receiver connect/set each transition's <startNode> and <endNode> with the corresponding XPDL Object"


	self transitionsDo: [:eachTr | "connect transition start and end node with XPLDActivities"

		eachTr startNode: 
				(activities detect: [:eachAct | eachAct getId = eachTr startId] ifNone: [nil]).

		eachTr endNode: 
				(activities detect: [:eachAct | eachAct getId = eachTr endId] ifNone: [nil]).

		eachTr startNode ifNotNil:[:trStartNode | trStartNode addOutTransition: eachTr].

		eachTr endNode ifNotNil: [:trEndNode | trEndNode addInTransition: eachTr.]
	].