import checks
getTaskScriptWarnings
	""
	| report |

	report := OrderedCollection new.

	self getScriptNodes do: [:eachScrpt | | blockAnalysis | 
		blockAnalysis := BpmTaskScriptCodeAnalyzer new blockCode: eachScrpt script.
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | | reportItem |
			reportItem := XPDLItemImportReport new type: 'Error';
				title: 'Task Script Error';
				description: eachString;
				solution: 'The Script must be a block with two arguments: [:process :script | ]';
				yourself.
			report add: reportItem.]].

	^report