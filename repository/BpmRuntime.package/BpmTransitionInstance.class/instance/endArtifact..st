task connectors
endArtifact: aBpmArtifactInstance
	"The receiver set the end artifact with <aBpmArtifactInstance>.
	Also the receiver is an incomming transition of <aBpmArtifactInstance>"

	endArtifact := aBpmArtifactInstance.

	aBpmArtifactInstance addIncommingTransition: self.