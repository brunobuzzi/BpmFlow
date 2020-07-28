warnings
getPoolsWithoutLanes
	"Answer a collection of <XPDLPools> that has NO Lanes (XPDLLanes)"
	| report |

	report := OrderedCollection new.

	self getAllPools do: [:eachPool |
		eachPool lanesIsEmpty ifTrue: [ | reportItem |
			reportItem := self xpdlItemReportClass new 
				code: 54;
				type: 'Error';
				offendingXpdlObject: eachPool;
				title: 'Pools wihout Lanes';
				description: 'Each Pool must have at least one Lane';
				solution: 'Edit the Process Definition and add Lanes to Pools';
				yourself.
			report add: reportItem.
		].
	].
	^report