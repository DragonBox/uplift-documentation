Lockfile overview (Upfile.lock)
===============================

The lockfile, called ``Upfile.lock`` is a file generated automatically at the root of your project
whenever you install dependencies.

Its main role is to keep track of the state of the dependencies of your project at any time in your
project life cycle. It does so in a way that is readable by a human being so you can easily
understand what is going on.

    .. note::
    
    The lockfile is generated right after the dependency tree is solved, and just before the actual
    installation of the packages.
    

A standard lockfile could look like this:

    .. code-block:: text
        :emphasize-lines: 1,6

        # UPFILE DEPENDENCIES
        MyLoggerPackage (1.*)
        MyBluetoothPackage (2.1.7+)
        MySaveSystemPackage (1.2.6!)

        # SOLVED DEPENDENCIES
        MyLoggerPackage (1.4.2)
            MySerializationPackage (1.0.0+)
        MyBluetoothPackage (2.1.9)
        MySaveSystemPackage (1.2.6)
            MySerializationPackage (1.8.7+)
        MySerializationPackage (1.9.3)

As you can see in this example, there are two sections in the Upfile.lock:

**UPFILE DEPENDENCIES**

This section keeps track of the direct dependencies of your project, ie the one that you define in
your ``Upfile.xml``. The name of the dependency and the version requirement.

**SOLVED DEPENDENCIES**

This section describe how Uplift performed the dependency resolution and what was its result. For
each package of your dependency it will record, which version of the package it chose, and what are
the dependencies of this package. It will do this for your direct dependencies as well as their
transitive dependencies, ie the dependencies of your dependencies.

See also `upfile`
See also `version_requirements`

A word on the lockfile
----------------------

The format for the lockfile is *heavily* inspired by `Bundler <https://bundler.io/>`_. The advantage
of such a decision is to make dependency resolution and dependency usage overall as simple as
possible.

**Install replication**

A lockfile allows you to make sure that you work in a stable environment: you can solve your
dependencies once and then work with them even if some newer version are released, making using
external dependencies even simpler and more secure.

Furthermore, if you setup some continuous integration on your project, you want to be exactly sure
of what your CI server is going to install so you can be absolutly sure of what your build will have
installed. A lockfile is ideal for this as you can generate it when working on your project and ask
your CI server to install only the dependencies as described in the lockfile. You can do so by
calling ``Uplift.Common.Cli.InstallLockfile()`` for instance.

**Readability**

The lockfile records the state of your dependencies in a readable fashion so it can be understood
without any kind of issue. It allows for easy troubleshooting your project and fully grasp what is
installed and why.

**Clean source-control**

If you update a dependency, the way that the lockfile is structured will provide a really easily
understandable difference. For instance, in Git:

    .. code-block:: text
        :emphasize-lines: 9,10

        diff --git a/Upfile.lock b/Upfile.lock
        index af7a2aa..66a11dc 100644
        --- a/Upfile.lock
        +++ b/Upfile.lock
        @@ -8,7 +8,7 @@ MyBluetoothPackage (2.1.7+)
        MySaveSystemPackage (1.2.6!)

        # SOLVED DEPENDENCIES
        -MyLoggerPackage (1.4.2)
        +MyLoggerPackage (1.4.3)