streams building
buildStreams

	invertedPermissions := definition getInvertedPermissions.

	self createQueryNodes.

	"if there is NO query nodes --> Orbeon is searching for a draft with a given form <id>"
	queryNodes isEmpty ifTrue: [^self buildStreamsForDraftsSearch].

	"it has query nodes but Without Values --> Generic Summary without Search"
	(queryNodes allSatisfy: [:each | each value == nil]) ifTrue: [^self buildStreamsForRegularSummaryPaging].

	"it has query nodes but With Values --> Summary with Field Search"
	^self buildStreamsForSearchSummaryPaging