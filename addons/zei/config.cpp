#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		name = "[LRPG] ZEI";
		url = "";

		units[] = {
			"ZEI_ListBuildings",
			"ZEI_GarrisonBuilding",
			"ZEI_InteriorFill",
			"ZEI_ObjectSwitch",
			"ZEI_ObjectFill",
			"ZEI_FindBPos",
			"ZEI_SaveBuildingScheme"
		};

		weapons[] = {};
      	worlds[] = {};

		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {
			QGVARMAIN(main),
			"A3_Modules_F",
			"A3_Modules_F_Curator"
		};

		author = "[LRPG] Young";
		authors[] = {"Young", "LSD", "shukari"};
		url = "https://github.com/hbjydev/zei-lrpg";
		VERSION_CONFIG;
	};
};

#include "CfgFactionClasses.hpp"
#include "CfgFunctions.hpp"
#include "CfgVehicles.hpp"

#include "ui\defines.hpp"
#include "ui\Rsc_ZEI_GarrisonBuilding.hpp"
#include "ui\Rsc_ZEI_InteriorFill.hpp"
#include "ui\Rsc_ZEI_ListBuildings.hpp"
#include "ui\Rsc_ZEI_ObjectFill.hpp"
#include "ui\Rsc_ZEI_ObjectSwitch.hpp"