Upbring overview
=====================

The Upbring file, which you can find under ``UPackages/`` is the memory of Uplift. For each file
installed in your project, there will be a reference to it inside the Upbring.xml.

.. warning::
	
	The Upbring is a file that is critical to the correct behaviour of Uplift. It is handled
	automatically and you should not mess with it. Any modification that you make will compromise
	Uplift's ability to act correctly.

This is what the your Upbring may look like after installing two packages:

  .. code-block:: xml

		<?xml version="1.0" encoding="utf-8"?>
		<Upbring xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
			<InstalledPackage Name="MyCoolPackage" Version="1.0.7">
				<Install xsi:type="InstallSpecPath" Type="Root" Path="UPackages/MyCoolPackage~1.0.7" />
				<Install xsi:type="InstallSpecGUID" Type="Base" Guid="8224315dc16a34a45923e7c0caab396b" />
				<Install xsi:type="InstallSpecGUID" Type="Base" Guid="ae6f65ea11f3972458317a9cd2632618" />
				<Install xsi:type="InstallSpecGUID" Type="Base" Guid="fa060bfa4026c534795d82e0a30a7b38" />
			</InstalledPackage>
			<InstalledPackage Name="AnotherAwesomePackage" Version="4.8.0">
				<Install xsi:type="InstallSpecPath" Type="Root" Path="UPackages/AnotherAwesomePackage~4.8.0" />
				<Install xsi:type="InstallSpecPath" Type="Base" Path="Assets/UPackages/AnotherAwesomePackage~4.8.0/Script.AnotherAwesomePackage.cs" />
				<Install xsi:type="InstallSpecPath" Type="Base" Path="Assets/UPackages/AnotherAwesomePackage~4.8.0/Upset.xml" />
			</InstalledPackage>
		</Upbring>

As you can see, this is quite straight-forward. Each installed package has a node
``InstalledPackage`` with a children node for every file contained in it. The only thing that could
be problematic is the ``xsi:type="InstallSpecXXX"``, which is only the way we track the file.

.. _file_tracking_path:

**InstallSpecPath**

The easiest way to understand how we track installed files is to look at the case when we do it by
path. In the previous example, you can see lines such as :

  .. code-block:: xml

		<Install xsi:type="InstallSpecPath" Type="Base" Path="Assets/UPackages/AnotherAwesomePackage~4.8.0/Script.AnotherAwesomePackage.cs" />

This means that there is a file at ``Assets/UPackages/AnotherAwesomePackage~4.8.0/Script.AnotherAwesomePackage.cs``
that we currently track.

.. warning::
	
	This is the reason why we recommend that you do not move any file installed by Uplift. The path
	would not be updated and we would simply lose track of said file.

.. note::

	See also :ref:`files-general`

**InstallSpecGUID**

Whenever possible, Uplift will try to track an asset by its guid rather than by its path. There are
a few conditions that need to be met so this service can be offered:

* The file must be installed under ``Assets/`` (not directly, it can be ``Assets/Folder/...``)
* There must be a .meta file inside alongside the file in the original package

.. note::

	See also `../unity/guids`

What is the ``Type`` attribute about?
-------------------------------------

This attribute only tells which kind of file has been installed.

.. note::

	See also :ref:`configuration_type`