# Cuneiform book cuneifier (in Foma)

This is a converter from transliterated syllables from the pp. 102-103 of the book [**cuneiform**](https://www.britishmuseumshoponline.org/cuneiform.html) (ISBN: 978-0-7141-1188-9), implemented in [Foma](https://github.com/mhulden/foma). It is licensed under [Apache 2.0 License](LICENSE).

# How to use

Install Foma (in Debian/Ubuntu: package `foma-bin`). Create `cuneifier.foma` file by typing `make` in the repository directory. Then type either

```
make test
```

or 

```
flookup -x -i cuneifier.foma
```

to test the cuneifier.

# References

## Thrax implementation

https://github.com/wincentbalin/cuneiform-book-cuneifier

## Foma documentation

https://github.com/mhulden/foma/tree/master/foma/docs
