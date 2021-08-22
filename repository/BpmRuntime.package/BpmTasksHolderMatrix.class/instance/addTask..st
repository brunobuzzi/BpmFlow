task handling
addTask: aBpmTaskInstance
	"The receiver create an asignment based on task <aBpmTaskInstance> to be listed as available for the users"
	| newAssignments |

	newAssignments := 
			aBpmTaskInstance hasPerformers "size > 1- In order to use <performers> there must be at least two <performers>"
			ifFalse: [ "the roles of the task are used to create assignments"
				aBpmTaskInstance rolesCollect: [:eachRole | self createAssingmentForRole: eachRole inTask: aBpmTaskInstance.
				]
			]
			ifTrue: ["the performers of the task are used to create assignments"
				self updatePerformersOf: aBpmTaskInstance.
			].

	^newAssignments select: [:each | each notNil] "#updatePerformersOf: can answer nil"