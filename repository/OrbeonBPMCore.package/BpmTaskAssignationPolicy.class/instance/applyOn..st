assignation
applyOn: aBpmTaskAssignment
	"The receiver automatically assign <aBpmTaskAssignment> to the most fit <BpmUser>"
	| possibleUsers sortedCollection |

	possibleUsers := BpmUser getAvailableUsersToTake: aBpmTaskAssignment.

	possibleUsers ifEmpty: [^NoUserAvailableException signal: 'No user available to take task [', aBpmTaskAssignment taskName, ']'].

	sortedCollection := self getAssignationCountCollectionFor: aBpmTaskAssignment in: possibleUsers. "answer a SortedCollection of <BpmUserAssignationCount>"

	self updateSortedCollectionForNewGrants: sortedCollection with: possibleUsers.
	sortedCollection resort.

	sortedCollection ifEmpty: [^NoUserAvailableException signal: 'No user available to take task [', aBpmTaskAssignment taskName, ']'].

	sortedCollection first user take: aBpmTaskAssignment.
	sortedCollection first incrementCount.
	aBpmTaskAssignment canUnassign: false.