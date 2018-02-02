assignation
getAssignationCountCollectionFor: aBpmTaskAssignment in: possibleUsers
	"Answer a <SortedCollection> of <BpmUserAssignationCount> in order peek the most fit user of the assignation policy"

	^(possibleUsers collect: [:eachUser | BpmUserAssignationCount newFor: eachUser count: (self getTaskCountFor: eachUser)]) asSortedCollection: [:a :b | a count <= b count]