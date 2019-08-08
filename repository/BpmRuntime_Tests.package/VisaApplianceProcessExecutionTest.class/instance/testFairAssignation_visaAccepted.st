test
testFairAssignation_visaAccepted
	"Testing Assignation Policy Fair (global)"
	| newRoundRobinProcesses availableUsers assignmentsInProcess subProc |

	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') removeAllUsers.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo2').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo3').

	procDefinition setFairAssignationPolicy: true.
	subProc := procDefinition subProcesses asArray last.
	subProc setFairAssignationPolicy: true.
	subProc := subProc subProcesses asArray last.
	subProc setFairAssignationPolicy: true.

	newRoundRobinProcesses := OrderedCollection new.
	availableUsers := (self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') users asOrderedCollection. 


	1 to: 10 do: [:index | | newProcess |
		newProcess := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').
		newRoundRobinProcesses add: newProcess.
	].

	assignmentsInProcess := Dictionary new.
	assignmentsInProcess at: 'andrew vo' put: (BpmUserAssignationCount newFor: (self getUserNamed: 'andrew vo') count: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo2' put: (BpmUserAssignationCount newFor: (self getUserNamed: 'andrew vo2') count: (((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo3' put: (BpmUserAssignationCount newFor: (self getUserNamed: 'andrew vo3') count: (((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).

	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo2') count - (assignmentsInProcess at: 'andrew vo3') count) abs < 2).	

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

	assignmentsInProcess := Dictionary new.
	assignmentsInProcess at: 'andrew vo' put: (BpmUserAssignationCount newFor: (self getUserNamed: 'andrew vo') count: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo2' put: (BpmUserAssignationCount newFor: (self getUserNamed: 'andrew vo2') count: (((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo3' put: (BpmUserAssignationCount newFor: (self getUserNamed: 'andrew vo3') count: (((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).

	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo2') count - (assignmentsInProcess at: 'andrew vo3') count) abs < 2).	

	self assert: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((self getUserNamed: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((self getUserNamed: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 

	newRoundRobinProcesses do: [:procInst | self resumeFromTask2AndTestProcess: procInst]