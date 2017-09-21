General Information About Files
===============================

.. _files-general:

Paths In Uplift Are Cross-Platform
===========================================

Uplift stores paths in Unix format for cross-platformability reasons. 

Uplift paths are most often relative:

**Upfile.xml**

   .. code-block:: xml

    <EditorPluginPath Location="Assets/Editor/Plugins" />

**Upbring.xml**

   .. code-block:: xml

	<Install xsi:type="InstallSpecPath" Type="Root" Path="UPackages/wwtk.persistence~1.0.0" />

**.Upfile.xml**

    .. code-block:: xml

	<FileRepository Path="/Users/lacostej/UPackages/" />

In some places, you will need an absolute path. In this case you might need to make the path like this:

**.Upfile.xml**

    .. code-block:: xml

	<FileRepository Path="/Users/lacostej/UPackages/" />

	<FileRepository Path="C:/Users/Paul/Documents/Work/WWTK/WWTK/Development/Software/UPackages/WWTK" />


