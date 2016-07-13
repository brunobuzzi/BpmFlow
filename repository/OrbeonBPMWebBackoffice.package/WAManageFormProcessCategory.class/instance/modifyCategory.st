other
modifyCategory

	selectedCategory removeFromCacheFrom: self session user username.

	selectedCategory name: (self componentValueAt: 'name').
	selectedCategory color: (self componentValueAt: 'color').

	selectedCategory addToCacheIn: self session user username.