other
modifyCategory

	selectedCategory removeFromCacheIn: self session bpmEnvironment from: self session user username.

	selectedCategory name: (self componentValueAt: 'name').
	selectedCategory color: (self componentValueAt: 'color').

	selectedCategory addToCacheIn: self session bpmEnvironment for: self session user username.