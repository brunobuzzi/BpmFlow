other
updateSelectedApplications
	| appToUpdate |

	^#deprecated.
"
	appToUpdate := ((selectedApplications collect: [:each | self getApplicationManagerClass applicationNamed: each ifNone: [nil]])
							select: [:each | each notNil]).

	appToUpdate do: [:eachApp | OrbeonHandler default updateApplicationButNotDataOf: eachApp].

	^self
"