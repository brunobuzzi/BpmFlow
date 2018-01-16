other
selectedLateralItem: newValue
	| oldAssignment |

	oldAssignment := selectedLateralItem.
	selectedLateralItem := newValue.

	(newValue notNil and: [oldAssignment ~~ selectedLateralItem])
	ifTrue: [self setTransitionsHeight].