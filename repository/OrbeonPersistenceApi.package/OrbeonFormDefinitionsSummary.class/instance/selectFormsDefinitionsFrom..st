other
selectFormsDefinitionsFrom: anOrderedCollection
	"The receiver apply the query contained in xml document <xmlDocument> to all <OrbeonSavedFormDefinition> in collection <anOrderedCollection>"
	| queryFields result conditions |

	queryFields := Dictionary new. "dictionary with the criteria to search"
	conditions := OrderedCollection new.
	result := anOrderedCollection select: [:each | each deleted = 'N']. "exclude deleted definitions"

	queryNodes := (xmlQuery allElementsNamed: 'query') do: [:node | "get the criteria from <xmlDocument>"
		node strings notEmpty ifTrue: [queryFields at: (node attributeAt: 'name') put: node strings last]].

	"apply all available criteria to the result collection <result>"
	queryFields keysAndValuesDo: [:key :value |
		(key = 'application-name') ifTrue: [conditions add: [:each | value match: each getApplicationName]].
		(key = 'form-name') ifTrue: [conditions add: [:each | value match: each formName]].
		(key = 'title') ifTrue: [conditions add: [:each | value match: each title]].
		(key = 'description') ifTrue: [conditions add: ([:each | value match: each description])].
		(key = '') ifTrue: [conditions add: [:each | (value match: each getApplicationName) or: [(value match: each formName) or: [(each title notNil and: [value match: each title]) or: [(each description notNil and: [value match: each description])]]]]
					].
	].
	conditions do: [:conditionBlock | result := result select: conditionBlock].

	totalFormsSize := totalFormsSize + result size.

	^result