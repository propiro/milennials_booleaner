# milennials_booleaner
Booleaner helper for 3ds max.
Lets you easily move operands through their wireframed instances, giving you direct control on the output on the mesh. Perfect for Zbrush dynamesh + Max workflows.
Faster substraction:

![https://i.imgur.com/6UDd7wi.gif](https://i.imgur.com/6UDd7wi.gif)

Realtime Operand editing:

![https://i.imgur.com/fuKCdjX.gif](https://i.imgur.com/fuKCdjX.gif)

Geometry update on the go:

![https://i.imgur.com/LXj25ET.gif](https://i.imgur.com/LXj25ET.gif)


Check video for short presentation about how it works:

[![](https://i.imgur.com/3MYJkHt.png)](https://youtu.be/cSN2Yav5-wI)

https://youtu.be/cSN2Yav5-w

You can bind functions to toolbar / quads / keys as you like.
please use it first on something simple and set up proboolean modifier as follows: (need to set up "reference" instead of default "move")

![](https://i.imgur.com/65Lgnpg.png)

this is unavoidable, and 3ds max prevents from setting it up through maxscript (if anyone know working workaround, feel free to add it - the ones i've tried didnt worked across max versions, so i've avoided using them.)

After that, you can use three main functions of booleaner:

quickSubstract - substracts second and following meshes from first selected mesh.
quickClean - quickly clean any isolated verticles. They rarely appear, but in case you need it.
quickLowpolyStack (shamelessly stolen from Ben Bolton post here: https://polycount.com/discussion/168610/3ds-max-zbrush-proboolean-dynamesh-hardsurface-workflow-tutorial thanks Ben!) - creates geometry that makes more sense than default boolean output.

quick usage tips:
1. you might want to use shaded wireframein viewport to see operands.
2. works best on editable poly objects.
3. select at least 2 objects - first one will be booleaned, rest are operands.
4. you can experiment with "planar edge removal" options on proboolean modifier. might give you cleaner topology results depending on the mesh.
5. remember to SAVE A COPY before using probooleans, it might broke everything and set your cat on fire.


<shilling>
Found it usefull and want to say thanks? You can do it through paypal: ![paypal.me/propiro](https://paypal.me/propiro)
Otherwise, crediting me and/or linking my artstation page ![LINK](https://www.artstation.com/propiro/albums/662894) would greatly help anyway!
</shilling>

