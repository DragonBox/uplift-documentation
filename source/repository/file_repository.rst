===============
File Repository
===============

A File Repository enables you to use packages that are on your local filesytem in Uplift.

How to set it up
----------------

Setting up a File Repository is fairly easy. Simply create a directory in your file system, and put
your packages in it. You need to put both your ``.unitypackage`` files which contain the actual
packages and the ``.Upset.xml`` files as well, which describe the content of the package.

.. warning:: For this to work correctly you will have to name your files the same way. If you have a file ``my_cool_package.unitypackage``, the associated Upset file must be ``my_cool_package.Upset.xml``.

And that's all. This is now a working File Repository as far as Uplift is concerned!

How to use it
-------------

Once you have set up your File Repository, you can start fetching packages from it by adding a
single line inside your ``Upfile.xml``:

  .. code-block:: xml

    <FileRepository Path="Path/To/Some/Directory" />

Where the Path can be both an absolute path or a relative path.

Advanced features
-----------------

.. _local_filerepository_team:

* **Use file repositories in a team project**:

A limitation of the file repositories is that absolute paths are machine-specific: specifiying a
path to one of your folders may not work in the project of your teammates. Nonetheless, you may want
to use Google Drive, Dropbox or such to store your packages and then fetch your packages from the
local synchronized directories, and therefore use Uplift's FileRepository accross your team. We
provide you with workarounds so that you can use them despite this limitation.

1. Declare them locally. In the ``settings.xml`` you can specify additional repositories which will be "added" to your project repositories. In there you can specify absolute paths without having to worry about team compatibility.

.. note:: 

    See also `../files/local_settings`

2. Use relative paths. Relative paths are not machine-specific and can be used without having to worry about team compatibility. You may chose to structure your project this way:

    .. code-block:: text

        - SomeFolder
            ...
            - MyProject
                MyProject_Packages
                    ...
                    SomePackage.unitypackage
                    SomePackage.Upset.xml
                    ...
                MyProject_Unity
                    Assets
                    Library
                    ProjectSettings
                    Upfile.xml
                    ...
            ... 

And then do the following in your ``Upfile.xml``:

  .. code-block:: xml

    <FileRepository Path="../MyProject_Packages/" />


.. note::

	See also `../files/upset`

.. note::

	See also `../files/upfile`