Upfile File Overview
====================

The Upfile is maybe the most important file in your project as it describes exactly how Uplift will behave. As a package user and nothing more this will be the only file you will have to deal with.

.. note::

    As Uplift is useless when the Upfile is not present, this file will be created automatically every time your project is loaded if it is not present.

    Therefore, after adding Uplift to your project for the first time, it will create a ``Upfile.xml`` file at the root of your project. Removing this file is strongly discouraged as it will be created anew every time your project is loaded.

This is what the your Upfile may look like upon creation:

  .. code-block:: xml

    <Upfile>
        <UnityVersion>5.6.1f1</UnityVersion>
        <!-- SAMPLE REPOSITORIES BLOCK

        <Repositories>
            <FileRepository Path="Path/To/Some/File/Repository" />
        </Repositories>

        -->
        <Repositories>

        </Repositories>
        <Configuration>
            <!--
                Important note:

                We're not tracing Location settings for anything unpacked outside of Assets.
                This means, that if you change those in settings while already
                having packages/other stuff installed then you need to cleanup
                previous locations manually at your own discretion.
            -->
            <!--
                Path Flags:

                SkipPackageStructure (true|false):
                Don't create package subdirectories
                (in form of PackageName~1.0.0)
            -->
            <!--
                Repository configuration part.

                Most often, files here shouldn't be visible by your project.
                i.e. should be put out of the Assets/ path in your project.
            -->
            <!-- Path where downloaded, raw, packages are unpacked        -->
            <RepositoryPath Location="UPackages" />
            <!-- Path where documentation are unpacked                    -->
            <DocsPath Location="UPackages/Docs" />
            <!-- Path where examples are unpacked                         -->
            <ExamplesPath Location="UPackages/Examples" />
            <!--
                Project configuration part.

                Paths set here most often should be visible by your project,
                i.e.be in Assets path.
            -->
            <!-- Path where "usable" files are unpacked                   -->
            <BaseInstallPath Location="Assets/UPackages" />
            <!-- Path where media  files are unpacked                     -->
            <MediaPath Location="Assets/UPackages" />
            <!-- Path where plugin files are unpacked                     -->
            <PluginPath Location="Assets/Plugins" />
            <!-- Path where editor plugin files are unpacked              -->
            <EditorPluginPath Location="Assets/Editor/Plugins" />
            <!-- Path where gizmos are unpacked                           -->
            <GizmoPath Location="Assets/Gizmos" />
        </Configuration>
        <Dependencies>

        </Dependencies>
        <!-- SAMPLE DEPENDENCIES BLOCK

        <Dependencies>
            <Package Name="SomePackage" Repository="Optional.Repository" Version="Optional.Version.Spec" />
            <Package Name="PackageB" />
        </Dependencies>

        -->
    </Upfile>

As described in this sample file the Upfile has four sections that you will want to look at.


**UnityVersion**

    .. code-block:: xml

        <UnityVersion>some version</UnityVersion>

This section describe which Unity version was the Upfile created for.


**Repositories**

    .. code-block:: xml

        <Repositories>
            <!-- Your repositories go here -->
        </Repositories>

This section is where you describe the repositories where Uplift will fetch the packages from. This is probably the first logical step that you will want to take when integrating Uplift into your project.

.. note::
    
    See also :ref:`repository-supported`


**Configuration**

    .. code-block:: xml

        <Configuration>
            <!-- Your configuration go here -->
        </Configuration>

This section will let you specify how Uplift should import your dependencies, more precisely where it should put the different parts of a package in your project. For example, if you wanted to put the documentation of the packages outside of ``Assets`` and into a folder called ``Documentation`` you could do something like that:

    .. code-block:: xml

        <DocsPath Location="Documentation" />

.. note::

    See also **TODO** Configuration types


**Dependencies**

    .. code-block:: xml

        <Dependencies>
            <!-- Your dependencies go here -->
        </Dependencies>

This is where you describe what are the dependencies of your project. Every time you want to add a dependency to a package you can add a ``Package`` node to this section. For example, if I want to add a dependency on the version ``2.1.3`` of a package called ``MyPackages.MyLogger``, I would add:

    .. code-block:: xml

        <Package Name="MyPackages.MyLogger" Version="2.1.3" />

.. note::

    See also **TODO** Version requirements
