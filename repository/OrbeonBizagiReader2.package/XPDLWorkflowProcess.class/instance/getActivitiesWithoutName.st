import checks
getActivitiesWithoutName
	"Answer a collection of <XPDLActivity> without name.
	Activities MUST have a name."
	| report |

	report := OrderedCollection new.

	(activities select: [:each | each getName isNil or:[each getName isEmpty]]) do: [:eachAct | | reportItem |
		reportItem := XPDLItemImportReport new type: 'Error';
			title: 'Activities without Name';
			description: 'Activity type [', eachAct getName, '] in Process [', self getName, '] without name';
			solution: 'Add a name to the Activity';
			yourself.
		report add: reportItem].

	^report