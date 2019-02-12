assignment
asAssignmentFor: aBpmRole in: aBpmTasksMatrix
	"The receiver answer a task assignment for a <BpmRole> based on it self"
	| assignment |

	assignment  := (BpmTaskAssignment newFor: process task: self in: aBpmTasksMatrix)
							role: aBpmRole;
							canUnassign: self canUnassign;
							yourself.

	self sendInformationMessageFor: assignment.
 
	^assignment