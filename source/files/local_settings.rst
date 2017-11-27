Local settings file overview (.uplift/settings.xml)
===================================================

In your $HOME directory, Uplift uses a directory ``.uplift`` to store various things, and notably
your local settings to use accross all of your projects. As of Uplift v1.0.0beta4, there are two
main uses to your local settings file, which will be presented here.

The default location for the settings file is ``$HOME/.uplift/settings.xml``, for example:

- On OSX: ``/Users/jlacoste/.uplift/settings.xml``
- On Linux: ``/home/pkaminski/.uplift/settings.xml``
- On Windows: ``C:\Users\pniezborala\.uplift\settings.xml``

Sample ``settings.xml`` looks as follows:

	.. code-block:: xml

        <UpliftSettings>
            <Repositories>
                <!-- Some Repositories -->
            </Repositories>
            <AuthenticationMethods>
                <!-- Some authentication -->
            </AuthenticationMethods>
        </UpliftSettings>

.. _settings_local_repository:

Declare local repositories
--------------------------

If you want to declare repositories that you can use accross all of your projects on your machine 
here is the place! You can add Repositories here as you would in your ``Upfile.xml``.

.. note::

    See also :ref:`faq_add_repository`

This is especially useful with File Repositories (see `../repository/file_repository`) as it enables
you to have machine-specific repositories without having to rely on relative paths.

Such specified repositories will be used as any other Repository in your Upfile.xml.

.. _settings_authentication:

Declare authentication methods
------------------------------

If you need authentication in some of your repositories (i.e. they are private repositories), you
will have to specify your credentials, some token or something. Those are supposed to be private,
and should not be hard coded in your projects.

The ``AuthenticationMethods`` of the ``settings.xml`` allows you to do precisely this. It stores
your credentials for your repositories and uses them to access your repositories.

.. warning::

    For now, the only supported repository that could use credentials is the ``../repository/github_repository``. The easiest way to authenticate on this platform is with a token, therefore it is the only authentication method supported right now.

To add an authentication method, you can simply do:

	.. code-block:: xml

        <AuthenticationMethods>
            <RepositoryToken Repository="someUrl" Token="myToken" />
        </AuthenticationMethods>

