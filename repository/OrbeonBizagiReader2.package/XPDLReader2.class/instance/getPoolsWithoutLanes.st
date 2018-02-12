warnings
getPoolsWithoutLanes
	"Answer a collection of <XPDLPools> that has NO Lanes (XPDLLanes)"
	| report |

	report := OrderedCollection new.

	self getAllPools do: [:eachPool |
		eachPool lanes isEmpty ifTrue: [ | reportItem |
			reportItem := XPDLItemImportReport new type: 'Error';
				title: 'Pools must have Lanes';
				description: 'Each Pool must have at least one Lane';
				solution: 'Edit the Process Definition and add Lanes to Pools';
				yourself.
			report add: reportItem.
		].
	].
	^report