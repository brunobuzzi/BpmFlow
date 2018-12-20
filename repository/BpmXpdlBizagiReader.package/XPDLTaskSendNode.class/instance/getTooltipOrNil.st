other
getTooltipOrNil
	| stream |

	stream := PrintStream on: String new.
 
	stream nextPutAll: 'Application: ', self getApplicationName, String lf;
		nextPutAll: 'Process: ', self getProcessName, String lf;
		nextPutAll: 'Gateway: ', self getGatewayName, String lf;
		nextPutAll: 'Event: ', self getEventName, String lf;
		nextPutAll: 'Id: ', self getProcessIdField, String lf;
		nextPutAll: 'Ids:'.

	self getIdentificationFields do: [:each | stream nextPutAll: ' ', each].

	stream nextPutAll: String lf, 'Set:'.
	self getFieldNamesToSet do: [:each | stream nextPutAll: ' ', each].

	^stream contents