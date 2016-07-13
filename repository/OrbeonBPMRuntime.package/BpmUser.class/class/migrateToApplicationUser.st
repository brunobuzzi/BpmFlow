other
migrateToApplicationUser

	self cache do: [:eachUser | 
		eachUser class migrateTo: BpmUser.
		eachUser migrate]