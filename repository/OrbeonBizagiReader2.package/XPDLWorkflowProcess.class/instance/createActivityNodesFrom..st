components creation
createActivityNodesFrom: aXMLDocument
	"The receiver creates and adds all activities contained in XML document <aXMLDocument> to it's activities collection <activities>"
	| performers |

	performers := self getAllPerformers.
	(aXMLDocument xPath: 'Activities/Activity') do: [:eachNode | | newActivity |
		newActivity := (self getActivityInstanceFrom: eachNode)
			id: (eachNode attributeAt: 'Id');
			name: (eachNode attributeAt: 'Name');
			xmlSegment: eachNode; 
			yourself.
		newActivity 
			setExtendedAttributesWithNode: eachNode;
			setLoopTypeWithNode: eachNode; "loop type: (none) (standart) (multi-instance) [only for Tasks and Subprocess nodes ]"
			setGraphicActivityValuesWithNode: eachNode; "set graphic coordinates [for all nodes]"
			setInternalDataWithNode: eachNode. "set the Id of the subprocess [only for Subprocess nodes]"

		eachNode allElementsNamed: 'Performer' do: [:performerNode | | activityPerformId |
			activityPerformId := performerNode nodes last asString.
			(performers detect: [:each | each getId = activityPerformId] ifNone: [nil])
			ifNotNil: [:performer | newActivity addPerformer: performer].
		].
		self addActivity: newActivity.].

	^activities