streams building
buildStreamForDraftsAndFormsSummary
	| drafts  instances numberOfDraftsToShow |

	drafts := self getAllDrafts asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime].

	instances := (application instancesSetOf: definition formName version: version).
	totalFormsSize := totalFormsSize + instances size.

	"Case 1: Only display Form Instances"
	(drafts size = 0) ifTrue: [^summaryStream fetchFormsInstancesOn: instances from: self pageFrom to: self pageTo].

	"Case 2: <pageFrom> is greater than the Drafts collection --> Only display Form Instances"
	(self pageFrom > drafts size) ifTrue: [^summaryStream fetchFormsInstancesOn: instances from: (self pageFrom - drafts size + 1) to: (self pageTo - drafts size + 1)].

	numberOfDraftsToShow := drafts size - self pageFrom + 1.

	"Case 3: Only display Draft Instances"
	(numberOfDraftsToShow >= pageSize) ifTrue: [^summaryStream fetchDraftsInstancesFrom: self pageFrom to: self pageFrom + pageSize].

	"Case 4: Display a combination of Draft and Form Instances"
	summaryStream fetchDraftsInstancesFrom: self pageFrom to: self pageFrom + numberOfDraftsToShow - 1.
	summaryStream fetchFormsInstancesOn: instances from: 1 to: (pageSize - numberOfDraftsToShow).