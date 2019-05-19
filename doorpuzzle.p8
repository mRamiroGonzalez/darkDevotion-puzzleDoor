pico-8 cartridge // http://www.pico-8.com
version 18
__lua__

function _init()
  lights = {1,2,3,4,3,4,1,2}
  wait_time = 10
  pressed = {}
end

function _update()
  if(btn(4)) then
    lights = {1,2,3,4,3,4,1,2}
    pressed = {}
  end

  if(btn(0)) then
    inc(1)
    dec(2)
    dec(3)
    inc(4)
    add(pressed, 1)
    wait(wait_time)
  end

  if(btn(1)) then
    inc(5)
    dec(6)
    dec(7)
    inc(8)
    add(pressed, 2)
    wait(wait_time)
  end

  if(btn(2)) then
    inc(2)
    inc(4)
    inc(6)
    inc(8)
    add(pressed, 3)
    wait(wait_time)
  end

  if(btn(3)) then
    dec(1)
    dec(3)
    dec(5)
    dec(7)
    add(pressed, 4)
    wait(wait_time)
  end
end

function _draw()
  cls()
  print('lever 1: left')
  print('lever 2: right')
  print('lever 3: up')
  print('lever 4: down')
  print("")
  for i=1,#lights do
    if(lights[i] == 1) then
      print("light "..i.." = "..lights[i].." (x)")
    else
      print("light "..i.." = "..lights[i])
    end
  end
  print("")
  for i=1,#pressed do
    print("pressed: "..pressed[i])
  end
end

function wait(a) for i = 1,a do flip() end end

function inc(x)
  if(lights[x] == 4) then
    lights[x] = 1
  else
    lights[x] = lights[x] + 1
  end
end

function dec(x)
  if(lights[x] == 1) then
    lights[x] = 4
  else
    lights[x] = lights[x] - 1
  end
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
