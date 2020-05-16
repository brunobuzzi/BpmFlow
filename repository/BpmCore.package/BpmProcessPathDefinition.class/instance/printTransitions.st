other
printTransitions
	| stream  |

	stream := WriteStream on: String new.

	transitions do: [:each | 
		each printOn: stream.
		stream nextPut: Character lf].

	^stream contents