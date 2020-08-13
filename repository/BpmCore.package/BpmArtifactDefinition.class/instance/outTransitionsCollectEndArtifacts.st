Accessing
outTransitionsCollectEndArtifacts
	| endArtfacts |

	endArtfacts := OrderedCollection new.
	self outTransitionsDo: [:transition | transition endArtifactDo: [:artifact | endArtfacts add: artifact]].

	^endArtfacts