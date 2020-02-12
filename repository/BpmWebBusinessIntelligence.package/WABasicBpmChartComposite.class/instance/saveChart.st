search area
saveChart

	(self componentValueAt: 'saveChart') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self chartsRepository storeChart: chartDefinition.

	self removeValueNamed: 'saveChart'.

	self basicCreateChartDefinition.