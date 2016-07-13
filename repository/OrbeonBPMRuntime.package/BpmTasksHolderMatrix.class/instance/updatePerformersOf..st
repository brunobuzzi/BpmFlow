task handling
updatePerformersOf: aBpmTaskInstance
	| performer role |

	performer := aBpmTaskInstance getCurrentPerformerIfNone: [^nil]. "if <rolesWhoWorked> is empty --> get the first"
	role := aBpmTaskInstance getRoleForPerformer: performer.
	self createAssingmentForRole: role inTask: aBpmTaskInstance.