other
createDistributionReport

	reports := self singleDistributions collect: [:each | each createDistributionReport].