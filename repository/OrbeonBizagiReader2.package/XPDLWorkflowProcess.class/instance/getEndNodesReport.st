import checks
getEndNodesReport
	| report reportItem |

	self hasEndNodes ifTrue: [^#()].

	report := OrderedCollection new.
	reportItem := XPDLItemImportReport new type: 'Error';
		title: 'Process without End';
		description: 'Process [', self getName, '] does NOT have End Node';
		solution: 'Create an end node in the Process definition';
		yourself.
	report add: reportItem.

	^report