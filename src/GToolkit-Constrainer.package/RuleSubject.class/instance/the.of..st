basic
the: selector of: aCollection
	"comment stating purpose of message"
	associations := aCollection collect: [:each | each -> (each perform: selector asSymbol)].
	collection := aCollection