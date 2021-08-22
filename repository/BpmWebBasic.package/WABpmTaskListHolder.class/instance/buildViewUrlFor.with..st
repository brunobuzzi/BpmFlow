external components
buildViewUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to VIEW the Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"

	^self session systemRoot buildViewUrlFor: aBpmArtifactInstance withAssignment: model uuid: anUUID seasideSvalue: self session key seasideKvalue: self getSeasideKurlParameter