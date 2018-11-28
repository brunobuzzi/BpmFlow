message
getRecipients
	| recipients |

	recipients := to select: [:each | each isUser].

	(to select: [:each | each isRole]) do: [:eachRole | recipients addAll: eachRole users].

	^recipients asSet asSortedCollection: [:a :b | a username <= b username]