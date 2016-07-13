service-get
getOrbeonSecurityToken: uuidToken
	"The security GET service take an uuid as a parameter <uuidToken> and:
	1- Check via lookup if it has associated XML. 
	2- If it so then answer the XML string associate with the token. 
	3- If not then answer a XML string with the same structure as 2 but with empty nodes values."
	<get>
    <path: '/securityToken?token={1}'> 
	<produces: 'text/xml'>
	| serviceRegistry serviceValue |

	serviceRegistry := OrbeonTempServiceRegistry default. 
	"get the XML associate with the token <uuidToken>"
	serviceValue := serviceRegistry getSecureValueForToken: uuidToken. 
	"if the token <uuidToken> is not registered then answer an empty XML with the same structure"
	serviceValue ifNil: [^self answerXMLErrorWith: uuidToken]. 
	"remove the toke <uuidToken> for security reasons -can not be used again-"
	serviceRegistry unregister: uuidToken. 
	
  ^serviceValue "the XML associated with token <uuidToken> with the values of the Orbeon form"