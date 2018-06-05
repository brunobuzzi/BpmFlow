html render
renderArray2Chart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection on: html
	| mainDistribution |

	distributionCollection ifEmpty: [^self].
	
	mainDistribution := distributionCollection at: 1.
	aHighchart addYAxis title text: mainDistribution yTitle.
	aHighchart legend enabled: false.
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: mainDistribution xTitle.
	aHighchart xAxis type: 'category'.
	mainDistribution categories ifNotNil: [:categories | aHighchart xAxis categories: categories]. 

	distributionCollection keysAndValuesDo: [:index :eachDistribution | | data serieClass |
		data := OrderedCollection new.
		eachDistribution distributionKeysAndValuesDo: [:key :value | 
			data add: (Array with: key with: value).
		].
		serieClass := seriesClassCollection at: index.
		(aHighchart addSeriesOf: serieClass)
			index: 0;
			name: eachDistribution seriesName;
			data: data asArray.
	]. 

	html div script: aHighchart.