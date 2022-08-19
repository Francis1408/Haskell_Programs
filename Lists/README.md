Compare two lists given as input and returns an specific output:

- *Sublista:* The first list is contained on the second.
- *Superlista:* The second list is contained on the first.
- *Idênticas:* Both list are contained on themselves.
- *Inválida:* None of the options above.

#### Example:

```
> cmpListas [4,5] [1,2,3,4,5]
Sublista
> cmpListas [1,2,3,4,5] [2,3,4]
Superlista
> cmpListas [1,2,3] [1,2,3]
Identica
> cmpListas [1,2,4] [1,2,3,4,5]
Invalida

```