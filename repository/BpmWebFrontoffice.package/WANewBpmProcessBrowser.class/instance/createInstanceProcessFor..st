other
createInstanceProcessFor: anBpmProcessDefinition
	"Create a new OrbeonFormProcess based on the definition OrbeonFormProcessDefinition <selectedDefinition> for the user <anOrbeonFormUser>.
	1- Create an OrbeonProcessAssignment.
	2- Create an OrbeonFormProcess.
	3- Associate the Assignment with the Process.
	4- The user <anOrbeonFormUser> take the assignment <anOrbeonProcessAssignment>"

	processInstance := anBpmProcessDefinition createProcessInstance: self session user.

	processInstance 
		andContextApplications: ((andApplications collect: [:each | self defaultApplicationManagerClass getAnyApplicationNamed: each]) select: [:each | each notNil]);
		orContextApplications: ((orApplications collect: [:each | self defaultApplicationManagerClass getAnyApplicationNamed: each]) select: [:each | each notNil]).

	processInstance triggerStartEventWith: self session user.

	^processInstance