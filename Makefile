# Ensure 'vscode-tmgrammar-test' is installed before running these tests.

tests:
	vscode-tmgrammar-test ./test/semantic_tokens.go
snap:
	vscode-tmgrammar-snap ./test/semantic_tokens.go -u
new-snap:
	vscode-tmgrammar-snap ./test/semantic_tokens.go
stress:
	vscode-tmgrammar-test ./test/stress.go
	vscode-tmgrammar-snap ./test/stress.go -u
ready: tests snap
