Add Internal Dependency
=======================

There is one key difference that makes adding internal dependency different from external
dependency.  Namely - you might now have a repository setup and depend on other means of
synchronizing the files, such as synchronization service (Dropbox, Google Drive, iCloud, Box.com,
etc..) or even synchronize them manually. This would make your storage **local**.

Even though we have `../repository/file_repository` you still cannot define it in `../files/upfile`
since most likely everyone in your time would have different path to synchronized packages.  This is
where `../files/upfile_override` falls in place. In it, you can - for example - define your own,
local, repository and not share it with others. Great tool if you are syncing packages through
Dropbox.

Once you have `.Upfile.xml <../files/upfile_override>` setup steps are the same as in
`howto-add-external-dependency`.

So, to summarize:

1. Set up synchronization method with your team
2. Configure your `../files/upfile_override`
3. Setup your `../files/upfile` just as you would do when `adding external dependency <howto-add-external-dependency>`
