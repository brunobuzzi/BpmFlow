code generation
compile: aStream in: aClassOrMetaclass asMethodNamed: methodName category: categoryName
	| methodReference |

	isGeneratorTest ifTrue: [^self].

	aClassOrMetaclass compile: aStream contents classified: categoryName.

	(aClassOrMetaclass == newTestClass) ifTrue: [^self]. "the is already in the package 'BpmRuntime_Tests_Automatic' "

	methodReference := self packageInfo referenceForMethod: methodName asSymbol ofClass: aClassOrMetaclass.

	self packageInfo addMethod: methodReference