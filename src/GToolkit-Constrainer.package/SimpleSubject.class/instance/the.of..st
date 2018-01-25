basic
the: aBlock of: aCollection
	associations := aCollection collect: [:each | BiElement from:each to:(aBlock value: each)].