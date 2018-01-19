public
simpleConstraintCheck
	<gtExample>
	| constraint |
	constraint := self simpleConstraint.
	self assert: constraint ruleBreakerElements size equals: 1.
	^ constraint