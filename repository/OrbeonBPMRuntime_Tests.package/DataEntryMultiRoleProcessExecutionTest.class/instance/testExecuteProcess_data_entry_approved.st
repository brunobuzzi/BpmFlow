test
testExecuteProcess_data_entry_approved
	| currentTask endArtifact |

	self assert: (procInstance startEvent getDefinitionName = 'start multi role').
	"Step 1.1 - Form [data-entry]" "Performer 1"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask finalizedPerformerCounter = 0).
	self processTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_data_entry.
	self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-1').
	self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-1').
	self assert: (currentTask getDefinitionName = 'data-entry').
	self assert: (currentTask finalizedPerformerCounter = 1).
	"Step 1.2 - Form [data-entry]" "Performer 2"
	currentTask := procInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'juan' withForm: self formInstance_data_entry.
	self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-2').
	self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-2').
	self assert: (currentTask getDefinitionName = 'data-entry').
	self assert: (currentTask finalizedPerformerCounter = 2).
	"Step 1.3 - Form [data-entry]" "Performer 3"
	currentTask := procInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'mario' withForm: self formInstance_data_entry.
	self assert: ((currentTask getCurrentRoleIfNone: [self assert: false]) name = 'data-entry-3').
	self assert: ((currentTask rolesWhoWorked last) name = 'data-entry-3').
	self assert: (currentTask getDefinitionName = 'data-entry').
	self assert: (currentTask finalizedPerformerCounter = 3).
	"Step 2 - Form [data-approved]" 
	currentTask := procInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'bruno' withForm: self formInstance_data_approved.
	self assert: (currentTask getDefinitionName = 'data-approved').
	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'end multi role') and: [endArtifact isEndEvent]).