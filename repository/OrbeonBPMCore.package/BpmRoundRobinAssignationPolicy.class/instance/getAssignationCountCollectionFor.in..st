assignation
getAssignationCountCollectionFor: aBpmTaskAssignment in: possibleUsers
	"Answer a <SortedCollection> of <BpmUserAssignationCount> in order peek the most fit user of the assignation policy"

	^assignments at: (self getAssignationFilterFor: aBpmTaskAssignment) ifAbsentPut: [SortedCollection sortBlock: [:a :b | a count <= b count]].