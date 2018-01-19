public
aRuleSubjectCheck
	<gtExample>
	| subject |
	subject := self aRuleSubject.
	self assert: subject ruleAssociations first equals: ((#a -> #b) -> #b).
	^ subject