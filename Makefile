SHELL=bash
.SECONDARY:
all: \
		Textures/Apparel/Blouse/Blouse \
		Textures/Apparel/Corset/Dress \
		Textures/Apparel/Lolita/Dress \
		Textures/Apparel/Maid/Dress \
		Textures/Apparel/Maid/Hat \
		Textures/Apparel/Mini/Hat \
		Textures/Apparel/Nuns/Dress \
		Textures/Apparel/Nuns/Hat \
		Textures/Apparel/Ribbon/Dress \
		Textures/Apparel/Ribbon/Hat \
		Textures/Apparel/Usakumya/Backpack;

specific: Textures/Apparel/Corset/Dress

%/Hat: \
		%/Hat.png \
		%/Hat_m.png \
		%/Hat_dir \
		%/Hat_dirm;

%/Dress: \
		%/Dress.png \
		%/Dress_m.png \
		%/Dress_Fat \
		%/Dress_Female \
		%/Dress_Hulk \
		%/Dress_Male \
		%/Dress_Thin;

%/Blouse: \
		%/Blouse.png \
		%/Blouse_m.png \
		%/Blouse_Fat \
		%/Blouse_Female \
		%/Blouse_Hulk \
		%/Blouse_Male \
		%/Blouse_Thin;

%/Backpack: \
		%/Backpack.png \
		%/Backpack_Hulk \
		%/Backpack_Fat \
		%/Backpack_Male \
		%/Backpack_Female \
		%/Backpack_Thin;

%_Base: \
		%_Hulk_dir \
		%_Hulk_dirm;

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

%_dir: \
		%_east.png \
		%_north.png \
		%_south.png;

%_dirm: \
		%_eastm.png \
		%_northm.png \
		%_southm.png;

%/Hat.png %/Hat_m.png %/Dress.png %/Dress_m.png %/Blouse.png %/Blouse_m.png:
	@echo -- $@

%_east.png %_north.png %_south.png:
	@echo -- $@

%_eastm.png %_northm.png %_southm.png:
	@echo -- $@