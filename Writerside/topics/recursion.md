# Рекурсия

[Рекурсия](https://w.wiki/9q4Z) - это вызов функции из самой себя.

```sql
function A takes integer B returns integer
	if B < 0 then
		return B
	endif
	return A(B - 1)
endfunction

function main takes nothing returns nothing
	call A(10)
endfunction
```
