e56ca37257d0 data was obtained via:

```
git clone https://github.com/eth-sc-comp/benchmarks
cd benchmarks
git checkout e56ca37257d08b23703f1ef32cffb6141d1a180c
nix-develop
./bench.py --tools=hevm-z3 -t 90
```

`e8a6f2485170` data was obtained via:

```
git clone https://github.com/eth-sc-comp/benchmarks
cd benchmarks
git checkout e8a6f2485170
nix-develop
./bench.py --tools=hevm-z3 -t 10 --dumpsmt
```


`e8a6f2485170-timeout50` data was obtained via:

```
git clone https://github.com/eth-sc-comp/benchmarks
cd benchmarks
git checkout e8a6f2485170
nix-develop
./bench.py --tools=hevm-z3 -t 50 --dumpsmt
```

NOTE: some formulas may be incorrect due to timeouts. These can be filtered
(and will be filtered in the future) via `cvc5 with --parse-only --strict-parsing`
