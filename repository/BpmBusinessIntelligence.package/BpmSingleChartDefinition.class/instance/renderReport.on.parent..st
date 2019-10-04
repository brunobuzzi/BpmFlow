html render
renderReport: anAppDistributionReport on: html parent: aWebComponent
	"The receiver render the report <anAppDistributionReport> on <html> canvas with parent <aWebComponent>.
	If the chart is a <Highchart> then the parent can be ignored becuase there is no Seaside component involved for the chart"

	self chartType renderReport: anAppDistributionReport on: html parent: aWebComponent