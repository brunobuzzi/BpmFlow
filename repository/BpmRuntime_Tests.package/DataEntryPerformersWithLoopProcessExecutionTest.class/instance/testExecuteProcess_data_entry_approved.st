test
testExecuteProcess_data_entry_approved
	| currentTask endArtifact |

	self assert: (procInstance startEventName = 'start multi role').
	"Step 1.1 - Form [data-entry]" "Performer 1"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask finalizedPerformerCounter = 0).
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_data_entry on: procInstance.

	(testRoot getFrontOfficeRoleNamed: 'data-entry-manager' in: 'ue') usersDo: [:eachUser | 
		self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size = 2]. "2: creation and take messages"

	self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-1').
	self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-1').
	self assert: (currentTask getDefinitionName = 'data-entry').
	self assert: (currentTask finalizedPerformerCounter = 1).
	"Step 1.2 - Form [data-entry]" "Performer 2"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan' withForm: self formInstance_data_entry on: procInstance.
	self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-2').
	self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-2').
	self assert: (currentTask getDefinitionName = 'data-entry').
	self assert: (currentTask finalizedPerformerCounter = 2).

	(testRoot getFrontOfficeRoleNamed: 'data-entry-manager' in: 'ue') usersDo: [:eachUser | 
		self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size = 3]. "plus 1: take messages"

	"Step 1.3 - Form [data-entry]" "Performer 3"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'mario' withForm: self formInstance_data_entry on: procInstance.
	self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-3').
	self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-3').
	self assert: (currentTask getDefinitionName = 'data-entry').
	self assert: (currentTask finalizedPerformerCounter = 3).

	(testRoot getFrontOfficeRoleNamed: 'data-entry-manager' in: 'ue') usersDo: [:eachUser | 
		self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size = 5]. "plus 2: take, finalization"

	"Step 2 - Form [data-approved]" 
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'bruno' withForm: self formInstance_data_approved on: procInstance.

	(testRoot getFrontOfficeRoleNamed: 'data-entry-manager' in: 'ue') usersDo: [:eachUser | 
		self assert: ((eachUser getSystemNotificationsInboxIn: self bpmEnvironment) selectSatisfying: [:each | each processId = procInstance processId]) size = 5].  "this task def has not Inform role"

	self assert: (currentTask getDefinitionName = 'data-approved').
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end multi role'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.