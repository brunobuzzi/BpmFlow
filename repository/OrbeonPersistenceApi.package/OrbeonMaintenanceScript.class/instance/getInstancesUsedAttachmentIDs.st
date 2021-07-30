query attachments
getInstancesUsedAttachmentIDs
	"Answer a dictionary of all used attachment's ids. Where the key is <app.formName> and the value is the actual collection"
	| allAttachmentIds |

	allAttachmentIds := Dictionary new.

	root doInCache: [:eachApp | 
		eachApp definitionsRegistryKeysAndValuesDo: [:formName :registry |

			registry currentVersionsDo: [:eachDef | 
				eachDef instancesDo: [:eachInst | 
					allAttachmentIds at: (eachApp applicationName, '.', eachDef formName)
						ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
																put: (OrderedCollection withAll: eachInst getAttachmentIds)]
						ifPresent: [:collection | collection addAll: eachInst getAttachmentIds]].
			].
			registry oldVersionsDo: [:eachDef | 
				eachDef instancesDo: [:eachInst | 
					allAttachmentIds at: (eachApp applicationName, '.', eachDef formName)
						ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
																put: (OrderedCollection withAll: eachInst getAttachmentIds)]
						ifPresent: [:collection | collection addAll: eachInst getAttachmentIds]].
			].
		].
	].

	^allAttachmentIds