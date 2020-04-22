var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

/datum/job/premier
	title = "Premier"
	flag = PREMIER
	department = DEPARTMENT_COMMAND
	head_position = 1
	department_flag = COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "your heart and wisdom"
	difficulty = "Very Hard."
	selection_color = "#ccccff"
	req_admin_notify = 1
	wage = WAGE_NONE //The captain doesn't get paid, he's the one who does the paying
	//The colony account is his, and he's free to draw as much salary as he likes

	also_known_languages = list(LANGUAGE_CYRILLIC = 20, LANGUAGE_SERBIAN = 20)

	ideal_character_age = 50 // Old geezer captains ftw
	minimum_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/captain

	description = "�� ������� ����������� ��������, �� ���� ����� �������� ����� ������� duties.<br>\
�� ������ ������ ���������� �� �������, �� ������ �������� ������ ������� �������, �� ������ ��������� ����������� �������.<br>\
���� ������� ������ ������� �� ������� ������� � ������� ���, ����� ��� ���������������.<br>\
�������� ������, ��������� ������� ��������, ������� �� ������� � ���������� ������� ������.<br>\
�� �������, ��� � ������� ������� �������� �������� ���������������. ���� �� ������ ���������� ���� � ������ �������, ������� ����� ��� �� ����������.<br>\
���������� � ������ ������ �������� � ��������� � ��������������� � ������."

	duties = "���� duties ����������� � ���, ����� ��������� ��������� ������.<br>\
	�������, ��� �������� ������ ��������� �� ������ �����, � �� - ��� ������������ ���������� ����.<br>\
	���������� �������� � ����� ��������� �������!"

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_BIO = 15,
		STAT_MEC = 15,
		STAT_VIG = 25,
		STAT_COG = 15
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


	equip(var/mob/living/carbon/human/H)
		if(!..())	return 0
		if(H.age>49)
			var/obj/item/clothing/under/U = H.w_uniform
			if(istype(U)) U.accessories += new /obj/item/clothing/accessory/medal/gold/captain(U)
		return 1

	get_access()
		return get_all_station_access()

/obj/landmark/join/start/premier
	name = "Premier"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/premier

/datum/job/pg
	title = "Steward"
	flag = STEWARD
	department = DEPARTMENT_COMMAND
	head_position = 1
	department_flag = COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Premier"
	difficulty = "Hard."
	selection_color = "#ddddff"
	req_admin_notify = 1
	wage = WAGE_COMMAND
	also_known_languages = list(LANGUAGE_CYRILLIC = 20, LANGUAGE_SERBIAN = 15)
	ideal_character_age = 35
	minimum_character_age = 25

	description = "�� ������ ���� �������-��������. �� ������� � ��������� ��� ������� � ���������� - ��������� ��� ������ �������.<br>\
	���� ������ ����� ����� �������� ��������. �� �� ������ ������� ������� �� ����, ���� ��� ���� �� ����� �����. <br>\
	� ����� ������, �� ��� �� ��������� � ��� ����������. ��������� �������� ��� �� �������. ���������, ��� �� ������� ������ � ��� ��� �������� ��������� ������.<br>\
	�� ��� �� ���������� ����� ��� ������, �� ������ �� ��� ��������� ��� �����������.<br>\
	�� �������� ��� � �� ������� ��� ��������� � ������� ���������. ���� ������� �� ������ �������."

	duties = "�� � ����� ���������� ��� ���������� ��������� �������-��������, ��� � ��� ���������.<br>\
	�������� ������� ������ ���� ���������, ����� ��� ���������� ���������� ��� �������������� ����������.<br>\
	��������������� �������� ����������� � �� ������� ������ ����������."

	outfit_type = /decl/hierarchy/outfit/job/hop

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


	get_access()
		return get_all_station_access()

	stat_modifiers = list(
		STAT_VIG = 35,
		STAT_TGH = 30,
		STAT_ROB = 25,
		STAT_BIO = 25,
		STAT_MEC = 25,
		STAT_COG = 25
	)

/obj/landmark/join/start/pg
	name = "Steward"
	icon_state = "player-gold"
	join_tag = /datum/job/pg
