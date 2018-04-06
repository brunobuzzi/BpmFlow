other
linkToOrbeonFormFor: aBpmArtifactInstance
	"The receiver gives the control to Orbeon Java application."
	| uuid |

	uuid  := BpmOrbeonTempTokenRegistry default 
					createEntryToOrbeonFor: aBpmArtifactInstance 
					for: self session user.

"	self requestContext request headers
		at: 'Bpmflow-User' put: 'admin';
		at: 'Bpmflow-Group' put: 'admin';
		at: 'Bpmflow-Roles' put: 'admin'.

	self requestContext response
		headerAt: 'bmflow-user' put: 'admin';
		headerAt: 'bmflow-group' put: 'admin';
		headerAt: 'bpmflow-roles' put: 'admin'."

	^self requestContext redirectTo: (self getUrlFor: aBpmArtifactInstance with: uuid).