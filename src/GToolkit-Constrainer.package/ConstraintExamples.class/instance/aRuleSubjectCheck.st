public
aRuleSubjectCheck
	<gtExample>
	| subject |
	subject := self aRuleSubject.
	self assert: subject ruleSubject first equals: #b.
	^ subject