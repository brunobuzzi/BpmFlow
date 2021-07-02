query attachments
getInstanceDefinitionUsedAttachmentIDs
	"Answer a dictionary of all used attachment's ids. Where the key is <app.formName> and the value is the actual collection"
	| allAttachmentIds |

	allAttachmentIds := Dictionary new.

	self getOrbeonApplicationClass doInCache: [:eachApp | 
		eachApp definitionsRegistryKeysAndValuesDo: [:formName :registry |

			registry savedDefinitionsDo: [:eachInstDef | 
				allAttachmentIds at: (eachInstDef getApplicationName, '.', eachInstDef formName) 
					ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachInstDef formName) 
															put: (OrderedCollection withAll: eachInstDef attachmentsAsOrderedCollection)]
					ifPresent: [:collection | collection addAll: eachInstDef attachmentsAsOrderedCollection].
			].
		].
	].

	^allAttachmentIds