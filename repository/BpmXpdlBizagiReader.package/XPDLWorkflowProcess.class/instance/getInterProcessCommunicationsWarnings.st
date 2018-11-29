import checks
getInterProcessCommunicationsWarnings
	""
	| report |

	report := OrderedCollection new.

	self getTaskSendNodes do: [:taskSendtNode |
		report addAll: (self checkInterProcessCommunicationToSender: taskSendtNode)].

	^report