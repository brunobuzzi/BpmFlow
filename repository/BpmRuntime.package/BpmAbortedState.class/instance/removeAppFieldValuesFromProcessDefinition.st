execution
removeAppFieldValuesFromProcessDefinition
	"The receiver remove all <AppFieldValue> contained in the <BpmProcessInstance> <process> from the global collection for field values"
	| processDefinition |

	processDefinition := process definition.

	process getAllArtifacts do: [:eachArtifact |
		eachArtifact hasForm ifTrue: [ "maybe the task was created but the form has not been created by any user"
			eachArtifact externalObject fieldValuesDo: [:fieldValueHolder |
				fieldValueHolder currentValues do: [:appFieldValue | 
					processDefinition removeFrom: fieldValueHolder formName fieldValue: appFieldValue.
				].
			].
		].
	].