Kickstart new project
=====================

You want to use Uplift's power to add dependencies to your project? Adding *Uplift* to a new project is simple!

1. Add either *source* or *compiled DLL* in the ``Assets/Plugins/Editor/``
   directory in your project. Uplift currently depends on ``SharpCompress.dll`` and this dependency needs to be added as well in the same location.
   A unity package is available to ease the installation of both DLLs.

   After installation, *Uplift* is going to generate ``Upfile.xml`` for you in the project root [#upfile_location]_.

2. Once you've done this step you can `add your first repository <add_repository>` and start adding packages.

3. Finally, from Unity select :menuselection:`Uplift --> Refresh Upfile` then :menuselection:`Uplift --> Install Dependencies` to see all fall into place.


You might want to see also:

- `../recommendations/working_with_modules` guide, on how to work efficiently with modularized project
- `caveats-dllcode`

.. [#upfile_location] ``Upfile.xml`` is outside of ``Assets/`` directory, which means it is **not
                      visible** in Unity 3D. Please open file manually in your favorite editor.
