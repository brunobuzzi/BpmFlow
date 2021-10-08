other
renderActiveDistributionComboOn: html withDistribution: distributionNames

	super renderActiveDistributionComboOn: html withDistribution: distributionNames.

	((self searchValueAt: 'distribution' ifAbsent: ['']) = 'Field Evolution')
	ifFalse: [self removeSearchValueNamed: 'date-groups'].