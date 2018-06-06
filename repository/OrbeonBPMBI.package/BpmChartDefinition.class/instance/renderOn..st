html render
renderOn: html

	report := distribution createDistributionReport. "anAppDistributionReport"

	self chartType renderReport: report on: html