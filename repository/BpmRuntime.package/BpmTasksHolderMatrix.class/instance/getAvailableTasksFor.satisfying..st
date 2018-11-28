task handling
getAvailableTasksFor: roleName satisfying: aBlock
	"Answer a (reduce conflict and indexable) collection with all tasks for the role named <roleName>.
	Apply to the result the filter block <aBlock>
	To use indexes: aBlock: 
	{:e | e.processId = 3336433824} "
	| rcCollection |

	rcCollection := self getAvailableTasksFor: roleName.

	^(GsQuery fromSelectBlock: aBlock on: rcCollection) queryResult