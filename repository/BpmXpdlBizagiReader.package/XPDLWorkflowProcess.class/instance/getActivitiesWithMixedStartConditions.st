import checks
getActivitiesWithMixedStartConditions
	"Answer a collection of <XPDLActivity> where some <XPDLTransition> has <startCondition> and others NOT.
	By general rule if an out Transition has a <startCondition> then all others out Transitions should have too.
	This is a only a Warning because could be a case where the previous does not apply"
	| report |

	report := OrderedCollection new.

	(activities select: [:eachAct | eachAct hasMixedStartConditions]) do: [:eachAct | | reportItem |
		reportItem := XPDLItemImportReport new type: 'Warning';
			code: 100;
			title: 'Mixed Start Conditions';
			description: 'Activity [', eachAct getName, '] in Process [', self getName, '] has Mixed Start Conditions (maybe not an error)';
			solution: 'If it is applicable: Add a condition to all transitions or remove all conditions from all transitions';
			yourself.
		report add: reportItem.
		].

	^report