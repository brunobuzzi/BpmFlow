import unsupported items
getItemsReportForElementSatisfying: aBlock title: title description: description solution: solution
	| report reportItem |

	report := OrderedCollection new.

	(activities select: aBlock) do: [:each | 
		reportItem := XPDLItemImportReport new type: 'Error';
			title: title;
			description: description;
			solution: solution;
			yourself.
		report add: reportItem.
	].

	^report