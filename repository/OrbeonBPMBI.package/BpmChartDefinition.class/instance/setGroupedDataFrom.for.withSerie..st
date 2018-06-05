html render
setGroupedDataFrom: anAppDistributionReport for: aHighchart withSerie: serieClass

	anAppDistributionReport distributionKeysAndValuesDo: [:key :anArray | 
		(aHighchart addSeriesOf: serieClass)
			index: 0;
			name: key;
			data: anArray.
	].