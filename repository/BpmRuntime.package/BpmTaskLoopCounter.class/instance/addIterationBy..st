other
addIterationBy: aBpmUser
	"The receiver increment the iteration counter <counter> triggered by the user <aBpmUser>"

	counter := counter + 1.

	iterations at: counter put: aBpmUser