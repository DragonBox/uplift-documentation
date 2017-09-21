=======================
 Documentation prompts
=======================

(Things, that are not documented, but they should be)

 Updating Uplift binary
========================

You need to restart Unity, otherwise it won't work

Requirement of keeping .meta file
=================================

They need to be kept due to GUIDs. We also recommend keeping .meta for
directories as well to preserve consistency.

.meta file handling
===================

GUIDs
-----

When they are created
~~~~~~~~~~~~~~~~~~~~~

How they are created
~~~~~~~~~~~~~~~~~~~~

Based on path and content Different across different computers (i.e. not
recreatable)

How they are handled
~~~~~~~~~~~~~~~~~~~~

Not changed when moving

Impact on Uplift and overall workflow
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Dealing with GUID fragility
---------------------------

Source controlling .meta Future: Possible tool for tracking GUID changes
(for example, when replacing assets)

Requirement for using GUIDs
---------------------------

Location of the global overrides
================================

%HOME%/.Upfile.xml

Package development: Upset.xml and Upfile.xml
=============================================

How to deal with scenario, where I'm developing a module, but at the
same time I do have dependencies that I want to take care of.

Nuking (and why it's Uninstall)
===============================

Premise of nuking:

#. We uninstall only files we have installed
#. We don't leave directories behind

Usage of slash (/) and backslash (\\) in XML files
==============================================================

Package development: Working "live" on the package
==================================================

This means, that at the same time we're working on the module and the
"game" project that includes it.

Right now we don't support (but we plan to!).

Solution is as follows:

-  Isolate package you want to have in separate Unity project (Module
   Project)
-  Link, using system features, Module Project to a Game Project
-  Run 2 instances of Unity, one on Game and second on Module
-  Upon changes in Module Project, Game Project should receive changes
   immedietly

Questions
---------

#. How to run multiple instances?
#. What are the options for linking across platforms?

[NOTSOLVED] Proposed packaging solution
=======================================

Main idea here, is that it would be the best to propose full chain for
packaging.

Automatic Upfile creation
=========================

How Update works
================

Don't move Examples - copy instead
==================================

If Example after importing is moved, then it's going to be treated as
integral part of the package. Then if used as a base for implementation
it WILL be overwritten by updating the package.

Thus files shouldn't be never modified directly even after moving.

Updating to the newest version - XML migration
==============================================

It is possible, that when the schema changes the XML can not be read
anymore, due to incompatibility. If that happens, the best course of
action is to copy the Upfile.xml to a safe location and modify new
template.

Upbring.xml conflicts during the merge
======================================

If this happens it means you're using Uplift wrong
