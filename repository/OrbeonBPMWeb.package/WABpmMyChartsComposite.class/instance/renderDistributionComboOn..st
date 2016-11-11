other
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := #('Possible Tasks' 'Number of Tasks' 'Average Time per Task').

	self renderActiveDistributionComboOn: html withDistribution: distributionNames.