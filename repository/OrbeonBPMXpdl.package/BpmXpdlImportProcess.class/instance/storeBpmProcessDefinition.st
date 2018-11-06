import
storeBpmProcessDefinition

	processGenerator hasImmutableProcesses ifTrue: [^self].

	processGenerator generateProcessesAndStoreOnCache.