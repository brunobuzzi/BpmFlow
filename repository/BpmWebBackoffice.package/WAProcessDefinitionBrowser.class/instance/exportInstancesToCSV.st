process
exportInstancesToCSV
	| stream |

	selectedLateralItem ifNil: [^self].

	stream := PrintStream on: String new.
	selectedLateralItem exportFieldsOfAllProcessesTo: stream fieldSeparator: ';' valueSeparator: '|'.

	self requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'txt'; 
                                        fileName: (selectedLateralItem processName, '.csv'); 
                                        yourself)].