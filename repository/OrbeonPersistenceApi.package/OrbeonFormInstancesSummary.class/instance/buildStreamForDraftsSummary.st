streams set
buildStreamForDraftsSummary
	| draftsNodes |

	draftsNodes := xmlQuery descendantElementsNamed: 'drafts'.

	(draftsNodes notEmpty and: [((draftsNodes first attributeAt: 'for-never-saved-document') = 'true') and: [draftsNodes first contentString = 'only']])
	ifFalse: [^self].

	"self buildStreamForDraftsSummaryOn: (self getAllDrafts asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime])."

	summaryStream fetchAllDrafts