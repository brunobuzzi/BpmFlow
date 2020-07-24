other
canUser: aBpmUser createProcess: aBpmProcessDefinition

	self isStartEvent ifFalse: [^false].

	^(aBpmUser rolesIn: aBpmProcessDefinition bpmEnvironment) anySatisfy: [:eachRole | roles includesIdentical: eachRole]