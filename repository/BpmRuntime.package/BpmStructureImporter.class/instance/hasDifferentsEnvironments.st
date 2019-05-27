other
hasDifferentsEnvironments
	"The receiver answer whether or not the receiver CSV includes strucuture for different environments"

	^(configurations collect: [:each | each environment]) asSet size > 1