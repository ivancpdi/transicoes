-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local evento_selecionado = "hybrid"

-- Física
-- Chamar a biblioteca: atribui a biblioteca interna de fisica a variavel physics

local physics = require ( "physics" )

-- Iniciar a fisica no projeto:
physics.start ()

--Definir a gravidade do projeto:
physics.setGravity ( 0, 9.8 ) 

-- Definir a rederização da visualização da física (usado somente durante o desenvolvimento para testes)
-- Modos: Normal: Aparece apenas as imagens, corpos físicos invisiveis (padrão do sistema), hybrid: Mostra as imagens e os corpos fisicos, debug: |Mostra apenas os corpos físicos.
physics.setDrawMode ( evento_selecionado )

-- Adicionando objetos físicos:
local retangulo = display.newRect ( 150, 30, display.contentCenterX, display.contentCenterY )

physics.addBody ( retangulo, "dynamic" )

local chao = display.newRect (display.contentCenterX, 400, 450, 30)

physics.addBody (chao, "static")



-----------------------------------------------
----
----------------------------------------------

local function reiniciarPhysics () 
    physics.setDrawMode( evento_selecionado ) 

    retangulo.x = 150
    retangulo.y = 30
    
    physics.start ()   
end

local check_normal_verdadeiro = true
local check_hybrid_verdadeiro = false
local check_debug_verdadeiro = false

local check_normal = display.newRect(15, 15, 15, 15)
local check_debug = display.newRect(85, 15, 15, 15)
local check_hybrid = display.newRect(215, 15, 15, 15)

local Normal = display.newText ("Normal", 50, 15, native.systemFont, 15 )
local Debug = display.newText ("Debug (crtl+tab)", 150, 15, native.systemFont, 15 )
local Hybrid = display.newText ("Hybrid", 250, 15, native.systemFont, 15 )


local confirma_normal = display.newText ("X", 15, 15, native.systemFont, 15 )
local confirma_debug = display.newText ("X", 85, 15, native.systemFont, 15 )
local confirma_hybrid = display.newText ("X", 215, 15, native.systemFont, 15 )

Hybrid:setFillColor (0.0, 0.0, 0.5)
Normal:setFillColor (0.0, 0.0, 0.5)
Debug:setFillColor (0.0,  0.0, 0.5)

confirma_normal:setFillColor (0.9, 0.4, 0.4)
confirma_debug:setFillColor (0.9, 0.4, 0.4)
confirma_hybrid:setFillColor (0.9, 0.4, 0.4)


local groupImage = display.newGroup ()

groupImage: insert (check_normal)
groupImage: insert (check_debug)
groupImage: insert (check_hybrid)
groupImage: insert (Normal)
groupImage: insert (Debug)
groupImage: insert (Hybrid)


local function check_normal_event(addEventListener)
  if check_normal_verdadeiro and check_normal_verdadeiro == "false" then
    confirma_normal:setFillColor(1, 1, 1)
    check_normal_verdadeiro = false
  else
    confirma_normal:setFillColor(0.9, 0.4, 0.4)
    check_normal_verdadeiro = true
    evento_selecionado = "normal"
end
    confirma_debug:setFillColor(1, 1, 1)
    confirma_hybrid:setFillColor(1, 1, 1)
    reiniciarPhysics ()
end

local function check_debug_event(addEventListener)
    if check_debug_verdadeiro and check_debug_verdadeiro == "false"then
      confirma_debug:setFillColor(1, 1, 1)
      check_debug_verdadeiro = false 
    else
      confirma_debug:setFillColor(0.9, 0.4, 0.4)
      check_debug_verdadeiro = true
      evento_selecionado = "debug"
  end
     confirma_normal:setFillColor(1, 1, 1)
     confirma_hybrid:setFillColor(1, 1, 1)
     reiniciarPhysics ()
  end

  local function check_hybrid_event(addEventListener)
    if check_hybrid_verdadeiro and check_hybrid_verdadeiro == "false" then
      confirma_hybrid:setFillColor(1, 1, 1)
      check_hybrid_verdadeiro = false
    else
      confirma_hybrid:setFillColor(0.9, 0.4, 0.4)
      check_hybrid_verdadeiro = true
      evento_selecionado = "hybrid"
  end
      confirma_debug:setFillColor(1, 1, 1)
      confirma_normal:setFillColor(1, 1, 1)
      reiniciarPhysics ()
  end

confirma_normal:addEventListener("tap",  check_normal_event )
confirma_debug:addEventListener("tap",  check_debug_event )
confirma_hybrid:addEventListener("tap",  check_hybrid_event )

local function startConfiguracao ()
    confirma_debug:setFillColor(1, 1, 1)
    confirma_hybrid:setFillColor(1, 1, 1)

    groupImage:toBack ()   
end

local isCtrlPressed = false
local isBackSpacePressed = false

local function onKeyEvent ( event )
    if (event.keyName == "tab") and  (event.keyName == "leftCtrl" or "rightCtrl")  then
         isBackSpacePressed = true
         isCtrlPressed = true
        end

    if (isCtrlPressed and isBackSpacePressed) then
       check_normal_event ()
    end
end

Runtime:addEventListener("key", onKeyEvent)

startConfiguracao ()