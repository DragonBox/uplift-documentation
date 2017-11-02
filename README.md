# Uplift documentation

This repository is the documentation for [Uplift](FIXME://link).

The documentation is available [here](FIXME://link).

---

## How to generate this documentation?

This documentation has been written with [Sphinx](https://pypi.python.org/pypi/Sphinx), a Python documentation generator.

### Installing Python and pip

The first thing that you need is [Python](https://www.python.org/) and [pip](https://pypi.python.org/pypi/pip/), its recommended tool for installing packages.

* __On MacOS and Linux:__

```shell
sudo easy_install pip
```

* __On Windows:__

Download the [python installer](https://www.python.org/downloads/) and run it. It will install both Python and pip.

### Installing Sphinx

You just need to run:

```shell
pip install sphinx==1.6.3
```

### Generating the documentation

From the root of the project, simply run:

```shell
make html
```

It will generate the documentation in the HTML format. to generate it for another target, you can run `make` which will prompt the available targets.