field collection
getSelectedFieldDescription

	^Array with: self getApplicationName 
				with: self getProcessName 
				with: self getFieldName 
				with: self getStartDate 
				with: self getEndDate 
				with: self queryBlock