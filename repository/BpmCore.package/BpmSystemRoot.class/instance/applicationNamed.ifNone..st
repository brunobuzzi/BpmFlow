applications
applicationNamed: applicationName ifNone: aBlock
	| environment |

	environment := environments detect: [:each  | each includesApplicationNamed: applicationName] ifNone: [^aBlock value]. 

	^environment applicationNamed: applicationName ifNone: [aBlock value]