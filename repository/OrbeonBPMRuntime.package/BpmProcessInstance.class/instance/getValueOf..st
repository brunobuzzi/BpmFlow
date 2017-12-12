execution
getValueOf: fieldName
	"Answer the first value of a field named <fieldName> in the receiver's collection of <executedActivities>.
	The search is performed only in activities that have anOrbeonFormInstance <hasForm>."

	"This method is used inside Bizagi conditions when the name of the field is a valid Smalltalk message.
	[:proc | proc name isEmpty] --> this will execute the valid method #name.
	If a field name of a Form is a valid Smalltalk message then use this method (otherwise the #doesNotUnderstand: mechanism won't be executed and the valid Smalltalk method will be called causing a error in the condition):
	For #name field name must use:
	[:proc | (proc getValueOf: 'name') isEmpty]
	Generic formula:
	[:proc | (proc getValueOf: 'aValidSmalltalkMessage') someComparision]"

	^self getValueOfProcessField: fieldName