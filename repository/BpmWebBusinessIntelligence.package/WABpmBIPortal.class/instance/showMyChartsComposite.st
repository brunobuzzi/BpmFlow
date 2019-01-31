top menu
showMyChartsComposite

	(arena class == WABpmMyChartsComposite) ifTrue: [^arena setParent: self].

	^WABpmMyChartsComposite parent: self