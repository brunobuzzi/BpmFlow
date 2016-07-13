link to components
buildViewUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to VIEW the Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"
	| formDefinition |

	formDefinition := aBpmArtifactInstance getDefinitionName.

	^self getOrbeonWebServerConfiguration orbeonIP,'/orbeon/fr/', aBpmArtifactInstance applicationName ,'/',formDefinition,'/view/', aBpmArtifactInstance getOrbeonFormId,'?token=', anUUID,'&s=', self session key,'&k=', seasideK, '&oop=', aBpmArtifactInstance asOop printString, '&oop2=', selectedLateralItem asOop printString