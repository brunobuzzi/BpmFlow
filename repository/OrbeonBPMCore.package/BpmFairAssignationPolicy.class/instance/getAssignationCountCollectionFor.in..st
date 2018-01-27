assignation
getAssignationCountCollectionFor: aBpmTaskAssignment in: possibleUsers
	"Answer a <SortedCollection> of <BpmUserAssignationCount> in order peek the most fit user of the assignation policy"

	^(possibleUsers collect: [:eachUser | BpmUserAssignationCount newFor: eachUser count: eachUser getCurrentAssigments size]) asSortedCollection: [:a :b | a count <= b count]