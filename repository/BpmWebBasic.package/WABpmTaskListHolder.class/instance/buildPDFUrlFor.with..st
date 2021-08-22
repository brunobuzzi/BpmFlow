external components
buildPDFUrlFor: aBpmArtifactInstance with: anUUID
	"Answer a string Link to PDF the Orbeon Form associated with the transition <aBpmArtifactInstance> using the security token <anUUID>"

	^self session systemRoot buildPDFUrlFor: aBpmArtifactInstance withAssignment: model uuid: anUUID seasideSvalue: self session key seasideKvalue: self getSeasideKurlParameter