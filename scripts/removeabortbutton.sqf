//https://forums.bohemia.net/forums/topic/220528-help-disable-escape-options-when-killed/

if (serverCommandAvailable "#kick") then {
with uiNamespace do  
					{ 
						_ctrl = findDisplay 49 ctrlCreate ["RscButton", -1]; 
						_ctrl ctrlSetPosition [0.917656 * safezoneW + safezoneX,0.94 * safezoneH + safezoneY,0.0773437 * safezoneW,0.044 * safezoneH]; 
						_ctrl ctrlSetText "Disable/Enable Abort Button"; 
						_ctrl ctrlCommit 0; 
						_ctrl ctrlAddEventHandler ["ButtonDown",  
						 { 
                        _status = missionNamespace getVariable ["TAG_abortIsAllowed",true];
                        if (_status) then {missionNamespace setVariable ["TAG_abortIsAllowed",false,true];systemChat "Abort Button Disabled"} else {missionNamespace setVariable ["TAG_abortIsAllowed",true,true]; systemchat "Abort Button Enabled"};
						 
						  
						 }]; 
					};
};

_status = missionNamespace getVariable ["TAG_abortIsAllowed",true];
if (_status) exitWith {};
disableSerialization;

// Check if player is an admin
if (isServer || (isDedicated && (player getVariable ["isAdmin", false]))) then {
    // Admins will always see the abort button
} else {
    // Remove the abort button from non-admins
    ((findDisplay 49) displayCtrl 104) ctrlShow false;
};