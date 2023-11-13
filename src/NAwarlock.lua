function getNA9Actions(no)
  if(no < 0)then return {};
  elseif(no == 0)then
    return {'暗影箭','献祭'};
  elseif(no == 1)then
    return {'暗影箭','献祭'};
  elseif(no == 2)then
    return {'暗影箭','献祭'};
  end
  return {};
end

NA9ProfileNames = {[0]='恶魔术',[1]='毁灭术',[2]='痛苦术',};
NA9ProfileDescriptions = {[0]='天赋:--属性:精通>急速>暴击>全能',[1]='天赋:--属性:',[2]='天赋:--属性:',};
NA9TestRange =  {[0]='暗影箭',[1]='暗影箭',[2]='暗影箭',};

function NA9Dps()
  W_Log(3,"术士 dps");
  
	--local has117828=W_HasBuff(NA_Player, 117828, true)
	--local countSoulShards=UnitPower(NA_Player, SPELL_POWER_BURNING_EMBERS)
	
	--local count980 = W_BuffCount(NA_Target, -980, true); --痛楚
	--local retain146739 = true or NA_isUsableTalentSpell(2,2) or W_RetainBuff(NA_Target, -146739, true); --腐蚀术
	local debuffjixian = W_UnitBuffBySpellName(false, NA_Target, '献祭'); --痛苦无常
	--local retain27243 = W_RetainBuff(NA_Target, -27243, true); -- 腐蚀之种
	
	
  if(W_IsInCombat())then
    if(NA_ProfileNo < 0)then return false; --保命施法
    elseif(NA_ProfileNo == 0)then --恶魔术
      
      if(false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭
      )then return true; end
    elseif(NA_ProfileNo == 1)then --毁灭术
      
      if(false

      )then return true; end
    elseif(NA_ProfileNo == 2)then --痛苦术
      
      if(false

      )then return true; end

    end
    if(W_TargetCanAttack()) then  --攻击施法
      if(NA_ProfileNo < 0)then return false;
      elseif(NA_ProfileNo == 0)then --恶魔术
        --local has196606 = W_HasBuff(NA_Player, 196606, true);  --暗影箭
				--local has193396 = W_HasBuff(NA_Pet, 193396, true);  --恶魔增效
				--local retain603 = W_RetainBuff(NA_Target, -603, true)  --末日之手
				--local countPower = UnitPower(NA_Player, SPELL_POWER_SOUL_SHARDS) --灵魂碎片
				
        if(not NA_IsAOE and (false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭
        ))then return true; end

        if(NA_IsAOE and (false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭

        ))then return true; end
      elseif(NA_ProfileNo == 1)then --毁灭术
        
				
        
        if(not NA_IsAOE and (false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭

        ))then return true; end

        if(NA_IsAOE and (false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭

        ))then return true; end
      elseif(NA_ProfileNo == 2)then --痛苦术
        
				
        
        if(not NA_IsAOE and (false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭

        ))then return true; end

        if(NA_IsAOE and (false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭

        ))then return true; end
      end
    elseif(UnitCanAssist(NA_Player, NA_Target))then --辅助施法
      if(NA_ProfileNo < 0)then return false;
      elseif(NA_ProfileNo == 0)then --恶魔术
        
				
        if(false

        )then return true; end
      elseif(NA_ProfileNo == 1)then --毁灭术
        
				
        if(false

        )then return true; end
      elseif(NA_ProfileNo == 2)then --痛苦术
        
				
        if(false

        )then return true; end
      end
    end
  else  --不在战斗中
    if(NA_ProfileNo < 0)then return false; --脱战后补buff，开怪等
    elseif(NA_ProfileNo == 0)then --恶魔术
      
      if(false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭
      )then return true; end
    elseif(NA_ProfileNo == 1)then --毁灭术
      
      if(false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭
      )then return true; end
    elseif(NA_ProfileNo == 2)then --痛苦术
      
      if(false
          or NA_Fire(debuffjixian and true, '献祭', NA_Target) --暗影箭
          or NA_Fire(true, '暗影箭', NA_Target) --暗影箭

      )then return true; end
    end
  end
  return false;
end
