# IxCommands

## Usage

### Conditional

- SkipWhile
```bash
$ echo "a a b c a b" | perl6 skip-while.p6 -F=" " '$it eq "a"'
b c a b
```
- TakeWhile
```bash
$ echo "12 21 3" | perl6 take-while.p6 -F=" " '$it.contains("2")'
12 21
```

### Filter

- Distinct
```bash
$ echo "a a b b" | perl6 distinct.p6 -F=" "
a b
```
- Filter
```bash
$ echo "a ab ba" | perl6 filter.p6 -F=" " '$it.contains("b")'
ab ba
```
- First
```bash
$ echo "a b c" | perl6 first.p6 -F=" "
a
```
- Last
```bash
$ echo "a b c" | perl6 last.p6 -F=" "
c
```
- Skip
```bash
$ echo "a b c" | perl6 skip.p6 -F=" " 1
c
```
- Take
```bash
$ echo "a b c" | perl6 take.p6 -F=" " 1
a b
```

### Math

- Average
```bash
$ echo "1 2 3" | perl6 average.p6 -F=" "
2
```
- Max
```bash
$ echo "1 2 3" | perl6 max.p6 -F=" "
3
```
- Min
```bash
$ echo "1 2 3" | perl6 min.p6 -F=" "
1
```
- Sum
```bash
$ echo "1 2 3" | perl6 sum.p6 -F=" "
6
```

### Transform

- Map
```bash
$ echo "a b c" | perl6 map.p6 -F=" " '$it ~ "b"'
ab bb cb
```
- Scan
```bash
$ echo "a b c" | perl6 scan.p6 -F=" " '$x ~ $y'
a ab abc
```

## Test

```bash
$ prove --exec perl6 -r t
```
