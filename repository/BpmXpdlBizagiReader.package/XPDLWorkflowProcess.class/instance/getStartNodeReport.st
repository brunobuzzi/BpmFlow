import checks
getStartNodeReport
	| report reportItem |

	self hasStartNode ifTrue: [^#()].

	report := OrderedCollection new.
	reportItem := self xpdlItemReportClass new 
		code: 112;
		type: 'Error';
		title: 'Process without Start';
		description: 'Process [', self getName, '] does NOT have a Start Node';
		solution: 'Create a Start node in the Process definition';
		yourself.
	report add: reportItem.

	^report