# milennials_booleaner
Booleaner helper for 3ds max.
Lets you easily move operands through their wireframed instances, giving you direct control on the output on the mesh. Perfect for Zbrush dynamesh + Max workflows.

Check video for short presentation about what it can do:

![](https://youtu.be/cSN2Yav5-wI)


You can bind functions to toolbar / quads / keys as you like.
please use it first on something simple and set up proboolean modifier as follows:

![](https://i.imgur.com/65Lgnpg.png)

this is unavoidable, and 3ds max prevents from setting it up through maxscript (if anyone know working workaround, feel free to add it - the ones i've tried didnt worked across max versions, so i've avoided using them.)

After that, you can use three main functions of booleaner:

quickSubstract - substracts second and following meshes from first selected mesh.
quickClean - quickly clean any isolated verticles. They rarely appear, but in case you need it.
quickLowpolyStack (shamelessly stolen from Ben Bolton post here: https://polycount.com/discussion/168610/3ds-max-zbrush-proboolean-dynamesh-hardsurface-workflow-tutorial thanks Ben!) - creates geometry that makes more sense than default boolean output.

quick usage tips:
1. works best on editable poly objects.
2. select at least 2 objects - first one will be booleaned, rest are operands.
3. you can experiment with "planar edge removal" options on proboolean modifier. might give you cleaner topology results depending on the mesh.
4. remember to SAVE A COPY before using probooleans, it might broke everything and set your cat on fire.





