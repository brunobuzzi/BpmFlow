search area
saveChart

	(self componentValueAt: 'saveChart') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	chartDefinition addToCache.

	self removeValueNamed: 'saveChart'.

	self basicCreateChartDefinition.