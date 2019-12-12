test
testEmbeddedCodeSecuritySettings
	| env |

	env := (self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env').

	"when <aBpmEnvironment> is created #low level is the default"
	env allCodeAnalyzers do: [:each | self assert: (env embeddedCodeSecurityLevelFor: each) equals: #low].
	self assert: env getCodeAnalyzerForIntermediateEvents securityLevel equals: #low.
	self assert: env getCodeAnalyzerForQueryBlocks securityLevel equals: #low.
	self assert: env getCodeAnalyzerForScripts securityLevel equals: #low.
	self assert: env getCodeAnalyzerForStartEvents securityLevel equals: #low.
	self assert: env getCodeAnalyzerForTaskLoops securityLevel equals: #low.
	self assert: env getCodeAnalyzerForTransitionConditions securityLevel equals: #low.

	env setMediumSecurityForAll.
	env allCodeAnalyzers do: [:each | self assert: (env embeddedCodeSecurityLevelFor: each) equals: #medium].
	self assert: env getCodeAnalyzerForIntermediateEvents securityLevel equals: #medium.
	self assert: env getCodeAnalyzerForQueryBlocks securityLevel equals: #medium.
	self assert: env getCodeAnalyzerForScripts securityLevel equals: #medium.
	self assert: env getCodeAnalyzerForStartEvents securityLevel equals: #medium.
	self assert: env getCodeAnalyzerForTaskLoops securityLevel equals: #medium.
	self assert: env getCodeAnalyzerForTransitionConditions securityLevel equals: #medium.