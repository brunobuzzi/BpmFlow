import
getPossibleInvalidConditions
	| invalidConditions |

	invalidConditions := OrderedCollection new.
	self getProcessesAsTree do: [:each | invalidConditions addAll: each getReportTransitionConditionWithoutField]. 

	^invalidConditions