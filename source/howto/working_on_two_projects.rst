Work on two Projects Simultaneously
===================================

.. TODO: Think about caveats of using links
   There might be some problems with using links, for example when committing them to Git.

When working with *Uplift*, one common scenario would be working with both a *Module* and a 
*Project* at the same time, as it's much easier to see the result without separation.

As for time being, *Uplift* doesn't support you with this out-of-the-box, but there are work-arounds.

Your first option is to use the *Link* feature of your file system:

- Link, using system features (See: `faq-filesystem-linking`), your Module Project to a Game Project
- Upon changes in Module Project, Game Project should receive changes immediately

If you don't, for whatever reason, want to link directories we recommend

- Isolate package you want to have in separate Unity project (Module Project)
- Run 2 instances of Unity - one on Project and one on Module (See: `faq-unity-instances`)
- Copy files manually between Module and Project (by any means you want: copy, git, Makefile, or any
  tool you enjoy using)

Once you are done making your changes in your 2 projects

1. revert the changes you made in your project (e.g. remove the links or locally modified files)

2. prepare and publish your updated package to `your repository<uplifting_packages>` (don't forget to bump the version number and to consider testing it in a local repository first before sharing it with others)

3. change your *Uplift* configuration if needed (e.g. change the version number of your repository)

4. tell Uplift to fetch and install the newer dependency.