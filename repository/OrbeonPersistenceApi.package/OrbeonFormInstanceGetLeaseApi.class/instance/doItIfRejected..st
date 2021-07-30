other
doItIfRejected: aBlock
	| application instance |

	application := systemRoot applicationNamed: self getApplicationName ifNone: [^NoApplicationException signal: 'No application named [', self getApplicationName, '] was found'].

	instance := application getAnyInstanceWithId: id of: self getFormName.

	(instance canLeaseTo: self getUsernameFromXmlString) 
	ifFalse: [^aBlock value: instance value: (self getXmlLockUnlockRejectionFor: instance)].

	instance grantLeaseForSeconds: timeout to: self getUsernameFromXmlString.