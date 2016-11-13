other
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := #('Average Time per Task' 'Number of Tasks' 'Possible Tasks').

	self renderActiveDistributionComboOn: html withDistribution: distributionNames.