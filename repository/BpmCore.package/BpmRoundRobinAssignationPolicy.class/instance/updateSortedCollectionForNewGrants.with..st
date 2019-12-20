assignation
updateSortedCollectionForNewGrants: sortedCollection with: possibleUsers
	"The receiver update the <SortedCollection> <sortedCollection> removing ungrated users and adding new granted users.
	In <BpmRoundRobinAssignationPolicy> is possible that users present in <assignments> were removed from the role and new users granted may be not present in the collection.
	Here the collection is updated with current permissions.
	In <BpmFairAssignationPolicy> is not necessary to do anything because the collection is generated again in each call"

	"if the user has been ungranted for this type of task is taken out of the round robin collection"
	sortedCollection removeAll: (sortedCollection reject: [:roundRobinCount | possibleUsers identityIncludes: roundRobinCount user]).

	"users in <possibleUsers> that are not present in <sortedCollection> are added to <possibleUsers>"
	(possibleUsers difference: (sortedCollection collect: [:roundRobinCount | roundRobinCount user])) do: [:eachUser | 
		sortedCollection add: (BpmUserAssignationCount newFor: eachUser).
	].