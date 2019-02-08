assignment
take: aBpmTaskAssignment
	"The receiver take the unassigned task <aBpmTaskAssignment>"
	| takeProcedure |

	aBpmTaskAssignment processIsRunning ifFalse: [^ProcessNotRunningException signal: 'The assignment can not be taken by the user because the process is NOT [running]'].
	aBpmTaskAssignment isFree ifFalse: [^TaskAlreadyTakenException signal: 'This task is already taken by user [', aBpmTaskAssignment getUsername, ']']. 

	takeProcedure := BpmTakeAssignmentOperation on: aBpmTaskAssignment by: self.

	takeProcedure executeIt.