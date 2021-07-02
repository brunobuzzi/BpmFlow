fetch instances
fetchDraftsInstancesFrom: draftsStart to: draftsEnd

	draftsReadStream := ReadStreamPortable on: (summary getAllDrafts copyFrom: draftsStart to: draftsEnd)