![Zippy Logo](https://raw.githubusercontent.com/zippy-lang/media/main/logo-128x128.png)

---

A modern programming language from the future.

Project status: Actively developed. Not ready for production use or HackerNews.
Currently, Zippy is an early prototype and hence has many hacky implementations.

<a href="https://zippy.indiealistic.studio">Playground</a>

## Installation
#### Compile it yourself
1. Download and install [Haxe](https://haxe.org/).
2. Clone this repository.
3. Compile the project by executing `haxe build.hxml`.

#### Download release binaries
Release binaries can be found on the [releases tab](https://github.com/zippy-lang/zippy/releases). \
Binaries of the latest unreleased version can be found on the [actions tab](https://github.com/zippy-lang/zippy/actions).

## Usage

1. Create a file called `input.zip`
2. Run it using `./Zippy`

## Example
```
let add = func(a, b) {
    let result = a + b;
    print(result);
};

add(1, 2);

mut i = 0;
while i < 10 {
    print(
        if (i > 5) {
            "Zip";
        } else {
            i;
        }
    );

    i = i + 1;
}

func(msg) {
    print("Self-invoking function says " . msg);
}("Axolotls are cool!");
```

## Contributing

1. Fork it (<https://github.com/zippy-lang/zippy/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Thank you to all the people who already contributed to Zip!

<a href="https://github.com/zippy-lang/zippy/graphs/contributors">
  <img src="https://contributors-img.firebaseapp.com/image?repo=zippy-lang/zippy" />
</a>

## License

Apache-2.0
