distribution
getPossibleTaskDefinitionsQuantityDistribution
	| distribution |

	distribution := OrderPreservingDictionary new.

	self roles do: [:eachRole |
		distribution at: eachRole name put: eachRole numberOfTasks.
	]. 

	^distribution