search area
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := #('Current Tasks by Type' 'Possible Tasks' 'Finished Tasks by Type' 'Tasks Average Time').

	self renderActiveDistributionComboOn: html withDistribution: distributionNames.