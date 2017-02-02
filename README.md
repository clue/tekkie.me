# tekkie.me

Online CV of Georgiana Gligor.

## Development Environment

Ensure grunt is properly set up. This only needs to be done once.
```bash
$ npm install -g grunt-cli
$ cd source/themes/tekkie/cv
$ npm install
```

Build the stylesheet:
```bash
$ cd source/themes/tekkie/cv
$ grunt
```

Start the development environment:
```bash
$ vendor/bin/sculpin generate --watch --server
```

## Packaging

Ensure vendor info is packed into the distribution:
```bash
$ cd source/themes/tekkie/cv
$ grunt copy
```

## External Resources

* [Bulma frontend framework](http://bulma.io/)
