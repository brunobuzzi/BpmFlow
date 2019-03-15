other
model: aModel

	super model: aModel.

	self setTransitionsHeight.

	innerSeasideComponent 
	ifNotNil: [innerSeasideComponent answer.
				innerSeasideComponent := nil.]