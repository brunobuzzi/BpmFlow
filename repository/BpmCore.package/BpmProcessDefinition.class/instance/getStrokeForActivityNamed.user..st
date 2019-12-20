xpdl
getStrokeForActivityNamed: aString user: aBpmUser

	^aBpmUser getProperty: 'svg.task.borderColor.running' ifAbsent: ['black']