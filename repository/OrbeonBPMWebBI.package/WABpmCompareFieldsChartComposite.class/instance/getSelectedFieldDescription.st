field collection
getSelectedFieldDescription
	| dataArray |

	dataArray := Array with: self getApplicationName 
								with: self getProcessName 
								with: (self getFieldName allButLast: 3) "remove the type of the field [n]" 
								with: self getStartDate 
								with: self getEndDate 
								with: self queryBlock.

	^BpmReportFieldDescriptor newFromArray: dataArray