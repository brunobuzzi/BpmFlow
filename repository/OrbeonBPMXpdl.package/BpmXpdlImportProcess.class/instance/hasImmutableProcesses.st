other
hasImmutableProcesses

	processGenerator ifNil: [^false].

	^processGenerator hasImmutableProcesses