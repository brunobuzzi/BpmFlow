bpm environments
getBpmEnvironments

	^self defaultEnvironmentClass cache select: [:environment | environment includesUserNamed: self username]