Add Local Repository
====================

If a repository has a machine specific path, we call it a *local repository*.

Local repositories could be

* a directory on your file system that you created e.g. to test the uplift packages your are preparing (this is actually `a good recommendation <testing_uplifted_packages>`)

* directories created on your machine using a third party service (Dropbox, Google Drive, iCloud, Box.com, etc..) or tool (rsync, NFS, ...) to share your team repository on your local file system

Uplift can then see them thanks to its `../repository/file_repository` implementation but if you use a non machine independent location in your *Upfile.xml* file then your Uplift setup might not work particulary well in a team.

2 main solutions come to you

The first one is to configure your *Upfile.xml* to rely on relative paths, maybe thanks to file system links.

The second option is to use the `../files/upfile_override`. In it, you can  - for example - define your local repositories.

Once you have your `.Upfile.xml <../files/upfile_override>` setup steps are the same as in `howto-add-dependency`.

So, to summarize:

1. Set up synchronization method with your team
2. Configure your `../files/upfile_override`
3. Setup your `../files/upfile` just as you would do when `adding external dependency <howto-add-dependency>`
