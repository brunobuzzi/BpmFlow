message
getRecipients
	| recipients |

	recipients := to select: [:each | each isUser].

	(to select: [:each | each isRole]) do: [:eachRole | eachRole usersDo: [:user | recipients add: user]].

	^recipients asSet asSortedCollection: [:a :b | a username <= b username]