api
all: selector of: aGroup must: aBlock
	| executionResult |
	subject := aGroup.
	relationBlock := [ :each | each perform: selector asSymbol ].
	conditionBlock := aBlock.
	executionResult := self execute.
	violations := relatedItems \ executionResult