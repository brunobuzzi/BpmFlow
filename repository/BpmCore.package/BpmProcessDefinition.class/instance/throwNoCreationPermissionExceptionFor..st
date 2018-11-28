instantiation
throwNoCreationPermissionExceptionFor: userName

	^NoCreationPermissionException signal: 'The user [', userName, '] has no permission to create instances of this process definition'