other
getAllSubProcessNodes
	| all |

	all := OrderedCollection new.
	pools do: [:each | all addAll: each getSubProcessNodes].

^all