external components
buildNewUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to NEW Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"

	^self session systemRoot buildNewUrlFor: aBpmArtifactInstance withAssignment: model uuid: anUUID seasideSvalue: self session key seasideKvalue: self getSeasideKurlParameter