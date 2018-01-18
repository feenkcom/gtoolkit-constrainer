basic
the: selector of: aCollection
	"comment stating purpose of message"
	subjectCollection := aCollection flatCollect: [:each | each perform: selector asSymbol].
	collection := aCollection