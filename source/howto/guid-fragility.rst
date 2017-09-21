Finding and Resolving GUID Issues
=================================

For various reasons, you might end up having GUID issues in your project while using Uplift. Let's see some of these scenarios.

Why GUIDs are fragile?
----------------------

If you don't track them, or lose them, Unity will most probably generate a different ID for the same dependency.

How to detect and correct issues?
---------------------------------

If something unexpected happens with GUIDs, Uplift will detect issues and propose solutions.

For example before importing dependencies, it checks for potential GUID duplicates and stops the import process right away. Note while Uplfit does its best to not install a dependency with conflicting GUIDs, the erro currently can happen in the middle of installing multiple dependencies. In this case, follow Uplift instructions (remove the offending duplicates), before running the Install process again.

When trying to nuke a package, it tries to delete all the file it contained. If for some reason you already have deleted the file, or changed its GUID, Uplift will complain and log in the console. You might have to do some manual cleanup. As always, you shouldn't modify files that Uplift has imported `paradigm_shift`.

Not sure what to do?
--------------------

Currently, the easiest way to fix GUID issues is to Nuke and Reinstall all your dependencies. This might take a bit of time though. Of course, you'd better make sure your `project is properly under version control <../howto/prepare_project_for_uplift>`.