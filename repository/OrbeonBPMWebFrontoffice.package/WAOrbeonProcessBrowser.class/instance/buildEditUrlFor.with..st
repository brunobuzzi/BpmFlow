link to components
buildEditUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to EDIT the Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"
	| formDefinition |

	formDefinition := aBpmArtifactInstance getDefinitionName.

	^self getOrbeonWebServerConfiguration orbeonIP,'/orbeon/fr/', aBpmArtifactInstance applicationName ,'/',formDefinition,'/edit/', aBpmArtifactInstance getOrbeonFormId,'?token=', anUUID,'&s=', self session key,'&k=', seasideK, '&oop=', aBpmArtifactInstance asOop printString, '&oop2=', selectedLateralItem asOop printString