SHELL=bash
INDENT ?= 0
.SECONDARY:
all: \
		Textures/Apparel/Blouse/Blouse \
		Textures/Apparel/Corset/Dress \
		Textures/Apparel/Lolita/Dress \
		Textures/Apparel/Maid/Dress \
		Textures/Apparel/Maid/Hat \
		Textures/Apparel/Mini/Hat \
		Textures/Apparel/Nuns/Dress \
		Textures/Apparel/Ribbon/Dress \
		Textures/Apparel/Ribbon/Hat \
		Textures/Apparel/Usakumya/Backpack;

%/Hat: \
		%/Hat_Icon \
		%/Hat_dir \
		%/Hat_dirm
	@true

%/Dress: \
		%/Dress_Icon \
		%/Dress_Fat \
		%/Dress_Female \
		%/Dress_Hulk \
		%/Dress_Male \
		%/Dress_Thin
	@true

%/Blouse: \
		%/Blouse_Icon \
		%/Blouse_Fat \
		%/Blouse_Female \
		%/Blouse_Hulk \
		%/Blouse_Male \
		%/Blouse_Thin
	@true

%/Backpack: \
		%/Backpack_Icon \
		%/Backpack_Hulk \
		%/Backpack_Fat \
		%/Backpack_Male \
		%/Backpack_Female \
		%/Backpack_Thin
	@true

%_Base: \
		%_Base_dir \
		%_Base_dirm
	@true

%_Hulk: %_Base \
		%_Hulk_dir \
		%_Hulk_dirm
	@for FILE in `find $<*`; do cp -vn $$FILE $${FILE//Base/Hulk};done

%_Fat: %_Hulk \
		%_Fat_dir \
		%_Fat_dirm
	@for FILE in `find $<*`; do cp -vn $$FILE $${FILE//Hulk/Fat};done

%_Male: %_Fat \
		%_Male_dir \
		%_Male_dirm
	@for FILE in `find $<*`; do cp -vn $$FILE $${FILE//Fat/Male};done

%_Female: %_Male \
		%_Female_dir \
		%_Female_dirm
	@for FILE in `find $<*`; do cp -vn $$FILE $${FILE//Male/Female};done

%_Thin: %_Female \
		%_Thin_dir \
		%_Thin_dirm
	@for FILE in `find $<*`; do cp -vn $$FILE $${FILE//Female/Thin};done

%_Icon: \
		%_Icon.png \
		%_Icon_m.png
	@true

%_dir: \
		%_east.png \
		%_north.png \
		%_south.png
	@true

%_dirm: \
		%_eastm.png \
		%_northm.png \
		%_southm.png
	@true

%_Icon.png %_Icon_m.png:
	@if [ ! -f "$*_Icon.png"   ]; then echo -e "\e[31m$*_Icon.png\e[0m";fi
	@if [ ! -f "$*_Icon_m.png" ]; then echo -e "\e[31m$*_Icon_m.png\e[0m";fi

%_east.png %_north.png %_south.png:
	@if [ ! -f "$*_east.png"  ]; then echo -e "\e[31m$*_east.png\e[0m";fi
	@if [ ! -f "$*_north.png" ]; then echo -e "\e[31m$*_north.png\e[0m";fi
	@if [ ! -f "$*_south.png" ]; then echo -e "\e[31m$*_south.png\e[0m";fi

%_eastm.png %_northm.png %_southm.png:
	@if [ ! -f "$*_eastm.png"  ]; then echo -e "\e[31m$*_eastm.png\e[0m";fi 
	@if [ ! -f "$*_northm.png" ]; then echo -e "\e[31m$*_northm.png\e[0m";fi
	@if [ ! -f "$*_southm.png" ]; then echo -e "\e[31m$*_southm.png\e[0m";fi