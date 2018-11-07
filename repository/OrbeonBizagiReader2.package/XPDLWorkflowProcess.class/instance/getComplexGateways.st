import unsupported items
getComplexGateways
	| report reportItem |

	report := OrderedCollection new.

	(activities select: [:each | each isComplexGateway]) do: [:each | 
		reportItem := XPDLItemImportReport new type: 'Error';
			title: 'Unsupported Element';
			description: 'Complex Gateways are NOT supported';
			solution: 'Change the Gateway Type';
			yourself.
		report add: reportItem.
	].

	^report