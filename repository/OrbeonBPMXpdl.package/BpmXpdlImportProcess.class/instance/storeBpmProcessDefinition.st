import
storeBpmProcessDefinition

	processGenerator hasImmutableProcess ifTrue: [^self].

	processGenerator generateProcessesAndStoreOnCache.