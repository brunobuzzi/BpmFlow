html render
renderArray2Chart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection on: html
	| mainDistribution |

	distributionCollection ifEmpty: [^self].
	
	mainDistribution := distributionCollection at: 1.
	aHighchart addYAxis title text: mainDistribution yTitle.
	aHighchart legend enabled: true.
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: mainDistribution xTitle.
	aHighchart xAxis type: 'category'.
	mainDistribution categories ifNotNil: [:categories | aHighchart xAxis categories: categories]. 

	distributionCollection keysAndValuesDo: [:index :eachDistribution | | serieClass |
		serieClass := seriesClassCollection at: index.
		self distribution isGrouped
		ifFalse: [self setRegularFrom: eachDistribution for: aHighchart withSerie: serieClass] 
		ifTrue: [self setGroupedDataFrom: eachDistribution for: aHighchart withSerie: serieClass].
"		data := OrderedCollection new.
		eachDistribution distributionKeysAndValuesDo: [:key :value | 
			data add: (Array with: key with: value).
		].
		(aHighchart addSeriesOf: serieClass)
			index: 0;
			name: eachDistribution seriesName;
			data: data asArray."
	]. 

	html div script: aHighchart.