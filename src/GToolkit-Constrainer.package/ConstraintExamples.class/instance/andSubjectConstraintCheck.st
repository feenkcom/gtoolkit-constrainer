public
andSubjectConstraintCheck
	<gtExample>
	| constraint |
	constraint := self andSubjectConstraint.
	self assert: constraint constraintMatchers size equals: 1.
	^ constraint