inform
removeRoleToInform: aBpmRole fromAction: actionName

	^(informTo at: actionName ifAbsent: [^self]) remove: aBpmRole ifAbsent: [nil]