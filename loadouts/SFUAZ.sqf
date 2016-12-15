comment "Exported from Arsenal by Furlong";
private ["_vehicle"];
_vehicle = _this select 0;
if (isNil {this getVariable "BPinTruck"}) then {
_vehicle setVariable ["loadoutgiven", false,false];
};

_giveLoadout = (_vehicle getvariable "loadoutgiven");
if (isserver) then 
{
comment "Add Backpacks";
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;

_vehicle addBackpackCargoGlobal ["CUP_B_RUS_Backpack",1];
_vehicle addBackpackCargoGlobal ["CUP_B_RUS_Backpack",1];
_vehicle addBackpackCargoGlobal ["CUP_B_RUS_Backpack",1];

_BP1 = (everyBackpack _vehicle) select 0;  //Weapons Bag
_BP1  additemcargoglobal ["rhs_VOG25",10];
_BP1  addItemCargoglobal ["rhs_GDM40",4];
_BP1  addItemCargoglobal ["rhs_VG40TB",4];
_BP1  addItemCargoglobal ["APERSTripMine_Wire_Mag",3];
_BP2 = (everyBackpack _vehicle) select 1; //Medical Bag
_BP2 addItemCargoGlobal ["ACE_elasticBandage",15];
_BP2  additemcargoglobal ["ACE_epinephrine",15];
_BP2  additemcargoglobal ["ACE_morphine",15];
_BP2  additemcargoglobal ["ACE_packingBandage",20];
_BP2  additemcargoglobal ["ACE_plasmaIV",3];
_BP2  additemcargoglobal ["ACE_plasmaIV_250",5];
_BP2  additemcargoglobal ["ACE_tourniquet",12];
_BP2  additemcargoglobal ["ACE_surgicalKit",1];
_BP3 = (everyBackpack _vehicle) select 3;  //Breaching Kit
_BP3  additemcargoglobal ["ACE_DefusalKit",1];
_BP3  additemcargoglobal ["ACE_M26_Clacker",1];
_BP3  additemcargoglobal ["rhsusf_m112_mag",4];


_vehicle addMagazineCargoGlobal ["hlc_30Rnd_545x39_EP_ak",25];
_vehicle addWeaponCargoGlobal ["rhs_weap_m72a7",4];
_vehicle addItemCargoGlobal ["ACE_M84",20];
_vehicle addItemCargoGlobal ["rhsusf_m112_mag",4];
_vehicle addItemCargoGlobal ["rhs_mag_m18_red",10];
_vehicle addItemCargoGlobal ["rhs_mag_m18_purple",10];
_vehicle addItemCargoGlobal ["ACE_wirecutter",1];
_vehicle addWeaponCargoGlobal ["hlc_rifle_RPK12",1];
_vehicle addPrimaryWeaponItem ["rhs_acc_dtk4short"];
_vehicle addPrimaryWeaponItem ["rhsusf_acc_SpecterDR_A"];
_vehicle setVariable ["loadoutgiven", true];
}
else {};
