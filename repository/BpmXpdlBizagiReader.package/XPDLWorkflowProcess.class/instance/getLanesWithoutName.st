import checks
getLanesWithoutName
	""
	| report |

	report := OrderedCollection new.

	(lanes select: [:each | each getName isNil or: [each getName isEmpty]]) do: [:eachLane | | reportItem |
		reportItem := self xpdlItemReportClass new 
			code: 50;
			type: 'Warning';
			title: 'Lane without name';
			description: 'The Lane [', eachLane getName, '] in Process [', self getName, '] has no name';
			solution: 'Edit the Process definition and set the name of the lane';
			yourself.
		report add: reportItem.
		].

	^report