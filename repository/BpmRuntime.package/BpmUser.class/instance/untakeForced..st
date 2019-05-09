assignment
untakeForced: aBpmTaskAssignment
	"The receiver force the untake of the assigned <aBpmTaskAssignment>. see: #untake:"
	| untakeProcedure |

	untakeProcedure := BpmUntakeAssignmentOperation on: aBpmTaskAssignment by: self.

	untakeProcedure executeIt