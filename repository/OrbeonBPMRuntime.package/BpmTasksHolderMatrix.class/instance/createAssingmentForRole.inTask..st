task handling
createAssingmentForRole: aBpmRole inTask: aBpmTaskInstance
	"The receiver create an asignment based on task <aBpmTaskInstance> to be listed as available for the users"

	self addAssignment: (aBpmTaskInstance asAssignmentFor: aBpmRole in: self "answer <aBpmTaskAssignment>").