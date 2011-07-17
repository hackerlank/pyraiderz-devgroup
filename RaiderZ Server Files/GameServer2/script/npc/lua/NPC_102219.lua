-- �κ�

function NPC_102219:OnDialogExit(Player, DialogID, ExitID)
	if (1110011 == DialogID) and (1 == ExitID) then
		local Field = this:GetField()
		--local Session = Field:MakeSession("RoboSearch", {this})
		this:DisableInteraction()
		this:SetAlwaysRun(true)
		this:MoveToMarker(1022191)
		this:MoveToMarker(1022192)
		this:UseTalentSelf(210221901)
		this:ScriptSelf("NPC_102219_RoboSearch1")
	end
end
function NPC_102219_RoboSearch1(Self)
	local Field = Self:GetField()
	Field:SpawnLimited(102232, vec3(40521.9, 63076.8, 2536.6), 30)
	Self:MoveToMarker(1022193)
	Self:MoveToMarker(1022194)
	Self:UseTalentSelf(210221901)
	Self:ScriptSelf("NPC_102219_RoboSearch2")	
end
function NPC_102219_RoboSearch2(Self)
	local Field = Self:GetField()
	Field:SpawnLimited(102233, vec3(39611.8, 61707.0, 2564.7), 30)		
	Self:MoveToMarker(1022195)
	Self:UseTalentSelf(210221901)		
	Self:ScriptSelf("NPC_102219_RoboSearch3")	
end
function NPC_102219_RoboSearch3(Self)	
	local Field = Self:GetField()
	Field:SpawnLimited(102234, vec3(39678.7, 60340.2, 2532.1), 30)
	Self:UseTalentSelf(210221902)	
	Self:MoveToMarker(1022196)		
	Self:MoveToMarker(1022197)			
	Self:ScriptSelf("NPC_102219_RoboSearchEnd")
end
function NPC_102219_RoboSearchEnd(Self)
	Self:Despawn(true)
end







	