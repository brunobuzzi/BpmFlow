*bpmWebBasic
elementsToRender
	"The receiver answer an ordered collection (in z position) of all elements to render in a BPMN Canvas"

	^self parentLanes asArray, 
		transitions asArray, 
		self getTaskNodes asArray, 
		self getScriptNodes asArray, 
		self getSubProcessNodes asArray, 
		self getEventNodes asArray, 
		self getGatewayNodes asArray