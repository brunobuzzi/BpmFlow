xpdl tasks
acceptScriptNode: aXPDLScriptNode
	"The receiver check for:
	* Validity of the script Block"
	| blockAnalysis | 

	blockAnalysis := bpmEnvironment getCodeAnalyzerForScripts.
	blockAnalysis blockCode: aXPDLScriptNode script.
	blockAnalysis analyze.
	blockAnalysis codeWarnings do: [:eachString | self addScriptCodeWarningItem: aXPDLScriptNode description: eachString].

	self acceptActivityNode: aXPDLScriptNode.