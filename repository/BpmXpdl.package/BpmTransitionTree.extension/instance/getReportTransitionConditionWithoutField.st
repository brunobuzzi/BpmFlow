*bpmXpdl
getReportTransitionConditionWithoutField
	| report |

	report := OrderedCollection new.

	self getTransitionConditionWithoutField keysAndValuesDo: [:transition :anArray | | item |
		item := self xpdlItemReportClass new 
				code: 700;
				type: 'Warning';
				offendingXpdlObject: transition;
				isImportResumable: true;
				title: 'Possible Invalid Condition';
				description: 'Field named [', anArray first, '] is not visible for transition [', transition printData, '] check: ', anArray second;
				solution: 'Edit the Condition Block and use a visible field name for the condition';
				yourself.
		report add: item.
	].
	^report