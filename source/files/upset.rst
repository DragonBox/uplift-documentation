Upset overview
===================

The Upset file is the main package will have to deal with if you are a package creator/maintainer.
It will complete the actual package it comes with.
A very basic ``Upset.xml`` file could look like this:

  .. code-block:: xml

	<Upset>
		<UnityVersion>5.6</UnityVersion>
		<PackageName>MyPackages.SomePackage</PackageName>
		<PackageVersion>1.0.6</PackageVersion>
		<PackageLicense>Free</PackageLicense>
	</Upset>

As illustrated in this example, there are four important sections to the Upset.

**UnityVersion**

    .. code-block:: xml

        <UnityVersion>some version</UnityVersion>

This section describe which Unity version was the package created for. When Unity changes its major version (5 to 2017 for example) API change, .NET version change and your package may or may not support older/newer versions of Unity.

**PackageName**

    .. code-block:: xml

        <PackageName>name of you package</PackageName>

This is absolutly mandatory as Uplift relies heavily on this piece of information.

**PackageVersion**

    .. code-block:: xml

        <PackageVersion>version of you package</PackageVersion>

This section defines the version of the package.
This should not be overlooked! If you follow SemVer, the package version will carry more information than the package name.

.. note::

	See also :ref:`howto-package-versioning`

**PackageLicense**

    .. code-block:: xml

        <PackageLicense>license of you package</PackageLicense>

This section describes under what license you are releasing your package.
This is quite an important piece of information as well if you release it publicly as package users will need this information to know how they can use it.
