other
printInternationalizationType

	selectedEnvironment ifNil: [^self session bpmEnvironment printInternationalizationType].

	^selectedEnvironment printInternationalizationType