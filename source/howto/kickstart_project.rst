=======================
 Kickstart new project
=======================

Adding *Uplift* to a new project is simple.

First thing you want to do it so to add either *source* or *compiled DLL* in the ``Assets/``
directory in your project.  Once this happened, *Uplift* is going to generate ``Upfile.xml`` for you
in the project root [#upfile_location]_.

Once you've done this step you can `add your first repository <add_repository>` and start adding packages.

Finally, from Unity 3D select :menuitem:`Uplift --> Install Dependencies` to see all fall in place.


You might want to see also:

- `../recommendations/working_with_modules` guide, on how to work with modularized project
  efficiently

.. [#upfile_location] ``Upfile.xml`` is outside of ``Assets/`` directory, which means it is **not
                      visible** in Unity 3D. Please open file manually in your favorite editor.
