api
no: selector of: aGroup should: aBlock
	"no #providerTypes of x classes should"
	subject := aGroup.
	relationBlock := [ :each | each perform: selector asSymbol ].
	conditionBlock := aBlock.
	violations := self execute