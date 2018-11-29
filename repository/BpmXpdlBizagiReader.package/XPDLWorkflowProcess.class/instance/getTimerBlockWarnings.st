import checks
getTimerBlockWarnings
	""
	| report |

	report := OrderedCollection new.

	self getTimerNodes do: [:eachEventNode | | blockAnalysis | 
		blockAnalysis := BpmTimerCodeAnalyzer new blockCode: (eachEventNode extendedValueOf: 'activationBlock' ifAbsent: ['']).
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | | reportItem |
			reportItem := XPDLItemImportReport new 
				code: 400;
				type: 'Error';
				title: 'Timer Block Error';
				description: eachString;
				solution: 'The Timer Block must be a block with two arguments: [:lastExecutedTime :currentTime | ]';
				yourself.
			report add: reportItem.]].

	^report