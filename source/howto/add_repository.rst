Add a Repository To Your Project
======================================

1. Open ``Upfile.xml``

   Open it in your favourite editor.
   Can't find it? See :ref:`faq-upfile`

2. Add repository inside ``<Repositories></Repositories>`` tags.

   There are multiple Repositories Types available, refer to `../repository/supported_repositories` which parameters are
   important for each and what the prerequisites are.

   Example ``Upfile.xml`` with single *FileRepository* should look
   something like this:

   .. code-block:: xml

      <Repositories>
        <FileRepository Path="../MyRepository" />
      </Repositories>

   If you work in a team, it is recommended to use computer independent *paths* configurations, either relative to your project directory, or absolute and pointing to a location that is available from different computers. This would allow the *Upfile.xml* configuration to work accross your team without change.

   If you are unable to define a path that is machine independent, we call these repositories *local repositories*. Uplift has some special features to help you manage them while still allowing your configuration to be team friendly. See `add_local_repository`.

3. In Unity select Uplift ‣ Refresh Upfile

No further actions are required. Enjoy your newly connected repository.
**Note: At the moment of writing, Uplift doesn't validate your Repository upon adding.**