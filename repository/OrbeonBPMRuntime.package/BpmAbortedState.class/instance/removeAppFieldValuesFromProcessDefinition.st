execution
removeAppFieldValuesFromProcessDefinition
	"The receiver remove all <AppFieldValue> contained in the <BpmProcessInstance> <process> from the global collection for field values"
	| processDefinition |

	processDefinition := process definition.

	process getAllArtifacts do: [:eachArtifact |
		eachArtifact fieldValuesDo: [:fieldValueHolder |
			fieldValueHolder currentValues do: [:appFieldValue | 
				processDefinition removeFrom: fieldValueHolder formName fieldValue: appFieldValue.
			].
		].
	].