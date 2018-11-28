import checks
getIsolatedActivities
	"Answer a collection of <XPDLActivity> where has not IN or OUT <XPDLTransition> "
	| report |

	report := OrderedCollection new.

	self getIsolatedActivitiesNodes do: [:eachAct | | reportItem |
		reportItem := XPDLItemImportReport new type: 'Warning';
			title: 'Isolated Activity';
			description: 'Activity [', eachAct getName, '] in Process [', self getName, '] is Isolated';
			solution: 'Delete the Activity or connect the Activity to some other element in the Process definition';
			yourself.
		report add: reportItem.
		].

	^report