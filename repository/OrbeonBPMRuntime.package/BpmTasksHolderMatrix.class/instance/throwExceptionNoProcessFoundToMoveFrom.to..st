exceptions
throwExceptionNoProcessFoundToMoveFrom: currentRoleName to: nextRoleName

	^NoProcessToMatrixMoveException signal: 'There is no process to move from [', currentRoleName, '] to [', nextRoleName, ']'