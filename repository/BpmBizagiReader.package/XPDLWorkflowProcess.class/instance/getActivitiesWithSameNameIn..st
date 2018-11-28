import checks
getActivitiesWithSameNameIn: aDictionary
	"Answer a collection of <XPDLActivity> with the same name.
	Activities can NOT have the same name."
	| report |

	report := OrderedCollection new.

	(activities reject: [:each | each isStartOrEndActivity]) do: [:each | 
		aDictionary at: each getName 
			ifPresent: [:value | aDictionary at: each getName put: value + 1] 
			ifAbsent: [aDictionary at: each getName put: 1].
	(aDictionary select: [:eachValue | eachValue > 1]) keysAndValuesDo: [:key :value | | reportItem |
		reportItem := XPDLItemImportReport new type: 'Error';
			title: 'Activities with same Name';
			description: 'Activity [', key, '] in Process [', self getName, '] is repeated';
			solution: 'Delete or rename one of the activities';
			yourself.
		report add: reportItem].
	].
	^report