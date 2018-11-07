import unsupported items
getItemsReportForSymbolElement: booleanSymbolElement title: aString
	| report reportItem |

	report := OrderedCollection new.

	(activities select: [:each | each perform: booleanSymbolElement]) do: [:each | 
		reportItem := XPDLItemImportReport new type: 'Error';
			title: 'Unsupported Element';
			description: aString;
			solution: 'Change the Task Type';
			yourself.
		report add: reportItem.
	].

	^report