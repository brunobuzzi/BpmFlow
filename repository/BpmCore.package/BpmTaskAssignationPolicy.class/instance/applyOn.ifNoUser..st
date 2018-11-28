assignation
applyOn: aBpmTaskAssignment ifNoUser: aBlock
	"The receiver automatically assign <aBpmTaskAssignment> to the most fit <BpmUser>.
	If no user can be assigned to <aBpmTaskAssignment> then evaluate the niladic block <aBlock>"
	| possibleUsers sortedCollection |

	possibleUsers := BpmUser getAvailableUsersToTake: aBpmTaskAssignment.

	possibleUsers ifEmpty: [^aBlock value].

	sortedCollection := self getAssignationCountCollectionFor: aBpmTaskAssignment in: possibleUsers. "answer a SortedCollection of <BpmUserAssignationCount>"

	self updateSortedCollectionForNewGrants: sortedCollection with: possibleUsers.
	sortedCollection resort.

	sortedCollection ifEmpty: [^aBlock value].

	sortedCollection first user take: aBpmTaskAssignment.
	sortedCollection first incrementCount.
	aBpmTaskAssignment canUnassign: false.