other
printArtifacts
	| stream  |

	stream := WriteStream on: String new.

	self getAllArtifacts do: [:each | 
		each printOn: stream.
		stream nextPutAll: '{', each printRoleNames,'}'.
		stream nextPut: Character lf].

	^stream contents