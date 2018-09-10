test
test_fairAssignation_visaAccepted
	"Testing Assignation Policy Fair (global)"
	| newRoundRobinProcesses availableUsers assignmentsInProcess subProc |

	users at: 'andrew vo2' put: (BpmUser getExistingOrNewUserNamed: 'andrew vo2').
	users at: 'andrew vo3' put: (BpmUser getExistingOrNewUserNamed: 'andrew vo3').
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') removeAllUsers.
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo').
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo2').
	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo3').

	procDefinition setFairAssignationPolicy: true.
	subProc := procDefinition subProcesses asArray last.
	subProc setFairAssignationPolicy: true.
	subProc := subProc subProcesses asArray last.
	subProc setFairAssignationPolicy: true.

	newRoundRobinProcesses := OrderedCollection new.
	availableUsers := (BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') users asOrderedCollection. 


	1 to: 10 do: [:index | | newProcess |
		newProcess := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').
		newRoundRobinProcesses add: newProcess.
	].

	assignmentsInProcess := Dictionary new.
	assignmentsInProcess at: 'andrew vo' put: (BpmUserAssignationCount newFor: (users at: 'andrew vo') count: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo2' put: (BpmUserAssignationCount newFor: (users at: 'andrew vo2') count: (((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo3' put: (BpmUserAssignationCount newFor: (users at: 'andrew vo3') count: (((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).

	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo2') count - (assignmentsInProcess at: 'andrew vo3') count) abs < 2).	

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

	assignmentsInProcess := Dictionary new.
	assignmentsInProcess at: 'andrew vo' put: (BpmUserAssignationCount newFor: (users at: 'andrew vo') count: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo2' put: (BpmUserAssignationCount newFor: (users at: 'andrew vo2') count: (((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).
	assignmentsInProcess at: 'andrew vo3' put: (BpmUserAssignationCount newFor: (users at: 'andrew vo3') count: (((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | newRoundRobinProcesses identityIncludes: each process]) size).

	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo') count - (assignmentsInProcess at: 'andrew vo2') count) abs < 2).
	self assert: (((assignmentsInProcess at: 'andrew vo2') count - (assignmentsInProcess at: 'andrew vo3') count) abs < 2).	

	self assert: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((users at: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 
	self assert: (((users at: 'andrew vo2') getCurrentAssignmentsIn: self bpmEnvironment) anySatisfy: [:each | ((users at: 'andrew vo3') getCurrentAssignmentsIn: self bpmEnvironment) identityIncludes: each]) not. 

	newRoundRobinProcesses do: [:procInst | self resumeFromTask2AndTestProcess: procInst]