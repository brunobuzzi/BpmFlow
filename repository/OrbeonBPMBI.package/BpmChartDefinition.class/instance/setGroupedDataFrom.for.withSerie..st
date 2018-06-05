html render
setGroupedDataFrom: anAppDistributionReport for: aHighchart withSerie: serieClass

	anAppDistributionReport distributionKeysAsSortedCollectionAndValuesDo: [:key :anArray | 
		(aHighchart addSeriesOf: serieClass)
			name: key;
			data: anArray
	].