other
doIt
	| application instance |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^NoApplicationException signal: 'No application named [', self getApplicationName, '] was found'].

	instance := application getAnyInstanceWithId: id of: self getFormName.

	instance removeFromMainCollection