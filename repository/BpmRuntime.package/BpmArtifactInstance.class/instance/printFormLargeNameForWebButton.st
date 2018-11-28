other
printFormLargeNameForWebButton

	^(process indexOfTransition: self) printString, '. ', self getDefinitionName capitalized.