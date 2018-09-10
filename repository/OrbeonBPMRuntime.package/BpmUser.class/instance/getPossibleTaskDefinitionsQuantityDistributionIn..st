distribution
getPossibleTaskDefinitionsQuantityDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	(self rolesIn: aBpmEnvironment) do: [:eachRole |
		distribution at: eachRole name put: eachRole numberOfTasks.
	]. 

	^distribution