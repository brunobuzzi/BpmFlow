other
addXPDLDocument: xpdlDocument namedAs: xpdlName
	"The receiver add a collection of processes contained in <xpdlDocument> "
	| newPackage |

	xpdlDocuments at: xpdlName put: xpdlDocument.
	newPackage := XPDLPackageNode newOn: self.
	newPackage name: (self getPackageNameFrom: xpdlDocument);
		xmlSegment: (self getPackageFrom: xpdlDocument);
		createParticipants;
		createXpdlComponents.

	xpdlPackages at: newPackage getName put: newPackage.