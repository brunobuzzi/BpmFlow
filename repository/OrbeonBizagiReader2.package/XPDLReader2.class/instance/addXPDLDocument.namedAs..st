other
addXPDLDocument: xpdlDocument namedAs: xpdlPathFileName
	"The receiver add a collection of processes contained in <xpdlDocument> "
	| newPackage |

	xpdlDocuments at: xpdlPathFileName put: xpdlDocument.
	newPackage := XPDLPackageNode newOn: self fileNamed: (FileDirectory localNameFor: xpdlPathFileName).
	newPackage name: (self getPackageNameFrom: xpdlDocument);
		xmlSegment: (self getPackageFrom: xpdlDocument);
		createParticipants;
		createXpdlComponents.

	xpdlPackages at: newPackage getName put: newPackage.