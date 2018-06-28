other
generateFieldReportFrom: descriptionArray

	^BpmProcessDefinition 
			reportValueSumDistributionFor: (descriptionArray at: 2) 
			in: (descriptionArray at: 1) 
			fieldNamed: (descriptionArray at: 3) 
			from: (descriptionArray at: 4)
			to: (descriptionArray at: 5)
			satisfying: (descriptionArray at: 6)