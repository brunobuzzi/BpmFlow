other
getItemsImportReportFor: aXPDLObject
	"Answer a collection with all <XPDLItemImportReport> for the XPDL object <aXPDLObject>.
	Remove <XPDLItemImportReport> with the same error code. 
	When the same error code is duplicated is because there are more than one path to reach <aXPDLObject>"
	| selectedItems resultItems codes |

	selectedItems := self detectedItems select: [:each | each offendingXpdlObject == aXPDLObject].

	codes := (selectedItems collect: [:each | each code]) asSet asOrderedCollection.

	resultItems := OrderedCollection new.

	selectedItems do: [:each | (codes includes: each code) ifTrue: [resultItems add: each. codes remove: each code]]. "duplicated error codes are removed for <aXPDLObject>"

	^resultItems