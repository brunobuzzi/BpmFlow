html render
renderArray3Chart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection atDiv: aWADivTag
	| mainDistribution yAxisCategories newSerie |

	distributionCollection ifEmpty: [^self].

	yAxisCategories := #('Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday') collect: [:each | each translateFor: self user].
	
	mainDistribution := distributionCollection at: 1.
	aHighchart colorAxis minColor: '#ffffff'.
	aHighchart colorAxis maxColor: '#000099'.
	aHighchart addYAxis categories: yAxisCategories.
	aHighchart yAxis first title text: 'Days'.

	aHighchart legend enabled: false.
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: mainDistribution xTitle.
	aHighchart xAxis type: 'category'.
	aHighchart xAxis categories: mainDistribution getHeatMapXAxisDaysCollection.

	distributionCollection keysAndValuesDo: [:index :eachDistribution | | data serieClass |
		data := OrderedCollection new.
		eachDistribution distributionKeysAndValuesDo: [:keyArray :value | 
			data add: (Array with: (keyArray at: 1) with: (keyArray at: 2) with: value).
		].
		serieClass := seriesClassCollection at: index.
		newSerie := aHighchart addSeriesOf: serieClass.
		newSerie
			index: 0;
			name: eachDistribution seriesName;
			data: data asArray.
		newSerie dataLabels color: '#000000';
							enabled: true.
				
	]. 

	aWADivTag script: aHighchart.