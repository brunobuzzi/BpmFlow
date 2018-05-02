assignment
asAssignmentFor: aBpmRole in: aBpmRunningTasksMatrix
	"The receiver answer a task assignment for a <BpmRole> based on it self"
	| assignment |

	assignment  := (BpmTaskAssignment newFor: process task: self in: aBpmRunningTasksMatrix)
							role: aBpmRole;
							canUnassign: self canUnassign;
							yourself.

	(self getRolesToInformOn: #creation) do: [:eachRole | ].
 
	^assignment