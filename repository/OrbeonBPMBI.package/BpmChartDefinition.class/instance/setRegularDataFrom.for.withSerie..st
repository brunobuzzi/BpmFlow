html render
setRegularDataFrom: anAppDistributionReport for: aHighchart withSerie: serieClass
	"The receiver extract data from the report <anAppDistributionReport> and load it to highchart instance <aHighchart> as a serie of type <serieClass>"

	anAppDistributionReport getAllReports do: [:eachDistributionReport | | data |
		data := OrderedCollection new.
		(eachDistributionReport getDistributionToRenderFor: dateGroupName) keysAndValuesDo: [:key :value | 
			data add: (Array with: key with: value).
		].
		(aHighchart addSeriesOf: serieClass)
			index: 0;
			name: eachDistributionReport seriesName;
			data: data asArray.
	].