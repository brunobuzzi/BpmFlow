test
test_roundRobinTaskAssignation_visaAccepted
	"Testing Assignation Policy Round Robin by Role"
	| newRoundRobinProcesses availableUsers assignations assignmentsInProcess subProc |

	users at: 'andrew vo2' put: (BpmUser getExistingOrNewUserNamed: 'andrew vo2').
	users at: 'andrew vo3' put: (BpmUser getExistingOrNewUserNamed: 'andrew vo3').
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') removeAllUsers.
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo').
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo2').
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo3').

	procDefinition setRoundRobinTaskAssignationPolicy: true . "new assignation policy is created here (all user has count := 0)"
	subProc := procDefinition subProcesses asArray last.
	subProc setRoundRobinTaskAssignationPolicy: true. "new assignation policy is created here (all user has count := 0)"
	subProc := subProc subProcesses asArray last.
	subProc setRoundRobinTaskAssignationPolicy: true. "new assignation policy is created here (all user has count := 0)"

	newRoundRobinProcesses := OrderedCollection new.
	availableUsers := (BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') users asOrderedCollection. 

	self assert: (procDefinition assignationPolicy assignments allSatisfy: [:eachCount | eachCount count = 0]). 

	1 to: 10 do: [:index | | newProcess |
		newProcess := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').
		newRoundRobinProcesses add: newProcess.
	].

	assignations := procDefinition assignationPolicy assignments at: 'citizen-appliance'. "answer <aSortedCollection>"

	self assert: ((assignations select: [:each | each count = 3]) size = 2).
	self assert: ((assignations select: [:each | each count = 4]) size = 1).

	assignmentsInProcess := ((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).
	assignmentsInProcess := ((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).
	assignmentsInProcess := ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).

	self assert: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 

	"Here we send all 10 processes to the second task <check-basic-data> by finalizing current task <citizen-appliance> "
	"Step 1 - Form [citizen-appliance]" 
	(((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | (newRoundRobinProcesses identityIncludes: each process) and:[each taskName = 'citizen-appliance']]) do: [:assignment | 
		self associate: assignment withForm: (self formInstance_citizen_appliance: assignment process) on: assignment process.
		self finalizeAssignment: assignment withUserNamed: 'andrew vo' on: assignment process.
	].
	(((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | (newRoundRobinProcesses identityIncludes: each process) and:[each taskName = 'citizen-appliance']]) do: [:assignment | 
		self associate: assignment withForm: (self formInstance_citizen_appliance: assignment process) on: assignment process.
		self finalizeAssignment: assignment withUserNamed: 'andrew vo2' on: assignment process.
	].
	(((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | (newRoundRobinProcesses identityIncludes: each process) and:[each taskName = 'citizen-appliance']]) do: [:assignment | 
		self associate: assignment  withForm: (self formInstance_citizen_appliance: assignment process) on: assignment process.
		self finalizeAssignment: assignment withUserNamed: 'andrew vo3' on: assignment process.
	].

	assignations := procDefinition assignationPolicy assignments at: 'check-basic-data'. "answer <aSortedCollection>"

	self assert: ((assignations select: [:each | each count = 3]) size = 2).
	self assert: ((assignations select: [:each | each count = 4]) size = 1).

	assignmentsInProcess := ((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).
	assignmentsInProcess := ((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).
	assignmentsInProcess := ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).

	self assert: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 

	newRoundRobinProcesses do: [:procInst | self resumeFromTask2AndTestProcess: procInst]