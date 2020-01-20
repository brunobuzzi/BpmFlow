cg setUp
create_EnvironmentAndApplicationOn: aStream

	aStream tab;
		nextPutAll: 'processExecutionSimulator := PEFBpmProcessExecutor new.';
		cr;tab;
		nextPutAll: 'environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: ', self getBpmEnvironmentName quoted, '.';
		cr;tab;
		nextPutAll: 'application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: ', self getApplicationName quoted ,'.';
		cr.