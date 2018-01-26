assignation
getAssignationCollectionFor: aBpmTaskAssignment in: possibleUsers

	^assignments at: (self getAssignationFilterFor: aBpmTaskAssignment) ifAbsentPut: [SortedCollection sortBlock: [:a :b | a count <= b count]].