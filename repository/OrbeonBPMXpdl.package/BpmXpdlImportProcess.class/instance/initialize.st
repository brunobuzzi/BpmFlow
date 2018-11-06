other
initialize

	super initialize.

	applications := OrderedCollection new.

	"these two instances variables only hold data of uploaded processes"
	indexApplicationMapper := Dictionary new. "the <key> is the index (1,2,3,4,...) of the process and <value> is the name of the <Application>"
	indexXpdlFileMapper := Dictionary new. "the <key> is the index (1,2,3,4,...) of the process and <value> is the name of the XPDL file"

	fileFormatErrors := Dictionary new. "to check if files are well formated"