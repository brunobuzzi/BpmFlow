other
model: aModel

	super model: aModel.

	innerSeasideComponent 
	ifNotNil: [innerSeasideComponent answer.
				innerSeasideComponent := nil.]