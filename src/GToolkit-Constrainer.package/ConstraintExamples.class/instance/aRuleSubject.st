public
aRuleSubject
	<gtExample>
	^ RuleSubject new 
	the: #value 
	of: { #a -> #b . #a -> #c . #b -> #c} 
	