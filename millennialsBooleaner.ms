-- quick substract for selection array - source is first, substracts are last




macroScript millennialsBooleaner_editableOperands
	category:"_Piro_Tools" 
	tooltip:"mb_editableOperands" 
	buttontext:"mB editable Operands" 
(

	objectsArray = #()
	if (selection.count > 1) then
	(
	for i in selection do
						(
							if (superClassOf i != helper) do
							(
								
								
								
							append objectsArray i
							) 
						)
						s = objectsArray[1]
						booleanMat = StandardMaterial()
						booleanMat.name = ("SRC_" + s.name as string)
						
						
						operandsArray = deleteItem objectsArray 1
						print ("boolean source: " + s.name)
						for o in objectsArray where o != s do
						(								
-- 							if ( classof o.material == standard ) then --check to see if the material in the object is Standard material then
-- 								(
-- 									o.material.opacity = 0 --set its opacity to 0
-- 									print ( o.name + " set to transparent.")
-- 								)
-- 								
-- 									if ( classof o.material == Multimaterial ) then --and if it's a multisub material then
-- 								(
-- 									for a = 1 to o.material.numsubs do --count through the sub materials and
-- 									(
-- 										if ( classof o.material.materialList[a] == standard) then --check to see Standard materials are in the sub materials
-- 										(
-- 											o.material.materialList[a].opacity = 0 --then set their opacity to 0
-- 										)
-- 									)
-- 								)
													operandMat = StandardMaterial()
						operandMat.name = ("OP_" + o.name as string)
						o.material = operandMat
						o.material.opacity = 0
							try o.wirecolor = random black white	catch try o.wirecolor = random black white catch messagebox "Please select something before"
						--o.material.wirecolor = (color (random 0 127) (random 0 127) (random 127))
							setTransformLockFlags o #all
							
							print ("boolean operand: " + o.name)
							
							)
						
							if (classOf s != ProBoolean) then (ProBoolean.createBooleanObjects s operandsArray 2 3 0)
						else (for node in operandsArray do ProBoolean.SetOperandB s node 3 0)
						s.material = booleanMat
						
					) else
					
					(
						messageBox "Select at least 2 objects \nFirst is source, rest are operands"
						
						)
	
	
	
	
	print ("quick substract mB v 0.04")
)

macroScript millennialsBooleaner_quickSubstract
	category:"_Piro_Tools" 
	tooltip:"mb_quickSubstract" 
	buttontext:"mB quickSubstract" 
(
	objectsArray = #()
	if (selection.count > 1) then
	(
	for i in selection do
						(
							if (superClassOf i != helper) do
							(
								
								
								
							append objectsArray i
							) 
						)
						s = objectsArray[1]
						booleanMat = StandardMaterial()
						booleanMat.name = ("SRC_" + s.name as string)
						
						
						operandsArray = deleteItem objectsArray 1
						print ("boolean source: " + s.name)
						for o in objectsArray where o != s do
						(								
-- 							if ( classof o.material == standard ) then --check to see if the material in the object is Standard material then
-- 								(
-- 									o.material.opacity = 0 --set its opacity to 0
-- 									print ( o.name + " set to transparent.")
-- 								)
-- 								
-- 									if ( classof o.material == Multimaterial ) then --and if it's a multisub material then
-- 								(
-- 									for a = 1 to o.material.numsubs do --count through the sub materials and
-- 									(
-- 										if ( classof o.material.materialList[a] == standard) then --check to see Standard materials are in the sub materials
-- 										(
-- 											o.material.materialList[a].opacity = 0 --then set their opacity to 0
-- 										)
-- 									)
-- 								)
													operandMat = StandardMaterial()
						operandMat.name = ("OP_" + o.name as string)
						o.material = operandMat
						o.material.opacity = 0
							try o.wirecolor = random black white	catch try o.wirecolor = random black white catch messagebox "Please select something before"
						--o.material.wirecolor = (color (random 0 127) (random 0 127) (random 127))
							setTransformLockFlags o #all
							
							print ("boolean operand: " + o.name)
							
							)
						
							if (classOf s != ProBoolean) then (ProBoolean.createBooleanObjects s operandsArray 2 3 0)
						else (for node in operandsArray do ProBoolean.SetOperandB s node 3 0)
						s.material = booleanMat
						
					) else
					
					(
						messageBox "Select at least 2 objects \nFirst is source, rest are operands"
						
						)
	
	
	
	
	print ("quick substract mB v 0.04")
)

macroScript millennialsBooleaner_quickClean
	category:"_Piro_Tools" 
	tooltip:"mb_quickClean" 
	buttontext:"mB quickClean" 
(
	addModifier $ (Edit_Poly name:"Edit_Poly_mB")
	subobjectLevel = 1
	va = #{}
	vi = $.modifiers[#Edit_Poly_mB].GetSelection #Vertex
	for i in vi do
	(
	ec = ($.modifiers[#Edit_Poly_mB].GetVertexEdgeCount i)
		if ec == 2 then append va i
	)
	$.modifiers[#Edit_Poly_mB].SetSelection #Vertex #{}
	$.modifiers[#Edit_Poly_mB].Select #Vertex va
	$.modifiers[#Edit_Poly_mB].ButtonOp #RemoveVertex
	print ("quick clean mB v 0.01")
)

macroScript millennialsBooleaner_quickLowPoly
	category:"_Piro_Tools" 
	tooltip:"mb_quickLowPoly" 
	buttontext:"mB quickLowPoly" 
-- shamelessly stolen from great Ben Bolton from polycount thread, thanks man!
-- https://polycount.com/discussion/168610/3ds-max-zbrush-proboolean-dynamesh-hardsurface-workflow-tutorial
(
		if (selection.count > 0) then
	(
		modPanel.addModToSelection (Vol__Select ()) ui:on
		$.modifiers[#Vol__Select].level = 1
			
		modPanel.addModToSelection (Vertex_Weld ()) ui:on
		$.modifiers[#Vertex_Weld].threshold = 0.05
			
		modPanel.addModToSelection (Turn_to_Poly ()) ui:on
		$.modifiers[#Turn_to_Poly].selectionConversion = 1
		$.modifiers[#Turn_to_Poly].limitPolySize = on
		$.modifiers[#Turn_to_Poly].keepConvex = on
			
		modPanel.addModToSelection (Edit_Poly ()) ui:on
			print ("quick lowpoly stack mB v 0.01")
	)
	
)