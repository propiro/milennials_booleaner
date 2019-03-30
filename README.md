# milennials_booleaner
Booleaner helper for 3ds max.
Lets you easily move operands through their wireframed instances, giving you direct control on the output on the mesh. Check video for short presentation:



You can bind functions to toolbar / quads / keys as you like.
please use it first on something simple and set up proboolean modifier as follows:



this is unavoidable, and 3ds max prevents from setting it up through maxscript (if anyone know working workaround, feel free to add it)

After that, you can use three main functions of booleaner:

quickSubstract - substracts second and following meshes from first selected mesh.
quickClean - quickly clean any isolated verticles.
quickLowpolyStack (shamelessly stolen from Ben Bolton post here: ) - creates geometry that makes more sense than default boolean output.






