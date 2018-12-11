tasks
acceptScriptNode: aXPDLScriptNode
	| blockAnalysis | 

	blockAnalysis := BpmTaskScriptCodeAnalyzer new blockCode: aXPDLScriptNode script.
	blockAnalysis analyze.
	blockAnalysis codeWarnings do: [:eachString | self addScriptCodeWarningItem: eachString].

	self acceptActivityNode: aXPDLScriptNode.