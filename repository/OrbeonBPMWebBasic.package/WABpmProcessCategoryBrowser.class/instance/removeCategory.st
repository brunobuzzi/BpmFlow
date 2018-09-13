other
removeCategory

	selectedCategory removeFromCacheFrom: self session user username.

	batchedList remove: selectedCategory.

	selectedCategory := nil.

	model := self defaultCategoryClass new.