search area
renderDistributionComboOn: html

	self hasActiveDistributionCombo
	ifTrue: [self renderActiveDistributionComboOn: html withDistribution: self scope getDistributionOptions]
	ifFalse: [self renderDistributionComboOn: html withDistribution: self scope getDistributionOptions]