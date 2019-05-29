import
getPossibleInvalidConditions
	"The receiver iterarte over all conditions in all processes (including subprocesses) and check if these conditions are 'valid Smalltalk code'  "
	| invalidConditions |

	invalidConditions := OrderedCollection new.
	self getProcessesAsTree do: [:each | invalidConditions addAll: each getReportTransitionConditionWithoutField]. 

	^invalidConditions