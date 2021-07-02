streams building
buildStreamsForDraftsSearch
	| draftNode draftId |

	draftNode := xmlQuery allElementsNamed: 'drafts'.
	draftNode isEmpty ifTrue: [^self]. "no stream is set and contents answer an empty collection"

	draftNode := draftNode last.
	"if there is an id <for-document-id> --> Orbeon is searching for a draft, 
	if NOT --> is a Summary of drafts (there are more than one draft stored --> we are going to show all of them)"

	draftId := draftNode attributeAt: 'for-document-id' ifAbsent: [^self buildStreamForDraftsSummary].

	self buildStreamForDraftWithId: draftId