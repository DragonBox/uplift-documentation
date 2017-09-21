GUIDs in Unity
==============

What are Asset GUIDs?
---------------------

GUIDs are short for General Unique IDentifiers. They are associated with assets and stored in meta files.

How are they used in Unity?
---------------------------

Unity uses the guids to link objects (components, prefabs, assets) into prefabs and scenes. If you lose a GUID for an asset, some of your project configuration will be broken.

How Unity creates them?
-----------------------

If Unity needs to generate a new GUID for an asset, it will do so based on the computer on which it is running and the path to which the asset is associated. This is practical: it means that if you accidentaly lose a meta (and thus a GUID), and let Unity regenerate a default one without moving the asset in your project, it is highly possible that the same GUID will be generated. This acts as safety net.

**Note**: your should **ALWAYS** properly configure your unity projects: see `../howto/prepare_project_for_uplift`.

When are they created?
----------------------

Unity creates a GUID at asset import time, when the asset you are importing doesn't come with its meta file. Given how Unity creates the GUIDs, if you import your asset in a different directory, or in the same directory but on another machine, it will have a different GUID.

This means that if you forget to commit a meta file to your project, your colleague's Unity will generate a different meta, and thus a different GUID. This will confuse Uplift as Uplift tries to track those files for you (in the `upbring<../files/upbring>` file).

Impact on Uplift
----------------

Uplift uses GUIDs to track the assets it imports. This is primarily done to ensure that update and nuking operations are happening properly.

GUID fragility
--------------

Sometimes you will run into issues with GUIDs. See `../howto/guid-fragility`.