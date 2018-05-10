other
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := self isAllRolesSelected ifTrue: [#('Number of Tasks' 'Number of Users' 'Unassigned Tasks')] ifFalse: [#('Tasks Average Time')].

	self renderDistributionComboOn: html withDistribution: distributionNames.