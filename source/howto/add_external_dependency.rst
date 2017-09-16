=================================
 Add External Dependency
=================================

**Note:** This guide assumes that Dependency you want to add to your Project had already been repackaged into Uplift package. If that's not true, you might have to repackage code yourself, see :doc:`repackaging`.

1. (Optional) Add repository in which package resides. See: :doc:`add_repository`
2. :ref:`Open Upfile.xml <faq-upfile>`
3. In ``<Dependencies></Dependencies>`` node add ``<Package />`` node with *name* and (optionally) *version* such as:

   .. code-block:: xml

      <Dependencies>
        <Package Name="SomePackage" />
      </Dependencies>

4. In Unity select :menuselection:`Uplift --> Install Dependencies`
