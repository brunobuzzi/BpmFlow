other
getFormDefinitions
	| definitions |

	definitions := Set new.

	self selectedProcessDefinition do: [:each | definitions addAll: each getTaskNames].

	^#(''), definitions asArray

 "(self selectedApplication getLastDefinitions collect: [:each | each formName]) asArray"