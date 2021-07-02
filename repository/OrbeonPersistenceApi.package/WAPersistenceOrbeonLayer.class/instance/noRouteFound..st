delete this
noRouteFound: aRequestContext
	| logEntry |

	logEntry := ObjectLogEntry error: 'REST Service NOT found' object: aRequestContext request printString.
	logEntry addToLog.
	aRequestContext responseGenerator
		notFound;
		respond