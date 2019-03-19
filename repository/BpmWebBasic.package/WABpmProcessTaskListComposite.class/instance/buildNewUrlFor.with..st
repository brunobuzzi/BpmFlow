external components
buildNewUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to NEW Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"
	| formDefinition |

	formDefinition := aBpmArtifactInstance getDefinitionName.

	^self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', 
			aBpmArtifactInstance applicationName ,'/',formDefinition, 
			'/new?token=', anUUID,
			'&s=', self session key,
			'&k=', self getSeasideKurlParameter, 
			'&oop=', aBpmArtifactInstance asOop printString, 
			'&oop2=', model asOop printString