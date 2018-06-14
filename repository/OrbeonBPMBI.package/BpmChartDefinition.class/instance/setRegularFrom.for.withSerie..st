html render
setRegularFrom: anAppDistributionReport for: aHighchart withSerie: serieClass
	"The receiver extract data from the report <anAppDistributionReport> and load it to highchart instance <aHighchart> as a serie of type <serieClass>"
	| data |

	data := OrderedCollection new.
	self getDistributionToRender keysAndValuesDo: [:key :value | 
		data add: (Array with: key with: value).
	].
	(aHighchart addSeriesOf: serieClass)
		index: 0;
		name: anAppDistributionReport seriesName;
		data: data asArray.