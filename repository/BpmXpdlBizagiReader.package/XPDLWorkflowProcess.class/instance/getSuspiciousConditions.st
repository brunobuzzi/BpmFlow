import checks
getSuspiciousConditions
	"Answer a collection with wrong or suspicious code inside gateways or transitions definitions.
	Conditions in gateways or transitions MUST answer a boolean and MUST send messages only to the argument of the Block.
	[:form | form amount >1000] is OK, but [:form | SomeClass doSomethigSuspicious] must be banned."
	| report |

	report := OrderedCollection new.

	(transitions select: [:eachTr | eachTr startCondition notNil]) do: [:eachTr | | blockAnalysis | 
		blockAnalysis := BpmProcessConditionCodeAnalyzer for: eachTr startCondition.
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | | reportItem |
			reportItem := XPDLItemImportReport new 
				code: 404;
				type: 'Error';
				title: 'Suspicious Code';
				description: eachString;
				solution: 'Make the Condition send messages only to the process. If it''s a forbidden field name then use #getValueOf: instead.';
				yourself.
			report add: reportItem.]].

	^report