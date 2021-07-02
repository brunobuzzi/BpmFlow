other
doIt
	"This method is called by Orbeon when a user click 'Delete' in a Form Instance Draft in the Form Runner page"
	| application instance |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^NoApplicationException signal: 'No application named [', self getApplicationName, '] was found'].
	instance := application getAnyDraftWithId: id of: self getFormName.

	^instance definition removeDraft: instance