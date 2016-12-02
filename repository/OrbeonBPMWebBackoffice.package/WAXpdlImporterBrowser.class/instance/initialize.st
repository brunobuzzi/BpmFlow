other
initialize

	super initialize.

	numberOfProcess := 1. "hold the numbers of processes to be uploaded. If the value is 4 --> could be 2 processes already uploaded and 2 empty forms"

	"these two instances variables only hold data of uploaded processes"
	uploadProcesses := Dictionary new. "the <key> is the index (1,2,3,4,...) of the process and <value> is the name of the application"
	selectedUploads := Dictionary new. "the <key> is the index (1,2,3,4,...) of the process and <value> is the name of the XPDL file"

	"processesNames := Dictionary new."

	fileFormats := Dictionary new. "to check if files are well formated"