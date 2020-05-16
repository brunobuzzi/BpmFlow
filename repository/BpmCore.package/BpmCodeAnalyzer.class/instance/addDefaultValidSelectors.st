valid list
addDefaultValidSelectors

	validSelectors 
		at: 'ZnClient' put: (ZnClient selectors, ZnClient class selectors); "http calls"
		at: 'GsFile' put: (GsFile selectors, GsFile class selectors); "server file handler"
		at: 'GsSocket' put: (GsSocket selectors, GsSocket class selectors); "sockects connections"
		at: 'GsSignalingSocket' put: (GsSignalingSocket selectors, GsSignalingSocket class selectors);
		at: 'GsSecureSocket' put: (GsSecureSocket selectors, GsSecureSocket class selectors).