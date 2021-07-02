fetch instances
fetchDraftsWithId: draftId

	draftsReadStream := ReadStreamPortable on: (summary getDraftsWithId: draftId)