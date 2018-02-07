Updating
mode: newValue
	"Set the mode of the receiver (#finished or #normal). 
	normal - is when lateral list is composed with current pending assignments.
	finished - is when lateral list is composed with finished assignments.
	If <mode> is different from <newValue> --> the sub menu has changed the <selectedLateralItem> must be reseted"

	(mode == newValue) ifFalse: [selectedLateralItem := nil].

	mode := newValue