external components
buildEditUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to EDIT the Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"

	^self session systemRoot buildEditUrlFor: aBpmArtifactInstance withAssignment: model uuid: anUUID seasideSvalue: self session key seasideKvalue: self getSeasideKurlParameter