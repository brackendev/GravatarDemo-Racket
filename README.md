_My Gravatar demo projects are for users to get acquainted with languages and platforms with something more than a "Hello World" example. Versions are available for [Clojure](https://github.com/brackendev/GravatarDemo-Clojure), [F#](https://github.com/brackendev/GravatarDemo-FSharp), [Newspeak](https://github.com/brackendev/GravatarDemo-Newspeak), [Pharo](https://github.com/brackendev/GravatarDemo-Pharo), [Racket](https://github.com/brackendev/GravatarDemo-Racket), and [Squeak](https://github.com/brackendev/GravatarDemo-Squeak)._

- - -

GravatarDemo-Racket
===================

**[Racket](https://racket-lang.org/) implementation to interact with the [Gravatar API](https://en.gravatar.com/site/implement/).**

* [DrRacket 7.6](https://download.racket-lang.org/) reference platform.
* Tests included.

## Installation

1. Download this project.
2. Install [Racket](https://download.racket-lang.org/) and run DrRacket.
3. Install the _http_ package via the menubar: _File -> Install Package..._
4. Open _racket.rkt_.
5. Load the file in the REPL via the menubar: _Racket -> Run_

## Example Usage

Evaluate in the REPL:

```racket
;; Retrieve the image for the email address
(image-request "email@example.com")

;; Retrieve the image for the email address (2048x2048 px)
(image-request "email@example.com" 2048)
```

```racket
;; Retrieve the profile for the email address
(profile-request "email@example.com")
```

To run the tests, execute in a shell:

```bash
raco test gravatar-test.rkt
```

## Author

[brackendev](https://www.github.com/brackendev)

## License

GravatarDemo-Racket is released under the MIT license. See the LICENSE file for more info.

- - -

## Useful Links

* [/r/Racket](https://www.reddit.com/r/Racket/) [Reddit]
* [@racketlang](https://twitter.com/racketlang) [Twitter]
* [Getting Started](https://docs.racket-lang.org/getting-started/index.html) [racket-lang.org]
* [Racket](https://racket-lang.org/) [racket-lang.org]
* [Racket News](https://racket-news.com/)
