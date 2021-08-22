exceptions
throwExceptionNoSlotFor: roleName

	^NoMatrixSlotException signal: 'There is no slot/collection for role named [', roleName, ']'