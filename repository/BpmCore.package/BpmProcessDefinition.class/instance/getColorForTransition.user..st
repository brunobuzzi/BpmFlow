xpdl
getColorForTransition: xpdlTransitionNode user: aBpmUser

	^aBpmUser getProperty: 'svg.transition.borderColor.definition' ifAbsent: ['black']