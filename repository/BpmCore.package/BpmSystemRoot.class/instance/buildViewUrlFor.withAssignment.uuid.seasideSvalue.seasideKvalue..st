orbeon
buildViewUrlFor: aBpmArtifactInstance withAssignment: aBpmTaskAssignment uuid: anUUID seasideSvalue: sValue seasideKvalue: kValue
	| formDefinition |

	formDefinition := aBpmArtifactInstance getDefinitionNameForUrl.

	^self orbeonManager orbeonIP,
			'/orbeon/fr/', 
			aBpmArtifactInstance applicationName ,
			'/',formDefinition,'/view/', 
			aBpmArtifactInstance getOrbeonFormId,
			'?token=', anUUID,
			'&s=', sValue,
			'&k=', kValue, 
			'&oop=', aBpmArtifactInstance asOop printString, 
			'&oop2=', aBpmTaskAssignment asOop printString