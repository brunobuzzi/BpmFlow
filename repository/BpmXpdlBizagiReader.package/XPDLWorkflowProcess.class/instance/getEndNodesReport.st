import checks
getEndNodesReport
	| report reportItem |

	self hasEndNodes ifTrue: [^#()].

	report := OrderedCollection new.
	reportItem := XPDLItemImportReport new 
		code: 116;
		type: 'Error';
		title: 'Process without End';
		description: 'Process [', self getName, '] does NOT have an End Node or End Node has NO name';
		solution: 'Create an End Nnode in the Process definition or set End Node name';
		yourself.
	report add: reportItem.

	^report