query attachments
getDefinitionUsedAttachmentIDs
	"Answer a dictionary of all used attachment's ids. Where the key is <app.formName> and the value is the actual collection"
	| allAttachmentIds |

	allAttachmentIds := Dictionary new.

	root doInCache: [:eachApp | 
		eachApp definitionsRegistryKeysAndValuesDo: [:formName :registry |

			registry currentVersionsDo: [:eachDef | 
				allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
					ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
															put: eachDef attachmentsAsOrderedCollection]
					ifPresent: [:collection | collection addAll: eachDef attachmentsAsOrderedCollection].
			].
			registry oldVersionsDo: [:eachDef | 
				allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
					ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
															put: eachDef attachmentsAsOrderedCollection]
					ifPresent: [:collection | collection addAll: eachDef attachmentsAsOrderedCollection].
			].
		].
	].

	^allAttachmentIds