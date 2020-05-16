other
send
	"The receiver store itself in each inbox of users contained in collection <to>"

	affectedProcesses notEmpty ifTrue: [^super send]