public
andSubjectCheck
	<gtExample>
	| andSubject |
	andSubject := self andSubject.
	self assert: andSubject ruleAssociations size equals: 1.
	^ andSubject 