task connectors
startArtifact: aBpmArtifactInstance
	"The receiver set the start artifact with <aBpmArtifactInstance>.
	Also the receiver is an outgoing transition of <aBpmArtifactInstance>"

	startArtifact := aBpmArtifactInstance.

	aBpmArtifactInstance addOutgoingTransition: self.