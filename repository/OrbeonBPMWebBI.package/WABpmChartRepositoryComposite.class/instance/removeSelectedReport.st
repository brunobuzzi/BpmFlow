subclass responsibility
removeSelectedReport

	(self componentValueAt: 'deleteReport' ifAbsent: [^self]) 
	ifFalse: [^self].

	selectedLateralItem removeFromCache.
	self getCurrentCollection remove: selectedLateralItem ifAbsent: [].
	selectedLateralItem := nil