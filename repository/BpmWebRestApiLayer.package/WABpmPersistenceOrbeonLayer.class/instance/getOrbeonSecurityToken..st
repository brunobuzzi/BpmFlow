service-get
getOrbeonSecurityToken: uuidToken 
	"The security GET service take an uuid as a parameter <uuidToken> and:
	1- Check via lookup if it has associated XML. 
	2- If it so then answer the XML string associate with the token. 
	3- If not then answer a XML string with the same structure as 2 but with empty nodes values."

	<get>
	<path: '/securityToken?token={1}'>
	<produces: 'text/xml'>
	| apiOperation |
	apiOperation := BpmGetXmlDataFromTokenApi newOn: self systemRoot.
	apiOperation token: uuidToken.
	^apiOperation doIt