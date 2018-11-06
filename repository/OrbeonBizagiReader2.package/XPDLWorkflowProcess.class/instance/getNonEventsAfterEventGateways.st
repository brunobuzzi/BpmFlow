import checks
getNonEventsAfterEventGateways
	"The receiver detect gateway events used to merge transitions (not allowed)"
	| report activitiesNames |

	report := OrderedCollection new.

	activitiesNames := Dictionary new.
	(activities select: [:each |each isGatewayNode and:[each isEventGateway]]) do: [:xpdlGateway | 
			(xpdlGateway outTransitions reject: [:eachTr | eachTr endArtifact isEventNode]) do:[:each | | reportItem |		
				reportItem := XPDLItemImportReport new type: 'Error';
					title: ('Non Event Detected [', each getName, ']');
					description: 'Non Event Artifacts not allowed after Event Gateways';
					solution: 'Remove Non Events Artifacts from all Event Gateways';
					yourself.
				report add: reportItem].
	].

	^report