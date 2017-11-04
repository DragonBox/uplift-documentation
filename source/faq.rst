============================
 Frequently Asked Questions
============================

.. _faq-upfile:

Where is my ``Upfile.xml`` file?
================================

``Upfile.xml`` is located in the root of your Project.  Note, that, as
it isn't located under ``Assets/`` directory, you won't be able to see
it in Unity.

What is this ``Upfile.lock`` file?
==================================

If you install packages with Uplift you will probably notice that it generates a file called
``Upfile.lock`` at the root of your project. This file is quite important as it allows you to easily
work in a team and have as few dependency conflicts as possible. See `../files/lockfile` for more
information.


Where is my ``.Upfile.xml`` file?
=================================

Your ``.Upfile.xml`` override file is located in Home directory (that is the directory pointed to by
the *HOME* environment variable).

Why can't Uplift use out of box unity packages?
===============================================

Standard unitypackages need to be completed with an *Upset* file in order for Uplift to
work with them. Uplift needs extra information such as name, version, license, dependencies, license
to do its work. See `../files/upset` for more information about the Upset file.

.. _faq-unity-instances:

How to run multiple instances of Unity?
=======================================

We recommend using command line ``u3d``, which is awesome [#u3d]_. You can also run second instance
by running Unity once again, and then select different project to run. For this to work, however,
you need to have :menuselection:`Edit --> Preferences --> General --> Load previous project on start up` **unchecked**

Why can't I reuse code that Uplift Installed?
=============================================

See `howto/guid_fragility`

.. _faq-filesystem-linking:

How can I link file system for different projects?
==================================================

For Linux/OSX you can use symbolic links. It's easily done from console using ``ln -s TARGET SOURCE``.

For Windows, symbolic links are available as well (for NTFS filesystems), however they require admin access.
Command, from ``cmd.exe`` to create it is ``mklink /D SOURCE TARGET``.

In case, when admin access is not possible or desired, one can try to use Junction feature instead with command
``mklink /J SOURCE TARGET``.

.. _faq-folder-meta-issue:

Why are the meta files for the folders different than the original package?
===========================================================================

If you create your own package, you may realize that the meta files for the package folders are different after being imported with Uplift.
This behavior is originating from Unity itself! If you try importing a ``.unitypackage`` manually you will notice similar differences.

**Should I worry about that?**

Fortunately you shouldn't: the meta files for folders are currently mostly irrelevant and them being modified will have a minimal impact on your project.
If they become relevant at some point, Unity will probably make sure that this behavior is modified and you will not have an issue in that case!

++++++++++++++++++++++++++++++++++++++++++++++++++

.. [#u3d] ``u3d`` is a tool that we use that helps with: maintaining multiple unity version,
          automate installation and runs the proper Unity instance for your project
