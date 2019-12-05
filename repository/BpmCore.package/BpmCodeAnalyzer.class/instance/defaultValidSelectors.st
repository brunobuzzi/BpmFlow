valid list
defaultValidSelectors

	validClasses 
		at: ZnClient put: ZnClient selectors; "http calls"
		at: GsFile put: GsFile selectors; "server file handler"
		at: GsFile class put: GsFile class selectors;
		at: GsSocket put: GsSocket selectors; "sockects connections"
		at: GsSocket class put: GsSocket class selectors;
		at: GsSignalingSocket put: GsSignalingSocket selectors;
		at: GsSignalingSocket class put: GsSignalingSocket class selectors;
		at: GsSecureSocket put: GsSecureSocket selectors;
		at: GsSecureSocket class put: GsSecureSocket class selectors.