eval (python -m virtualfish compat_aliases)
if type gvm 2> /dev/null
	gvm 1.14.3 | source
end

ulimit -n 5000
