*bpmruntime-as yet unclassified
validateUser: username password: password

	^BpmUser cache anySatisfy: [:each | each username = username and:[each password = (GRPlatform current secureHashFor: password)]]