search area
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := self isAllRolesSelected ifTrue: [#('Number of Tasks' 'Number of Users' 'Unassigned Tasks' 'Users in Time')] ifFalse: [#('Tasks Average Time' 'Users in Time')].

	self renderDistributionComboOn: html withDistribution: distributionNames.