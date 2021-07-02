other
doIt
	"This service is called when accessing Form Runner Home: ../orbeon/fr/ "
	| xmlWriter |

	xmlWriter := XMLWriter new.
	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [self getOrbeonApplicationClass getLastDefinitions do: [:eachDef | 
			self getXmlNodeForRunnerHome: eachDef with: writer]].
	].

	^xmlWriter contents