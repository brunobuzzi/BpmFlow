other
doItAndSetVersion: aBlock
	"This service is called when a click is performed on the Orbeon Form Summary page (or go directly to edit/view page of a form). The Summary then open the Form Instance in it's corresponding form definition.
	This service is used in combination of #getXmlOfFormInstanceWithId:form:app: to <get> the actual data of the form"
	| application orbeonDefinition instance |

	application := systemRoot applicationNamed: self getApplicationName ifNone: [^self signalNoFormException].

	instance := systemRoot getAnyInstanceWith: id formName: self getFormName in: self getApplicationName 
							ifNone: [systemRoot getAnyDraftWith: id formName: self getFormName in: self getApplicationName 
												ifNone: [^self signalNoFormException]].

	orbeonDefinition := instance definition.

	aBlock value: orbeonDefinition version printString.

"	^self decodeFromUTF8: orbeonDefinition xmlString"

	^orbeonDefinition xmlString