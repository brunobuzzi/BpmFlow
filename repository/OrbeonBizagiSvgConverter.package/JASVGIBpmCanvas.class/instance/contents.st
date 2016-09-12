draw
contents
	
	svgTag with: [
		self tag: 'defs' with: [svgMarkers do: [:each | each drawOn: self]].
		(svgGroups orderedKeys select: [:e | e notNil]) do:[:key | | tagGroup |
			tagGroup := svgGroups at: key.
			tagGroup drawOn: self.
		].
		(svgFigures orderedKeys select: [:e | e notNil]) do:[:key | | svgFigureTag |
			svgFigureTag := svgFigures at: key.
			svgFigureTag drawOn: self.
		].
		(svgLines orderedKeys select: [:e | e notNil]) do:[:key | | svgLineTag |
			svgLineTag := svgLines at: key.
			svgLineTag drawOn: self.
		].
	].

	^xmlCanvas contents