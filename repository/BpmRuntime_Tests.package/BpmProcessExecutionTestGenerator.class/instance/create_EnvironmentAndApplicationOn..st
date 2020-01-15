cg setUp
create_EnvironmentAndApplicationOn: aStream

	aStream tab;
		nextPutAll: 'environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: ', self getBpmEnvironmentName quoted, '.';
		cr.