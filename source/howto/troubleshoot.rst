Troubleshoot issues
===================

If something is wrong:

1. Restart Unity

   A simple restart might fix odd caching issues. It is also required if you have just update Uplift. Remember to save your work first, though!

2. Check if you're using latest *Uplift*

   We improve and squash bugs every day. Maybe the problem you encountered is already solved?
   (See `howto-update-uplift` if you need help with updating)

3. Look at Unity console

   When designing *Uplift* we taken extra care to provide you with informative feedback about state you're currently in. The answer might lie just in front of you.

4. Check documentation

   Have you tried looking for your problem in **this** documentation? There are some constraints and caveats we are aware of, it might be that you've encountered one of them.

5. Check ``Uptree.txt``

   ``Uptree.txt`` is a text representation of your project's dependency graph. It might provide you with insight required for solving the issue you've encountered. Maybe some package is pulling the wrong dependency?

6. Check ``Upbring.xml``

   `../files/upbring` is a special file, in which we remember which file belong to which package. It is possible that by some random occurrence, or simple mistake, something went awry and we can't fix it.

   Sometimes removing the line corresponding to an error might fix the issue. Sometimes you'll have to manually edit that file . Sometimes you might need to remove files that Uplift has let laying around in your project.

7. Nuke and re-install

   Truly nuclear option. By nuking, you're asking Uplift to try removing everything that *Uplift* it has created for you. Removing everything and re-installing everything might solve everything, but won't help anyone in the long run, so use it as a last resort only

8. **Extra step**: File a ticket

   If you encounter any illogical or erroneous behavior make sure to let us know. We'll either fix it, help you or document it for future generations.
