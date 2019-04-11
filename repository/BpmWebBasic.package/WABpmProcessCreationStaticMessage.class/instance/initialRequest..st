other
initialRequest: aRequest 

	super initialRequest: aRequest.

	msgTitle := aRequest at: 'title' ifAbsent: [^''].
	msgText := aRequest at: 'text' ifAbsent: [^''].
	msgData := aRequest at: 'data' ifAbsent: [^''].