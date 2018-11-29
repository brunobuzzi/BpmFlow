activities
cancelDefaultGroupTranslation

	(svgGroups at: self defaultNameForProcessGroup ifAbsent: [^self]) transform: 'translate(0,0)'