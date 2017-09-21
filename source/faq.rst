============================
 Frequently Asked Questions
============================

.. _faq-upfile:

Where is my ``Upfile.xml`` file?
================================

``Upfile.xml`` is located in the root of your Project.  Note, that, as
it isn't located under ``Assets/`` directory, you won't be able to see
it in Unity.


Where is my ``.Upfile.xml`` file?
=================================

Your ``.Upfile.xml`` override file is located in Home directory (that is the directory pointed to by the *HOME* environment variable).

Why can't Uplift use out of box unity packages?
===============================================

Standard unitypackages need to be repackaged together with an *Upset* file in order for Uplift to work with them. Uplift needs extra information such as name, version, license, dependencies, license to do its work. See `../files/upset` for more information about the Upset file.
