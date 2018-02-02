assignment
take: aBpmTaskAssignment
	"The receiver take the unassigned task <aBpmTaskAssignment>"

	aBpmTaskAssignment processIsRunning ifFalse: [^ProcessNotRunningException signal: 'The assignment can not be taken by the user because the process is NOT [running]'].
	aBpmTaskAssignment user ifNotNil: [^TaskAlreadyTakenException signal: 'This task is already taken by user [', aBpmTaskAssignment getUsername, ']']. 

	aBpmTaskAssignment 
		removeFromMatrix; "is not available for other users to take it"
		setAssignationDate; "time stamp when the task was taken"
		registerInProcess. "for historic purpose"

	self getCurrentAssignmentsInbox acceptEntry: aBpmTaskAssignment. "store the assignment in the current assignment inbox"

	aBpmTaskAssignment user: self.

	aBpmTaskAssignment hasPerformers 
	ifTrue: [aBpmTaskAssignment addWorkerUser: self] "add a user and a role to the BpmTaskInstace"