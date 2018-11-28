*bpmwebbackoffice-as yet unclassified
registerWithUser: user password: password

	(WAAdmin register: self asApplicationAt: 'config' user: user password: password) addLibrary: WAToolFiles