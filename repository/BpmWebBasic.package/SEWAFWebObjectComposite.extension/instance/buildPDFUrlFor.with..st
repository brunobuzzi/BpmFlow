*bpmwebbasic
buildPDFUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to PDF the Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"
	| formDefinition |

	formDefinition := aBpmArtifactInstance getDefinitionName.

	^self getOrbeonWebServerConfiguration orbeonIP,'/orbeon/fr/', 
			aBpmArtifactInstance applicationName ,'/',formDefinition,'/pdf/', aBpmArtifactInstance getOrbeonFormId,
			'?token=', anUUID,
			'&s=', self session key,
			'&k=', self getSeasideKurlParameter, 
			'&oop=', aBpmArtifactInstance asOop printString, 
			'&oop2=', aBpmArtifactInstance getAssignment asOop printString