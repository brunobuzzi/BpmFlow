other
testExecuteProcess_data_entry_approved
	| currentTask endArtifact |

	self assert: (procInstance startEventName = 'start multi role').
	"Step 1.1 - Form [data-entry]" "Performer 1"
	self assert: procInstance currentActivities size equals: 4.
	1 to: 4 do: [:index |
		currentTask := procInstance currentActivities at: index.
		self assert: (currentTask finalizedPerformerCounter = 0).
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_data_entry on: procInstance.
		(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry-manager' in: 'ue') users do: [:eachUser | 
			self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size equals: 2]. "2: creation and take messages"
		self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-1').
		self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-1').
		self assert: (currentTask getDefinitionName = 'data-entry').
		self assert: (currentTask finalizedPerformerCounter = 1).
	].

	"Step 1.2 - Form [data-entry]" "Performer 2"
	self assert: procInstance currentActivities size equals: 4.
	1 to: 4 do: [:index |
		currentTask := procInstance currentActivities at: index.
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan' withForm: self formInstance_data_entry on: procInstance.
		self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-2').
		self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-2').
		self assert: (currentTask getDefinitionName = 'data-entry').
		self assert: (currentTask finalizedPerformerCounter = 2).

		(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry-manager' in: 'ue') users do: [:eachUser | 
			self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size = 3]. "plus 1: take messages"
	].

	"Step 1.3 - Form [data-entry]" "Performer 3"
	self assert: procInstance currentActivities size equals: 4.
	1 to: 4 do: [:index |
		"detect: is used because a this point <currentActivities> is mix of 'data-entry' and 'data-approved' tasks so at: index failt to get the correct task type"
		currentTask := procInstance currentActivities detect: [:each | each getDefinitionName = 'data-entry'] ifNone: [self assert: false]. 
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'mario' withForm: self formInstance_data_entry on: procInstance.
		self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-3').
		self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-3').
		self assert: (currentTask getDefinitionName = 'data-entry').
		self assert: (currentTask finalizedPerformerCounter = 3).

		(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry-manager' in: 'ue') users do: [:eachUser | 
			self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size = 5]. "plus 2: take, finalization"
	].

	"Step 2 - Form [data-approved]" 
	self assert: procInstance currentActivities size equals: 4.
	1 to: 4 do: [:index |
		currentTask := procInstance currentActivities last.
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'bruno' withForm: self formInstance_data_approved on: procInstance.
		(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry-manager' in: 'ue') users do: [:eachUser | 
		self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size = 5].  "this task def has not Inform role"
		self assert: (currentTask getDefinitionName = 'data-approved').
		endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end multi role'] ifNone: [self assert: false].
		self assert: endArtifact isEndEvent.
	].
	self assert: procInstance currentActivities size equals: 0.