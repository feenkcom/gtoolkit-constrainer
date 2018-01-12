api
all: selector of: aGroup must: aBlock
	| executionResult |
	self.
	subject := aGroup.
	self.
	relationBlock := [ :each | each perform: selector asSymbol ].
	self.
	conditionBlock := aBlock.
	executionResult := self execute.
	violations := relatedItems \ executionResult.