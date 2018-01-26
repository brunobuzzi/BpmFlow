assignation
applyOn: aBpmTaskAssignment
	"The receiver automatically assign <aBpmTaskAssignment> to the most fit <BpmUser>"
	| possibleUsers sortedCollection |

	possibleUsers := BpmUser getAvailableUsersToTake: aBpmTaskAssignment.

	sortedCollection := assignments at: (self getAssignationFilterFor: aBpmTaskAssignment) ifAbsentPut: [SortedCollection sortBlock: [:a :b | a count <= b count]].

	possibleUsers ifEmpty: [^NoUserAvailableException signal: 'No user available to take task [', aBpmTaskAssignment taskName, ']'].

	"if the user has been ungranted for this type of task is taken out of the round robin collection"
	sortedCollection removeAll: (sortedCollection reject: [:roundRobinCount | possibleUsers identityIncludes: roundRobinCount user]).

	"users in <possibleUsers> that are not present in <sortedCollection> are added to <possibleUsers>"
	(possibleUsers difference: (sortedCollection collect: [:roundRobinCount | roundRobinCount user])) do: [:eachUser | 
		sortedCollection add: (BpmRoundRobinCount newFor: eachUser).
	].

	sortedCollection ifEmpty: [^NoUserAvailableException signal: 'No user available to take task [', aBpmTaskAssignment taskName, ']'].

	sortedCollection first user take: aBpmTaskAssignment.
	sortedCollection first incrementCount.
	sortedCollection resort.