How Uplift Works
================

Uplift introduces 2 concepts:

* a concept of **package**, in effect a set of files, probably in a ``.unitypackage``, completed with meta information to describe the package contents and its dependencies (e.g. package name, version, etc)

* a concept of **repository**, a place where to store your packages and expose them to Uplift

.. Note:: we call the task of completing a package to *'uplift'* it :)

Your Roles
----------

When using Uplift, you will be having 2 main roles:

* a *packager* role, where you complete the external or internal unity packages and place them into Uplift repositories.

* a *user* role, where you use Uplift to install those packages into your project.

.. Note:: As time go, your main role will be *user*. A package needs to be packaged only once and the task of packaging the packages will become more and more automated thanks to tooling.