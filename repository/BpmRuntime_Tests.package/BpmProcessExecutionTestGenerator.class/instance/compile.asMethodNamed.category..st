code generation
compile: aStream asMethodNamed: methodName category: categoryName

	newMethodsSource at: methodName put: aStream contents.

	isGeneratorTest ifFalse: [newTestClass compile: aStream contents classified: categoryName].