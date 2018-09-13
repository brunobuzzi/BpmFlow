other
removeCategory

	selectedCategory removeFromCacheIn: self session bpmEnvironment from: self session user username.

	batchedList remove: selectedCategory.

	selectedCategory := nil.

	model := self defaultCategoryClass new.