tests
testResetCurrentSystem

	BpmSystemInitialization resetCurrentSystem.

	BpmUser cache do: [:user | 
		self assert: user roles isEmpty.
		self assert: user rolesAssociation isEmpty.
		user getBpmEnvironments do: [:env | 
			self assert: (user getCurrentAssignmentsIn: env) isEmpty.
			self assert: (user getFinishedAssignmentsIn: env) isEmpty.
			self assert: (user getReleasedAssignmentsIn: env) isEmpty.
			self assert: (user getUserNotificationsIn: env) isEmpty.
			self assert: (user getSystemNotificationsIn: env) isEmpty.
		].
	].

	self assert: self defaultApplicationManagerClass cache isEmpty.

	self assert: BpmProcessDefinitionCategory cache isEmpty.
	self assert: BpmProcessInstanceCategory cache isEmpty.
	self assert: BpmProcessDynamicCategory cache isEmpty.

	(Smalltalk at: #BpmDashboardRepository ifAbsent: [nil]) ifNil: [] ifNotNil: [:repositoryClass | self assert: repositoryClass default isEmpty]. "issue #653"
	self assert: self defaultTimerEventMonitor monitoredEvents isEmpty.
	self assert: self defaultTimerEventMonitor monitoredProcessDefinitions isEmpty.
	self assert: self defaultTimerEventMonitor processesCreationEventHistory isEmpty.