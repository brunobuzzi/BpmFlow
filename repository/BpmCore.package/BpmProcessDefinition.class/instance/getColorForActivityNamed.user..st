xpdl
getColorForActivityNamed: aString user: aBpmUser

	^aBpmUser getProperty: 'svg.task.fillColor.running' ifAbsent: ['lightsteelblue']