function onStepHit(tag)
   if curStep == (1408) then
      setProperty('light.visible', false);
   end
   if curStep == (1168) then
      setProperty('fg.visible', false);
      setProperty('bg.visible', false);
      setProperty('bg2.visible', false);
      setProperty('bg3.visible', false);
      setProperty('overlay.visible', false);
      setProperty('oldbg.visible', true);
   end
   if curStep == (1664) then
      setProperty('light.visible', true);
      triggerEvent('Change Character','BF','squid');
      triggerEvent('Change Character','dad','sponge');
   end
end