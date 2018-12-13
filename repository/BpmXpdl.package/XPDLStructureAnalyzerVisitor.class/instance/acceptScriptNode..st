xpdl tasks
acceptScriptNode: aXPDLScriptNode
	"The receiver check for:
	* Validity of the script Block"
	| blockAnalysis | 

	blockAnalysis := BpmTaskScriptCodeAnalyzer new blockCode: aXPDLScriptNode script.
	blockAnalysis analyze.
	blockAnalysis codeWarnings do: [:eachString | self addScriptCodeWarningItem: eachString].

	self acceptActivityNode: aXPDLScriptNode.