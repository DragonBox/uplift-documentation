Work on Two Projects Simultaneously
===================================

.. TODO: Think about caveats of using links
   There might be some problems with using links, for example when committing them to Git.

When working with *Uplift*, one common scenario would be working with both *Module* and *Project* at
same time, as it's much easier to see the result without separation.

As for time being, *Uplift* doesn't support you with this out-of-the-box, but there are solutions
you can incorporate yourself.

Your first option is to use *Link* feature of file system:

- Link, using system features (See: `faq-filesystem-linking`), Module Project to a Game Project
- Upon changes in Module Project, Game Project should receive changes immediately

If you don't, for whatever reason, want to link directories we recommend

- Isolate package you want to have in separate Unity project (Module Project)
- Run 2 instances of Unity - one on Project and one on Module (See: `faq-unity-instances`)
- Copy files manually between Module and Project (by any means you want: copy, git, Makefile, or any
  tool you enjoy using)
