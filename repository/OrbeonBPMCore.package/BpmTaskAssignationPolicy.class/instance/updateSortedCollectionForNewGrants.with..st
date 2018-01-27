assignation
updateSortedCollectionForNewGrants: sortedCollection with: possibleUsers
	"The receiver update the <SortedCollection> <sortedCollection> removing ungrated users and adding new granted users.
	In <BpmRoundRobinAssignationPolicy> is possible that users present in <assignments> where remove from the role and user granted may be not present in the collection.
	Here the collection is updated with current permissions.
	In <BpmFairAssignationPolicy> is not necessary to do anything because the collection is generated again in each call"

	self subclassResponsibility