service-post
sendMessageTo: processName processId: processId in: appName atGateway: gatewayName forEvent: eventName 
	"The receiver send a message to process named <processName> in application named <appName> at gateway event named <gatewayName> for event named <eventName>.
	The process id or values to identify the target process are in the body and the values to set are in the body"
	| apiOperation |
	<post>
	<path: '/sendmessage?processname={1}&proc-id={2}&app={3}&gateway={4}&event={5}'>
	<produces: 'application/xml'>

	"if proc-id=0 --> search for the <BpmProcessInstance> in the XML query in the body"
	apiOperation := BpmSendMessageToProcessApi newFor: self withXml: self requestContext request rawBody. 
	apiOperation appName: appName;
		processName: processName;
		gatewayName: gatewayName;
		eventName: eventName;
		id: processId.

	^apiOperation doIt