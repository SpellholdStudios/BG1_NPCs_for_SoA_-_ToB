ALTER_TRANS KGENIE2
BEGIN 2 5 END //STATE 
BEGIN 0  END //RESPONSE # - 0 - первый ответ(т.к. следующая реплика принадлежит тому же персонажу, всегда 0)
BEGIN "ACTION" ~ForceSpell(Myself,DRYAD_TELEPORT) ClearAllActions() StartCutSceneMode() StartCutScene("KALAH1")~ END 
