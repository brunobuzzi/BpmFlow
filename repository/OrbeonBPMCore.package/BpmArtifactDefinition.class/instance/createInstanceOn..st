instantiation
createInstanceOn: aBpmProcessInstance

	^(self instanceClass definition: self)
		process: aBpmProcessInstance;
		yourself