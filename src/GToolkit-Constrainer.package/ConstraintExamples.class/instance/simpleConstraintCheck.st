public
simpleConstraintCheck
	<gtExample>
	| constraint |
	constraint := self simpleConstraint.
	self assert: constraint constraintBreakerElements size equals: 1.
	^ constraint