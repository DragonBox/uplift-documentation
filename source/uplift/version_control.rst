.. _version_control:

Uplift and version control
=========================

Uplift has been designed with the objective of being used in projects that are on version control,
and therefore we have a strong position on this subject. Our view on this is that your version
control system should only contain things that are directly concerning your project and not its
dependencies, which should only be referenced.

Here comes Unity
----------------

As you probably know, Unity requires you to have the source of your packages inside your project for
you to be available to benefit from them. The downside of that is that they have to be filtered out
from your project when you put in on version control, which can be tricky.

Filtering out installed files
-----------------------------

Most version control solutions offer a way to filter out files from a project and we have been
relying on this to be able to implement our design as we saw fit.

.. note::

    At this time, we only directly support Git as version control but other adapters could be
    implemented if need be.

For Uplift to conflict as little as possible with your version control, we tried to be as
minimalistic as possible regarding the files that we filter out, so none of your own files would
mistakenly be missing from version control. The drawback of this is that we sometimes miss some
``.meta`` files for some folders that you will have to manually filter out. This should be very
limited (our current project with ~30 dependencies had us manually ignore two files) and one-time
only.

**Git users**

For Git, we edit the ``.gitignore`` at the root of your project to be able to ignore installed
files. Note that we only edit **our** information only and **nothing that you put in it will be overwritten**.

For clarity purpose, we put a header and a footer around the lines that we write in the 
``.gitignore`` so that you know that there have been added by Uplift.

A .gitignore may look like this after installing some packages:

  .. code-block:: text

        # == UPLIFT GITIGNORE START ==
        # This section of the .gitignore has been created automatically by Uplift. Do not modify it or remove it.
        /UPackages
        /UPackages.meta
        /Assets/UPackages/MyCoolPackage~2.4.11
        /Assets/UPackages/MyCoolPackage~2.4.11.meta
        /Assets/Plugins/AnotherPluginScript.cs
        /Assets/Plugins/AnotherPluginScript.cs.meta
        /Assets/Plugins/PluginScript.cs
        /Assets/Plugins/PluginScript.cs.meta
        /Assets/UPackages/AnotherAwesomePackage~3.0.6
        /Assets/UPackages/AnotherAwesomePackage~3.0.6.meta
        # == UPLIFT GITIGNORE END ==

Ensuring package consistancy with this?
---------------------------------------

The question that you may face when using source control in such a way is "How can I guarantee that
all of my team work with the same packages if they're not on version control?". One of the features
of Uplift has been thought precisely for this so you can be absolutly certain that there will be no
issues on this side. This feature is the lockfile, which keeps track of your dependencies and what
packages have been installed by Uplift.

.. note::

    See also `../files/lockfile`

This way, every time the project is launched, Uplift will install (if necessary) your dependencies
exactly as they are described in your lockfile, ensuring that all of your team work with the exact
same packages.