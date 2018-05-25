search area
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := #('Finished Tasks by Type' 'Possible Tasks' 'Tasks Average Time').

	self renderActiveDistributionComboOn: html withDistribution: distributionNames.