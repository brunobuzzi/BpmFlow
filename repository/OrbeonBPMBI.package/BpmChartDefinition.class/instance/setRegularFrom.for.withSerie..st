html render
setRegularFrom: anAppDistributionReport for: aHighchart withSerie: serieClass
	| data |

	data := OrderedCollection new.
	anAppDistributionReport distributionKeysAndValuesDo: [:key :value | 
		data add: (Array with: key with: value).
	].
	(aHighchart addSeriesOf: serieClass)
		index: 0;
		name: anAppDistributionReport seriesName;
		data: data asArray.