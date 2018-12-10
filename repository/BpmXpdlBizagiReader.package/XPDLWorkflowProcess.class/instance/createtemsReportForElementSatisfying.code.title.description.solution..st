import query
createtemsReportForElementSatisfying: aBlock code: code title: title description: description solution: solution
	| report reportItem |

	report := OrderedCollection new.

	(activities select: aBlock) do: [:each | 
		reportItem := self xpdlItemReportClass new 
			code: code;
			type: 'Error';
			title: title;
			description: description;
			solution: solution;
			yourself.
		report add: reportItem.
	].

	^report