test
test_roundRobinRoleAssignation_visaAccepted
	"Testing Assignation Policy Round Robin by Role"
	| newRoundRobinProcesses availableUsers assignations assignmentsInProcess subProc |

	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') removeAllUsers.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo2').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo3').

	procDefinition setRoundRobinRoleAssignationPolicy: true. "new assignation policy is created here (all user has count := 0)"
	subProc := procDefinition subProcesses asArray last.
	subProc setRoundRobinRoleAssignationPolicy: true. "new assignation policy is created here (all user has count := 0)"
	subProc := subProc subProcesses asArray last.
	subProc setRoundRobinRoleAssignationPolicy: true. "new assignation policy is created here (all user has count := 0)"

	newRoundRobinProcesses := OrderedCollection new.
	availableUsers := (self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') users asOrderedCollection. 

	self assert: (procDefinition assignationPolicy assignments allSatisfy: [:eachCount | eachCount count = 0]). 

	1 to: 10 do: [:index | | newProcess |
		newProcess := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').
		newRoundRobinProcesses add: newProcess.
	].

	assignations := procDefinition assignationPolicy assignments at: 'visa officer'. "answer <aSortedCollection>"

	self assert: ((assignations select: [:each | each count = 3]) size = 2).
	self assert: ((assignations select: [:each | each count = 4]) size = 1).

	assignmentsInProcess := ((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).
	assignmentsInProcess := ((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).
	assignmentsInProcess := ((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]).

	self assert: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 

	"Here we send all 10 processes to the second task <check-basic-data> by finalizing current task <citizen-appliance> "
	"Step 1 - Form [citizen-appliance]" 
	(((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | (newRoundRobinProcesses identityIncludes: each process) and:[each taskName = 'citizen-appliance']]) do: [:assignment | 
		self processExecutionSimulator associate: assignment withForm: (self formInstance_citizen_appliance: assignment process).
		self processExecutionSimulator finalizeAssignment: assignment withUserNamed: 'andrew vo' on: assignment process.
	].
	(((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | (newRoundRobinProcesses identityIncludes: each process) and:[each taskName = 'citizen-appliance']]) do: [:assignment | 
		self processExecutionSimulator associate: assignment withForm: (self formInstance_citizen_appliance: assignment process).
		self processExecutionSimulator finalizeAssignment: assignment withUserNamed: 'andrew vo2' on: assignment process.
	].
	(((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | (newRoundRobinProcesses identityIncludes: each process) and:[each taskName = 'citizen-appliance']]) do: [:assignment | 
		self processExecutionSimulator associate: assignment  withForm: (self formInstance_citizen_appliance: assignment process).
		self processExecutionSimulator finalizeAssignment: assignment withUserNamed: 'andrew vo3' on: assignment process.
	].

	self assert: ((assignations select: [:each | each count = 6]) size = 1).
	self assert: ((assignations select: [:each | each count = 7]) size = 2).

	"here we compare with 2,3 and 4. 2 is also used because first distribution can be 3,3,4 and the second 4,4,2 "
	assignmentsInProcess := ((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 2) or: [(assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]]).
	assignmentsInProcess := ((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 2) or: [(assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]]).
	assignmentsInProcess := ((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process].
	self assert: ((assignmentsInProcess size = 2) or: [(assignmentsInProcess size = 3) or: [assignmentsInProcess size = 4]]).

	newRoundRobinProcesses do: [:procInst | self resumeFromTask2AndTestProcess: procInst]