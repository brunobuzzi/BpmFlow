other
doIt
	"This service is called when a click is performed on the Orbeon Form Builder Summary page.
	The Summary then should open the Orbeon Builder with the code of the clicked form."
	| definition |

	definition := self getOrbeonApplicationClass getSavedDefinitionWithId: id ifNone: [^NoOrbeonFormException signal: ('No Form Definition with id:' , id)].

	"^self decodeFromUTF8: definition xmlString"

	"^definition xmlString encodeAsUTF8IntoString"

	^definition xmlString