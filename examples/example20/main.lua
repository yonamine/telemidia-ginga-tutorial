print('main.lua::BEGIN')


function handler(evt)
  canvas:attrColor('blue')
  canvas:clear()
  if evt.class == 'key' and evt.type == 'press' then
    print('Key pressed: ' .. evt.key)
    canvas:attrColor('white')
    canvas:clear()
    canvas:attrColor('black')
    canvas:attrFont('vera',22,'normal')
    canvas:drawText(100,100,('TIPO DE ACCION: '..evt.type))
    canvas:drawText(100,140,('BOTON PRESIONADO: '..evt.key))
    canvas:flush()
  end
end

event.register(handler)
