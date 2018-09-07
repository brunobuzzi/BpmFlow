other
newFromSystemIn: aBpmEnviroment

	^super new initialize
		bpmEnvironment: aBpmEnviroment;
		category: BpmInternalSystemMessage new;
		yourself