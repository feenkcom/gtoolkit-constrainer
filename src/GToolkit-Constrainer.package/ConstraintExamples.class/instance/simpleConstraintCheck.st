public
simpleConstraintCheck
	<gtExample>
	| constraint |
	constraint := self simpleConstraint.
	self assert: constraint ruleBreakerElements isEmpty.
	^ constraint