other
createDistributionReport
	| report |

	report := self scope processes last reportTasksInstancesFor: nil.

	^report