=================
Github Repository
=================

A Github Repository enables you to store your packages that Uplift will use in a regular Github
repository.

How to set it up
----------------

Our Github Repository relies on the release system of Github. The most basic way to set up a
repository for Uplift packages is to create a release tagged ``packages``, and then upload your
packages in it. You need to upload both your ``.unitypackage`` files which contain the actual packages
and the ``.Upset.xml`` files as well, which describe the content of the package.

.. warning:: For this to work correctly you will have to name your files the same way. If you upload a file ``my_cool_package.unitypackage``, the associated Upset file must be ``my_cool_package.Upset.xml``.

And that's all. This is now a working Github Repository as far as Uplift is concerned!

How to use it
-------------

Once you have set up your Github Repository, you can start fetching packages from it by adding a
single line inside your ``Upfile.xml``:

  .. code-block:: xml

    <GithubRepository Url="https://api.github.com/repos/<REPOSITORY_OWNER>/<REPOSITORY_NAME>/releases" />

Where you will have to replace ``<REPOSITORY_OWNER>`` and ``<REPOSITORY_NAME>`` by the correct
values that you want to use.

Advanced features
-----------------

* **Multiple packages release in the same repository**:

If you want to have several releases from which you can fetch packages in the same repository you
can do it by adding the appropriate tags to the GithubRepository. For example, if you want to have
a release for the packages that come from outside of your company, and one for your own packages,
you can setup a release tagged ``external`` and another tagged ``internal``, and do the following in
your ``Upfile.xml``:

  .. code-block:: xml

    <GithubRepository Url="https://api.github.com/repos/<REPOSITORY_OWNER>/<REPOSITORY_NAME>/releases" >
        <TagList>
            <Tag>internal</Tag>
            <Tag>external</Tag>
        </TagList>
    </GithubRepository>

And both your external and internal packages will be fetched from the same repository.

* **Automatic package deployment**

The `Github API <https://developer.github.com/v3/>`_ is very well documented and fairly easy to use,
and there are lots of clients available on the Web if you want to use one. You can then easily setup
automatic package release by calling the release API.

.. note::

	See also `../files/upset`

.. note::

	See also `../files/upfile`