Uplift packages
===============

I.e. preparing Uplift packages.

Sometimes, you might want to pack existing ``.unitypackage`` package, so that it can be easily included in your project.

**Note**: Uplift only currently supports packages packed with Unity 5 or later.

Preparing an Uplift package is a 2 steps procedure:

1. Create an ``Upset.xml`` file

2. Put **properly packaged** UPackage in the Repository.

As you noticed, the key phrase here is **properly packaged**, as every single :doc:`Repository <repository/types>` has their own type.
For the sake of simplicty we're going to assume `../repository/file_repository`.

-------

Creating ``Upset.xml`` is easy. As a minimal example:

.. code-block:: xml

   <?xml version="1.0" encoding="utf-8"?>
   <Upset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
     <UnityVersion>2017.1f3</UnityVersion>
     <PackageName>CoolPackage</PackageName>
     <PackageVersion>2.3.5</PackageVersion>
     <PackageLicense>MIT</PackageLicense>
   </Upset>


UnityVersion
  This is minimal version of Unity this package is going to work on.
  In case of doubt just use the version you're preparing for.

PackageName
  Name of your choosing. If you're preparing an external package it's best to use the same name as original package.

PackageVersion
  Version of the package. If you're preparing an external package it's best to use the same version as original package. Uplift uses version numbers to decide for upgrades, so it's best to increment them when necessary.

PackageLicense
  This is very important, as it allows you to see the
  licenses used in taken packages. If your ``.unitypackage`` had been
  taken from *Unity Asset Store* then most like it is
  *UnityStoreLicense*.

``Upset.xml`` can define much more, namely, you can split your package by semantic type. Please see `Upset <../files/upset>` for more information.

----

For the `../repository/file_repository` we expect the file structure to be such as
that, for every single ``.unitypackage`` we have .xml file with the
same basename, for example:

::

    SomeCool.unitypackage
    SomeCool.xml
    VeryImportant~1.0.unitypackage
    VeryImportant~1.0.xml
    ...

So once you have your ``.unitypackage`` package and ``Upset.xml`` file
ready, just put them in your `../repository/file_repository` (which, actually is only
a directory on your filesystem) and you're good to go.


Recommendations
---------------

.. _testing_uplifted_packages:

It is good to test your package before making it available to others. You might want to use a `local repository<add_local_repository>` to test it before placing it in a `shared repository<add_repository>`.


Another good practice is to follow the tips on how to `maintain your module<maintain_modules>`.
