Add Repository To Your Project
======================================

1. Open ``Upfile.xml``

   Open it in your favourite editor.
   Can't find it? See :ref:`faq-upfile`

2. Add repository inside ``<Repositories></Repositories>`` tags.

   There are multiple Repositories Types available, refer to `../repository/supported_repositories`  which parameters are
   important for each and what the prerequisites are.

   Example ``Upfile.xml`` with single *FileRepository* should look
   something like this:

   .. code-block:: xml

      <Repositories>
        <FileRepository Path="../MyRepository" />
      </Repositories>


3. No further actions are required. Enjoy newly connected repository.
   **Note: At the moment of writing, Uplift doesn't validate your
   Repository upon adding.**
