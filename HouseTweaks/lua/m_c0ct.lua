C0_ClericThiefTurnUndeadButton = 0
function C0_ClericThiefSwitchButtons(config, state)
    if
      state == 15
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.THIEVING)
   end
   if
      state == 106
      and
      C0_ClericThiefTurnUndeadButton == 0
      and
      EEex_GameObject_GetSelected():getClass() == 15
      then
      C0_ClericThiefTurnUndeadButton = 1
      EEex_Actionbar_SetState(15)
end
   if
      state == 15
      and
      C0_ClericThiefTurnUndeadButton == 1
      or
      EEex_GameObject_GetSelected():getModalState() == 4
      and
      EEex_GameObject_GetSelected():getClass() == 15
      then
      EEex_Actionbar_SetButton(4, EEex_Actionbar_ButtonType.TURN_UNDEAD)
end
   if
      state == 106
      and
      C0_ClericThiefTurnUndeadButton == 1
      and
      EEex_GameObject_GetSelected():getClass() == 15
      then
      C0_ClericThiefTurnUndeadButton = 2
   end
   if
      state == 15
      and
      C0_ClericThiefTurnUndeadButton == 2
      and
      EEex_GameObject_GetSelected():getClass() == 15
      then
      C0_ClericThiefTurnUndeadButton = 0
   end
end
EEex_Actionbar_AddListener(C0_ClericThiefSwitchButtons)