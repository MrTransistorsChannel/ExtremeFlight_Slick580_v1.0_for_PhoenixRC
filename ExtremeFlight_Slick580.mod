modelTypes.ExtremeFlight_Slick580 = 
{

	-- header

	name = "Slick 580",
	type = "Airplane",
	amphibious = 0,
	manufacturer = "Exteme Flight",
	revision = 1.0,
	formatVersion = "5.5.f",
	minProgramVersion = "5.0.a",
	description = "105,5'' performance 3D aircraft",
	physics = physics.airplane,

	class = "Airplanes",
	subclass = "Performance",
	style = "3D",
	power = "Combustion",
	level = "Expert",

	supportsTrainingGear = 0,


	nodeCount = 64,


	-- main attributes

	attributes =
	{
		Physical =
		{
			Setup = 50.0,
			Size = 2.68,
			Weight = 12.25,
			Robustness = 100.0,
			Centre_of_gravity = { x = 0.000281, y = 18.068987, z = -8.813413 },
			Inertia = { yaw = 1.0, pitch = 1.0, roll = 1.0 },
			Fuselage_drag_area = { frontal = 0.100000, lateral = 0.400000, vertical = 0.400000 },
			Fuel_Time = 0.0,
			Has_Training_Gear = 0,
			Flip_Rudder_And_Ailerons = 0,
			Cockpit = "Jet_fighter",
		},

		Fine_tuning =
		{
			Thrust = 100.0,
			Lift = 100.0,
			Engine = 100.0,
			Stall = { severity = 100.0, limit = 100.0, speed = 100.0 },
			Dihedral = 100.0,
			Elevator = 100.0,
			Aileron = 100.0,
			Rudder = 100.0,
			Wash = 100.0,
			Torque = 100.0,
			Ground_Torque_Effect = 100.0,
			Rudder_Roll_Coupling = 0.0,
			Rudder_Elevator_Coupling = 0.0,
		},

		Controls =
		{
			Throttle =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Elevator =
			{
				Low_Rate = 50.0,
				Expo = 25.0,
				Expo_Low_Rate = 25.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Aileron =
			{
				Low_Rate = 50.0,
				Expo = 25.0,
				Expo_Low_Rate = 25.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Rudder =
			{
				Low_Rate = 50.0,
				Expo = 25.0,
				Expo_Low_Rate = 25.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Collective =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
			},

		},

	},

	body =
	{
		material = "Wood",

		geometry = 
		{

			"FUSELAGE_Circle",
			"SPINNER_Circle.023",
			"CANOPY_Circle.002",
			"GEAR_Circle.029",
			"LEFT_PANTS_Circle.028",
			"LEFT_WHEEL_Circle.027",
			"RIGHT_PANTS_Circle.033",
			"RIGHT_WHEEL_Circle.031",
		},

		collision = 
		{

		},

	},

	airfoils = 
	{

		{
			name = "Main wing",
			isBreakable = 1,
			isMirrored = 1,

			attributes =
			{
				Position = { x = 5.280344, y = 18.250818, z = 0.0 },
				Length = 1.2,
				Root_chord = 0.59,
				Tip_chord = 0.29,
				Airfoil = "Funfly",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 0.0,
				Sweep = 4.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"WING_LEFT_Circle.019",
					},

					collision = 
					{

						{ name = "New Collision", material = "Inherit", type = "sphere", x = 50.009571, y = 18.262758, z = -7.290007, radius = 0.5 },
						{ name = "New Collision3", material = "Inherit", type = "sphere", x = 0.0, y = 17.852335, z = 22.86256, radius = 0.5 },
						{ name = "New Collision5", material = "Inherit", type = "sphere", x = -0.00022, y = 10.390607, z = 4.742022, radius = 0.5 },
					},

				},

				{

					geometry = 
					{

						"WING_RIGHT_Circle.021",
					},

					collision = 
					{

						{ name = "New Collision2", material = "Inherit", type = "sphere", x = -49.83849, y = 18.137154, z = -7.84406, radius = 0.5 },
						{ name = "New Collision4", material = "Inherit", type = "sphere", x = 0.000168, y = 28.661377, z = -18.644779, radius = 0.5 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Ailerons",
					root_pivot = { x = 6.961111, y = 18.299299, z = -15.302942 },
					tip_pivot = { x = 49.951622, y = 18.345671, z = -10.85506 },

					attributes =
					{
						Input = "Left Aileron",
						Length = 1.16,
						Tip_distance = 0.0,
						Root_chord = 0.17,
						Tip_chord = 0.08,
						Min_travel = 60.0,
						Max_travel = 60.0,
					},

					sides =
					{
						{

							"AILERON_LEFT_Circle.003",
						},

						{

							"AILERON_RIGHT_Circle.004",
						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

		{
			name = "Tail",
			isBreakable = 1,
			isMirrored = 1,

			attributes =
			{
				Position = { x = 0.578906, y = 21.351669, z = -54.913734 },
				Length = 0.53,
				Root_chord = 0.4,
				Tip_chord = 0.26,
				Airfoil = "NACA 0009",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 0.0,
				Sweep = 11.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"STAB_LEFT_Circle.020",
					},

					collision = 
					{

						{ name = "New Collision6", material = "Inherit", type = "sphere", x = 20.090261, y = 21.231337, z = -61.749199, radius = 0.5 },
						{ name = "New Collision8", material = "Inherit", type = "sphere", x = 0.000094, y = 22.17597, z = -63.531364, radius = 0.5 },
					},

				},

				{

					geometry = 
					{

						"STAB_RIGHT_Circle.022",
					},

					collision = 
					{

						{ name = "New Collision7", material = "Inherit", type = "sphere", x = -19.801481, y = 21.393305, z = -61.604679, radius = 0.5 },
						{ name = "New Collision9", material = "Inherit", type = "sphere", x = 0.00011, y = 16.039206, z = -63.688793, radius = 0.5 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Elevator",
					root_pivot = { x = 1.275667, y = 21.378618, z = -61.600403 },
					tip_pivot = { x = 15.620029, y = 21.343115, z = -61.525639 },

					attributes =
					{
						Input = "Left Elevator",
						Length = 0.53,
						Tip_distance = 0.0,
						Root_chord = 0.22,
						Tip_chord = 0.18,
						Min_travel = 65.0,
						Max_travel = 65.0,
					},

					sides =
					{
						{

							"ELEVATOR_LEFT_Circle.005",
						},

						{

							"ELEVATOR_RIGHT_Circle.006",
						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

		{
			name = "Fin",
			isBreakable = 1,
			isMirrored = 0,

			attributes =
			{
				Position = { x = 0.00244, y = 16.523338, z = -52.66877 },
				Length = 0.575,
				Root_chord = 0.537,
				Tip_chord = 0.18,
				Airfoil = "Flat Profile",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 90.0,
				Sweep = 21.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"FIN_Circle.017",
					},

					collision = 
					{

						{ name = "New Collision10", material = "Inherit", type = "sphere", x = 0.002934, y = 36.541531, z = -63.320068, radius = 0.5 },
						{ name = "New Collision11", material = "Inherit", type = "sphere", x = 0.003363, y = 16.666832, z = -72.594826, radius = 0.5 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Rudder",
					root_pivot = { x = 0.011769, y = 16.030041, z = -63.614941 },
					tip_pivot = { x = 0.020081, y = 31.09384, z = -63.481926 },

					attributes =
					{
						Input = "Rudder",
						Length = 0.575,
						Tip_distance = 0.0,
						Root_chord = 0.245,
						Tip_chord = 0.1,
						Min_travel = 60.0,
						Max_travel = 60.0,
					},

					sides =
					{
						{

							"RUDDER_Circle.007",
						},

						{

						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

	},

	propulsion = 
	{

		{
			name = "Propulsion",
			type = "propeller",
			pivot = { x = -0.000824, y = 17.759251, z = 17.778727 },
			angle = -0.0,
			spinDirection = 1,
			pusher = 0,
			folding = 0,
			blurRadius = 14.704821,
			blurTexture = "None",

			attributes =
			{
				Position = { x = -0.000824, y = 17.759251, z = 17.778727 },
				Diameter = 0.9,
				Pitch = 0.15,
				Blade_count = 2,
				Idle_RPM = 450,
				Max_RPM = 10000,
				Throttle_Curve = 1.0,
				Down_thrust = 0.0,
				Right_thrust = 0.0,
				Torque = 100.0,
				Response = { load = 1.0, unload = 1.0 },
				Engine = "DA 50 (Silenced)",
				Volume_Tuning = 100.0,
				Pitch_Tuning = 100.0,
			},

			spinGeometry = 
			{

			},

			blurGeometry = 
			{

				"PROP_ID361.000",
			},

			exhaust = 
			{

				{
					name = "Exhaust port",
					position = { x = -0.000341, y = 10.460358, z = 7.360992 },
					vector = { x = 0.0, y = -0.866056, z = -0.499947 },

					attributes =
					{
						Engine_Smoke = 1,
						Engine_Smoke_Intensity = 100.0,
						Display_Smoke = 1,
						Display_Smoke_Colour = { r = 255, g = 255, b = 255, a = 255 },
					},

				},

			},

		},

	},

	gear = 
	{

		{
			name = "Main gear",
			root_pivot = { x = 3.351645, y = 11.087973, z = -3.06837 },
			tip_pivot = { x = 3.351645, y = 11.06161, z = -0.029627 },
			isBreakable = 1,
			mirrored = 1,
			isGuide = 0,
			guideDirection = 0,
			isRetractable = 0,
			changeTime = 1000.0,
			idle = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			mid = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			full = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },

			attributes =
			{
				Guide_travel = 20.0,
				Robustness = 100.0,
				Stiffness = 100.0,
				Friction = { frontal = 50.0, lateral = 100.0 },
			},

			sides =
			{
				{

					geometry = 
					{

					},

					collision = 
					{

					},

				},

				{

					geometry = 
					{

					},

					collision = 
					{

					},

				},

			},

			wheels = 
			{

				{
					name = "Main wheels",
					pivot = { x = 13.658653, y = 2.212696, z = -0.802403 },
					axis = { x = 1.0, y = 0.0, z = 0.0 },
					width = 1.0,
					radius = 2.165312,

					sides =
					{
						{

						},

						{

						},

					},

				},

			},

		},

		{
			name = "Rear gear",
			root_pivot = { x = 1.707696, y = 16.553402, z = -63.019005 },
			tip_pivot = { x = -1.627047, y = 16.533451, z = -62.949146 },
			isBreakable = 1,
			mirrored = 0,
			isGuide = 1,
			guideDirection = 0,
			isRetractable = 0,
			changeTime = 1000.0,
			idle = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			mid = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			full = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },

			attributes =
			{
				Guide_travel = 60.0,
				Robustness = 100.0,
				Stiffness = 30.0,
				Friction = { frontal = 50.0, lateral = 100.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"TAIL_GEAR_Circle.036",
					},

					collision = 
					{

					},

				},

			},

			wheels = 
			{

				{
					name = "Rear wheel",
					pivot = { x = 0.003013, y = 12.376159, z = -65.031448 },
					axis = { x = 1.0, y = 0.0, z = 0.0 },
					width = 1.0,
					radius = 0.941164,

					sides =
					{
						{

							"TAIL_TIRE_Circle.034",
							"TAIL_WHEEL_Obj_000044.002",
						},

					},

				},

			},

		},

	},

	pilots = 
	{

		{
			name = "Pilot",
			position = { x = 0.0, y = 20.328407, z = -16.966269 },
			size = 0.589713,


			attributes =
			{
				Type = "Racer",
			},

		},

	},

}