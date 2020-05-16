other
getProcessesDefinitionWithAnonymouStart
	| anonymousStart |

	anonymousStart := OrderedCollection new.

	applications do: [:each | anonymousStart addAll: each getProcessesDefinitionWithAnonymouStart].

	^anonymousStart