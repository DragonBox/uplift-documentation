Local Upfile overview (.Upfile.xml)
===================================

``.Upfile.xml`` (note the dot!) is a global file in your system, which you can use to add custom
repositories. It's especially handy, when you want to use `../repository/file_repository` that you synchronize
over external service (See: `../howto/add_local_repository`).

Sample looks as follows::

	.. code-block:: xml

        <UpfileOverride>
            <Repositories>
                <FileRepository Path="Path/To/Another/Repository"/>
            </Repositories>
        </UpfileOverride>


``Repositories`` node are merged with the ``Repositories`` node in the *Project*'s ``Upfile.xml``.

The default location is ``$HOME/.Upfile.xml``, for example:

- On OSX ``/Users/jlacoste/.Upfile.xml``
- On Linux under ``/home/pkaminski/.Upfile.xml``
- On Windows under ``C:\Users\pniezborala\.Upfile.xml``


.. note::

   Calling ``.Upfile.xml`` either *Your Local Upfile* or *Local Upfile* is bit misleading because:

   - XML Schema Definitions are different from the ones used in ``Upfile.xml``
   - ``.Upfile.xml`` repositories are **merged** with the ones exist in project's ``Upfile.xml``
     (there is no way to override anything)
