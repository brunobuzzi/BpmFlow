process
renderTaskDefinition: artifactDefinition on: html
	| previousFields |

	previousFields := artifactDefinition extendedValueOf: 'previousFields' ifAbsent: [nil].
	html div 
		with:[
			previousFields ifNotNil: [html output: '{', previousFields,'}']].
			html div with: [
				html strong with: [html output: artifactDefinition name].
				html output: ' (', artifactDefinition printRoleNames, ')'].
			html div with:[html output: '[', artifactDefinition printSummaryFields,']'].