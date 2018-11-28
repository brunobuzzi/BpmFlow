import checks
getActivitiesWithSameName
	"Answer a collection of <XPDLActivity> with the same name.
	Activities can NOT have the same name."

	^self getActivitiesWithSameNameIn: Dictionary new