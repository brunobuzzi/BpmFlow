other
selectedLateralItem: newValue
	| oldAssignment |

"	taskListComposite ifNil: [^super selectedLateralItem: newValue].
 
	oldAssignment := selectedLateralItem.
	selectedLateralItem := newValue.

	(newValue notNil and: [oldAssignment ~~ selectedLateralItem])
	ifTrue: [taskListComposite setTransitionsHeight].
"

	super selectedLateralItem: newValue