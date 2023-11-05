function getNA8Actions(no)
  if(no < 0)then return {};
  elseif(no == 0)then
    return {'霜甲术','火焰冲击','火球术'};
  elseif(no == 1)then
    return {'霜甲术','火球术'};
  elseif(no == 2)then
    return {'霜甲术','火球术'};
  end
  return {};
end

NA8ProfileNames = {[0]='Arcane',[1]='Frost',[2]='Fire',};
NA8ProfileDescriptions = {[0]='天赋:--属性:',[1]='天赋:--属性:',[2]='天赋:--属性:',};
NA8TestRange =  {[0]='火球术',[1]='火球术',[2]='火球术',};
function NA8Dps()  
  if(W_IsInCombat())then
    W_Log(3,"法师 W_IsInCombat");
    if(NA_ProfileNo < 0)then return false; --保命施法
    elseif(NA_ProfileNo == 0)then --Arcane
      
      if(false
           or NA_Fire(true, '火焰冲击', NA_Target) --火球术
           or NA_Fire(true, '火球术', NA_Target) --火球术
      )then return true; end
    elseif(NA_ProfileNo == 1)then --Frost
      
      if(false
          or NA_Fire(true, '火球术', NA_Target) --火球术
          
      )then return true; end
    elseif(NA_ProfileNo == 2)then --Fire
      
      if(false          
           or NA_Fire(true, '火球术', NA_Target) --火球术
          

      )then return true; end

    end
    if(W_TargetCanAttack()) then  --攻击施法
      W_Log(3,"法师 W_TargetCanAttack");
      if(NA_ProfileNo < 0)then return false;
      elseif(NA_ProfileNo == 0)then --Arcane
        
        if(not NA_IsAOE and (false      
          
          or NA_Fire(true, '火球术', NA_Target) --火球术

        ))then return true; end

        if(NA_IsAOE and (false

        ))then return true; end
      elseif(NA_ProfileNo == 1)then --Frost
        
        if(not NA_IsAOE and (false

          or NA_Fire(true, '火球术', NA_Target) --火球术

        ))then return true; end

        if(NA_IsAOE and (false
          or NA_Fire(true, '火球术', NA_Target) --火球术

        ))then return true; end
      elseif(NA_ProfileNo == 2)then --Fire
          
        
        
        if(not NA_IsAOE and (false
          or NA_Fire(true, '火球术', NA_Target) --火球术

        ))then return true; end

        if(NA_IsAOE and (false

        ))then return true; end
      end
    elseif(UnitCanAssist(NA_Player, NA_Target))then --辅助施法
      if(NA_ProfileNo < 0)then return false;
      elseif(NA_ProfileNo == 0)then --Arcane
        
        
        if(false

        )then return true; end
      elseif(NA_ProfileNo == 1)then --Frost
        
        
        if(false

        )then return true; end
      elseif(NA_ProfileNo == 2)then --Fire
        
        
        if(false

        )then return true; end
      end
    end
  else  --不在战斗中
    W_Log(3,"脱战后补buff，开怪等");
    if(NA_ProfileNo < 0)then return false; --脱战后补buff，开怪等
    elseif(NA_ProfileNo == 0)then --Arcane
      
      if(false
          or NA_Eat(true)
          or NA_Fire(W_HPlevel(NA_Player) < 0.9, '霜甲术', NA_Player) --霜甲术
          or NA_Fire(true, '火球术', NA_Target) --火球术
          or NA_ChangeTarget(NA_Target) --换目标

      )then return true; end
    elseif(NA_ProfileNo == 1)then --Frost
      
      if(false
          or NA_Eat(true)
          or NA_Fire(W_HPlevel(NA_Player) < 0.9, '霜甲术', NA_Player) --霜甲术
          or NA_Fire(true, '火球术', NA_Target) --火球术

      )then return true; end
    elseif(NA_ProfileNo == 2)then --Fire
      
      if(false
          or NA_Eat(true)
      )then return true; end
    end  
  end
  return false;
end
