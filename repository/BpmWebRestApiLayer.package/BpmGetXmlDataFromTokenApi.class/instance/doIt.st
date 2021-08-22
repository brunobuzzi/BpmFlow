other
doIt
	"The security GET service take an uuid as a parameter <token> and:
	1- Check via lookup if it has associated XML. 
	2- If it so then answer the XML string associate with the token. 
	3- If not then answer a XML string with the same structure as 2 but with empty nodes values."
	| serviceValue |

	serviceValue := systemRoot getSecureValueForToken: token. 
	"if the token <token> is not registered then answer an empty XML with the same structure"
	serviceValue ifNil: [^self answerXMLErrorWith: token]. 
	
  ^serviceValue "the XML associated with token <token> with the values of the Orbeon form"