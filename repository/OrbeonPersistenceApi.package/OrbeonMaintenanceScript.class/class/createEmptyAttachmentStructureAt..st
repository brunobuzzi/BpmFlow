os file development
createEmptyAttachmentStructureAt: basePath
	"WARNING: this method is only intented for development"

	System performOnServer: 'mkdir ', basePath.
	System performOnServer: 'cd ', basePath, '; mkdir temp; mkdir drafts; mkdir instances; mkdir definitions; cd definitions/; mkdir saved; mkdir published'.