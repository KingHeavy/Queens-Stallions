_unit = _this select 0;
_loadoutType = _this select 1;

if (vehicle player != _unit) exitwith {};

if (isNil {player getVariable "loadoutgiven"}) then {
_unit setVariable ["loadoutgiven", false,false];
};


while {true} do
{
_giveLoadout = (_unit getvariable "loadoutgiven");
if (!_giveLoadout) then 
{

[_unit] execVm _loadoutType;
_unit setVariable ["loadoutgiven", true];
};

sleep 5;
};