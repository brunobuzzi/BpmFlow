import checks
getGatewaysWithoutConditions
	"Answer a collection of <XPDLActivity> with the same name.
	Activities can NOT have the same name."
	| report activitiesNames |

	report := OrderedCollection new.

	activitiesNames := Dictionary new.
	(activities select: [:each |each isGatewayNode and: [each outConditionsAreMandatory]]) do: [:xpdlGateway | 
			(xpdlGateway outTransitions select: [:eachTr | eachTr startCondition isNil or:[eachTr startCondition isEmpty]]) do: [:eachTr | | reportItem |		
				reportItem := XPDLItemImportReport new type: 'Error';
					title: 'Gateway without condition';
					description: 'Gateway [', xpdlGateway getName, '] in Process [', self getName, '] has no condition for out going transition [', eachTr getName, ']';
					solution: 'Define all conditions for all out going transitions in this Gateway';
					yourself.
				report add: reportItem].
	].

	^report