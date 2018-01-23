basic
the: aBlock of: aCollection
	"comment stating purpose of message"
	associations := aCollection collect: [:each | each -> (aBlock value: each)].