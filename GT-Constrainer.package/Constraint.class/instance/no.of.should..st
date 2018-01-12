api
no: selector of: aGroup should: aBlock
	"no #providerTypes of x classes should"

	self.
	subject := aGroup.
	self.
	relationBlock := [ :each | each perform: selector asSymbol ].
	self.
	conditionBlock := aBlock.
	violations := self execute