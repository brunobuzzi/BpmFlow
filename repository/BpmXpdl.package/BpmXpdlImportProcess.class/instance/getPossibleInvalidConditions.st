import
getPossibleInvalidConditions
	| invalidConditions |

	invalidConditions := OrderedCollection new.
	processesAsTree do: [:each | invalidConditions addAll: each getReportTransitionConditionWithoutField]. 

	^invalidConditions