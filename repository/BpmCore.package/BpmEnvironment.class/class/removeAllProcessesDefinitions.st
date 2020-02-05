other
removeAllProcessesDefinitions

	^self cache do: [:each | each removeAllProcessesDefinitions]