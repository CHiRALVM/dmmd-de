//<continuation number="210">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm4490_vs.nss_MAIN
{
$TEXTBOX_TYPE="";
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#ev449�Z�[�t�e�B�O��=true;
	#ev940�̂��N���A=true;


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($�N���A�I����8==1){	$GameName = "dm4500.nss";
	}else {		$GameName = "dm4491.nss";
	}

}


scene dm4490_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

//�e�F��΍��W
	CreateColorSP("�G�F��", 2000, "000000");
	CreateColorEX("�G�F�t���b�V��", 2000, "FFFFFF");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");
	CreateTextureEX("�G�떇�G", 800, Center, Middle, "cg/ev/ev449�Z�[�t�e�B�O��.jpg");
	CreateTextureSP("�G�떇�G��", 601, -165, 40, "cg/ev/l/ev449�Z�[�t�e�B�O��_l.jpg");
	CreateTextureSP("�G�떇�G��", 600, -165, 40, "cg/ev/l/ev449�Z�[�t�e�B�O��_l.jpg");
	CreateTextureEXadd("�G�떇�G���", 602, -165, 40, "cg/ev/l/ev449�Z�[�t�e�B�O��_l.jpg");

	Request("�G�떇�G��", Smoothing);

	Zoom("�G���o", 0, 2000, 2000, null, true);
	Zoom("�G�떇�G��*", 0, 1500, 1500, null, true);

	FadeDelete("��w�i", 0, Dxl1, true);

//���������A�ƃ��{�b�g�̓����Ƀi�C�t���Ԃ��������ĉ���

	Move("�G�떇�G��*", 200, 500, 225, Axl3, false);
	Wait(30);
	Fade("�G�F��", 150,0, Null, true);

	Shake("�G�떇�G��", 300, 300, 80, 0, 0, 800, Dxl3, false);
	Fade("�G�떇�G���", 200, 800, Dxl1, false);
	Zoom("�G�떇�G���", 400, 2010, 2010, Axl1, false);

	CreateSE("SE10","se����_����_�Փ�02");
	MusicStart("SE10",0,700,0,1000,null,false);

	Wait(100);

	FadeDelete("�G�떇�G���", 100, null, true);

	CreateSE("SE03","se�[��_����_�Ή�01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateSE("SE04","se�[��_����_�Ή�02");
	MusicStart("SE04",0,700,0,1000,null,false);

	CreateTextureEXadd("�G���o", 6000, 404, 173, "cg/ef/efx02�Ήԓd��02.jpg");
	Zoom("�G���o", 0, 1800, 1800, null, true);
	FadeFF("�G���o", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	FadeDelete("�G���o", 30, Dxl2, true);

/*
	CreateSE("SE01","se�[��_����_�Ή�01");
	MusicStart("SE01",0,700,0,1400,null,false);
	CreateSE("SE02","se�[��_����_�Ή�02");
	MusicStart("SE02",0,700,0,1400,null,false);

	CreateTextureEXadd("�G���o2", 6001, 239, -107, "cg/ef/efx02�Ήԓd��02.jpg");
	Zoom("�G���o2", 0, 1500, 1500, null, true);
	FadeFF("�G���o2", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	FadeDelete("�G���o2", 30, Dxl2, true);

	Fade("�G�F�t���b�V��", 200,1000, Dxl1, true);
*/

	Fade("�G�F�t���b�V��", 200,1000, Dxl1, true);

	Delete("�G�떇�G��*");
	Fade("�G�떇�G", 0, 1000, Dxl1, true);

	FadeDelete("�G�F�t���b�V��", 300, Axl1, true);

	Wait(500);

//�e�F���L�C�����܂����i�ł����d���j
//�@�������̌ł����ƂƂ��ɉΉԂ��U��A�s���n�悪�N���A�̑������𒼌������B

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The sound of metal clanks and sparks fly as Clear strikes 
a direct blow to his head with the sharp edge of his blade&.

Oil spurts out like blood&, and even more skin tears off 
and flutter onto the floor&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�@�B_�T��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE03","se�[��_����_�Ή�01");
	MusicStart("SE03",0,700,0,1400,null,false);

	CreateTextureEX("�G�摜", 1000, Center, Middle, "cg/ev/l/ev449�Z�[�t�e�B�O��_l.jpg");
	Move("�G�摜", 0, @0, @0, null, true);
	Move("�G�摜", 2000, @0, @-30, Dxl1, false);
	Fade("�G�摜", 2000, 1000, null, true);

	CreateSE("SE02","se�[��_����_�Ή�02");
	MusicStart("SE02",0,700,0,1800,null,false);
	CreateTextureEXadd("�G���o", 6000, -169, -136, "cg/ef/efx02�Ήԓd��02.jpg");
	Zoom("�G���o", 0, 1500, 1500, null, true);
	FadeFF("�G���o", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	CreateSE("SE03","se�[��_����_�Ή�02");
	MusicStart("SE03",0,700,0,1400,null,false);
	FadeDelete("�G���o", 30, Dxl2, true);

	Wait(500);

	Delete("�G�떇�G");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9000010a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Clear endures the pain and pulls the knife out of his head&.

Oil runs down his forehead then down to his cheeks&.

It's a heroic act&.&.&. And I can't take my eyes away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�摜", 1000, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9000020a01">
"Clear&.&.&."

{	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_shock");}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000030b18">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se�l��_����_���03");
	MusicStart("SE02",0,800,0,1000,null,false);

	St("C",740, @0,@0,"bu�N���A_���ʕ���_pride");
	FadeSt("C",500,true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9000040a04">
"&.&.&.Now&.&.&. The counter-attack begins&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");
	Request("�G�w�i", Smoothing);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Smiling&, covered in dripping oil&, Clear sways and stands 
up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�i�C�t_���Ƃ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	St("C",740, @0,@0,"bu�N���A_���ʕ���_serious");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
He throws away the knife&, and rushes after ��&, who looks 
as dumbfounded as me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateMovieEX("�G�g����", 1000, 286, 50, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G�g����", 0, 3000, 3000, Dxl1, true);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//�e�F�g�����W���Ŏ������̉��o

	Fade("�G�g����", 0, 1000, null, true);
	Move("�G�w�i", 600, @0, @100, Dxl1, false);
	Zoom("�G�w�i", 600, 1500, 1500, Dxl3, false);
	Move("@StNameC/C*", 600, @0, @100, Dxl3, false);
	Zoom("@StNameC/C*", 600, 2000, 2000, Dxl1, false);
	Fade("@StNameC/C*", 200, 0, Axl1, true);
	DeleteSt("C", 0,true);

	Wait(30);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304121_5_���]�^���[���]�̊�_m.jpg");
	Delete("�G�g����");

	DrawDelete("�G����", 200, 100, null, "zoom_01_00_1", true);

	Wait(100);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl2, true);
	Wait(10);
	FadeDelete("�G�F��", 100, Dxl2, true);

	Wait(100);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 15, 15, 0, 0, 500, null, true);

	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_pinch");
	Move("@StNameC/C*", 0, @-20, @0, Dxl3, true);
	Move("@StNameC/C*", 150, @20, @0, Dxl2, false);
	FadeSt("C",150,true);

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000050b18">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
He must've used overwhelming force&, because �� has to 
protect himself with his fists as he almost stumbles to the
ground&.

Clear moves to attack him&, only a hair's breadth away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateColorEX("�G�F��", 6000, "BLACK");
	CreateColorEX("�G�F����", 6001, "BLACK");
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	CreatePlainEX("�G��", 3001);
	CreatePlainEX("�G�ʓ�", 3000);
	Request("�G��*", Smoothing);
	Zoom("�G��", 0, 2500, 2500, null, true);
	Zoom("�G�ʓ�", 0, 1500, 1500, null, true);
	Move("�G�ʓ�", 0, @0, @100, null, true);

	$STime=130;
	$STime2=100;

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1800,null,false);
	Fade("�G�F��*", 0, 1000, null, true);
	Fade("�G�ʓ�", 0, 1000, null, true);
	DrawTransition("�G�F��*", $STime, 1000, 0, 100, Dxl2, "cg/data/zzexslide_01_00_0.png", true);
	Wait(200);

	CreateSE("SE01","se�퓬_����_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��*", 0, 1000, null, true);
	Fade("�G��", 0, 1000, null, true);
	Move("�G��", 0, -245, 10, null, true);
	DrawTransition("�G�F����", $STime2, 1000, 0, 100, Dxl3, "cg/data/circle_06_00_1.png", false);
	DrawTransition("�G�F��", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_06_00_0.png", false);
	Wait($STime2);


	CreateSE("SE01","se�퓬_����_���؂荂02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", $STime, 1000, Dxl2, true);
	Move("�G��", 0, 130, -270, null, true);
	Wait(5);

	DrawTransition("�G�F����", $STime2, 1000, 0, 100, Dxl3, "cg/data/circle_07_00_1.png", false);
	DrawTransition("�G�F��", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_07_00_0.png", false);
	Wait($STime2);


	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", $STime2, 1000, Dxl2, true);
	Move("�G��", 0, -130, 10, null, true);
	Wait(5);

	DrawTransition("�G�F����", $STime2, 1000, 0, 100, Dxl2, "cg/data/circle_05_00_1.png", false);
	DrawTransition("�G�F��", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_05_00_0.png", false);
	Wait($STime2);


	CreateSE("SE01","se�퓬_����_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", $STime, 1000, Dxl2, true);
	Move("�G��", 0, -245, -270, null, true);
	Wait(5);

	DrawTransition("�G�F����", $STime2, 1000, 0, 100, Dxl2, "cg/data/circle_08_00_1.png", false);
	DrawTransition("�G�F��", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_08_00_0.png", false);
	Wait($STime2);


	CreatePlainSP("�G�O�Պg", 3500);


	Zoom("�G�O�Պg", 300, 1200, 2800, Dxl1, false);

	Wait(30);
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
//	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 0, 1000, null, false);
	DrawTransition("�G�F��", 200, 0, 1000, 100, Dxl3, "cg/data/circle_01_00_0.png", true);
	DeleteSt("C", 0,true);
	Delete("�G�w�i*");
	Delete("�G��*");
	Delete("�G�O�Պg*");
	FadeDelete("�G�F��", 100, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
Clear's method of fighting involves no defense whatsoever&.

As if he has no time left&.&.&. Even I can see that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateSE("SE����","se�퓬_����_����01");
	CreateSE("SE����","se�퓬_����_���؂荂01");
	CreateSE("SE�Ђ�","se�[��_���__�Ђ�01");

	CreateTextureSP("�G����", 1100, Center, InBottom, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");
	CreateTextureSP("�G����", 1000, Center, InBottom, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");
	CreateTextureEX("�G���G", 1500, Center, InBottom, "cg/st/l/st�N���A_����_normal_l.png");
	CreateTextureEX("�G�O��", 2000, 0, 0, "cg/ef/efx01���M01.jpg");

	CreateColorEX("�G�F��", 1050, "BLACK");
	Fade("�G�F��", 0, 300, null, true);

	Request("�G���G", Smoothing);
	Zoom("�G�O��", 0, 4000, 4000, null, true);
	Move("�G���G", 0, @-500, @0, null, true);
	Rotate("�G�O��", 0, @0, @0, @-80, null,true);
	Move("�G�O��", 0, @2020, @-2130, null, true);

	SetShade("�G����", LIGHT);
	SetShade("�G����", LIGHT);
	Request("�G�O��", Smoothing);

	$SYSTEM_effect_drop_image = "cg/ef/effi�\�I����_mask11s.png";
	$SYSTEM_effect_drop_dencity = 40;
	$SYSTEM_effect_drop_speed = 30;
	$SYSTEM_effect_drop_swing = 256;
	$SYSTEM_effect_drop_rotate_x= 10;
	$SYSTEM_effect_drop_rotate_y = 10;
	$SYSTEM_effect_drop_rotate_z= 10;
	CreateEffect("�G�j��", 1051, 0, 0, 1000, 1000, "Drop");

	SetAlias("�G�j��","�G�j��");
	Request("�G�j��", Smoothing);
	Zoom("�G�j��", 0, 2000, 2000, null, true);
	Rotate("�G�j��", 0, @0, @0, @60, null,true);

//�e�F���܂��Ȃ�
	Wait(16);

	$SYSTEM_effect_drop_image = "cg/ef/effi�\�I����_mask08s.png";
	$SYSTEM_effect_drop_dencity = 20;
	$SYSTEM_effect_drop_rotate_x= 5;
	$SYSTEM_effect_drop_rotate_y = 5;
	$SYSTEM_effect_drop_rotate_z= 10;
	CreateEffect("�G�j�Г�", 1051, 0, 0, 1000, 1000, "Drop");

	SetAlias("�G�j�Г�","�G�j�Г�");
	Request("�G�j�Г�", Smoothing);
	Zoom("�G�j�Г�", 0, 2000, 2000, null, true);
	Rotate("�G�j�Г�", 0, @0, @0, @30, null,true);

	Fade("�G�j��", 0, 1000, null, true);
	Move("�G�j��", 0, @-300, @0, null, true);
	Fade("�G�j�Г�", 0, 1000, null, true);
	Move("�G�j�Г�", 0, @-300, @0, null, true);

	Move("�G���G", 400, 230, -1076, Axl3, false);
	Move("�G��*", 400, @100, @0, Axl3, false);
	Zoom("�G���G", 400, 1800, 1800, Axl3, false);
	Zoom("�G��*", 400, 1100, 1100, Axl3, false);

	Wait(200);
	Fade("�G���G", 300, 1000, null, false);

	MusicStart("SE����",0,700,0,1000,null,false);
	FadeDelete("�G��", 300, Axl1, true);

	SetVolumeEX("SE����", 0, 0, null);
	MusicStart("SE����",0,700,0,1000,null,false);
	FadeFF("�G�O��", 100, 1000, 300, @40, @40, Dxl1, true);
	Wait(100);

	Delete("�G���G");
//	Delete("�G����");
	Fade("�G����", 0, 0, null, true);
	Wait(50);

	SetVolumeEX("SE�Ђ�", 0, 0, null);
	MusicStart("SE�Ђ�",0,400,0,1000,null,false);
	Shake("�G����", 500, 50, 50, 0, 0, 500, null, false);
	FadeDelete("�G�O��", 100, null, true);

	Wait(500);
	Fade("�G����", 500, 1000, null, true);

	Wait(500);

	Delete("�G�F��");
	Delete("�G�j��*");
	Delete("�G����");
	Delete("�G���G");

	FadeDelete("�G����", 500, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
As he keeps moving&, parts of Clear's body crumble off everywhere&, and he sometimes stumbles on his feet&.

He's not going to be able to keep moving around like this&.
That means&.&.&. Soon&, Clear will&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G���G��", 1000, Center, Middle, "cg/st/m/st�N���A_���ʕ���_pinch_m.png");
	CreateTextureEX("�G���G��", 1000, Center, 0, "cg/st/m/st�N���A_����_normal_m.png");
	CreateTextureSP("�G���w�i", 100, Center, 0, "cg/bg/m/bg304122_5_���]�^���[���]�̊�_m.jpg");
	CreateTextureEX("�G���w�i", 1300, Center, 0, "cg/bg/l/bg304121_5_���]�^���[���]�̊�_l.jpg");
	CreateTextureEX("�G�����G", 2000, Center, -50, "cg/st/l/st�N���A��_�ʏ�}�X�N�Ȃ�_shock_l.png");
	CreateTextureEX("�G��G", 2000, 242, 0, "cg/fu/fu�N���A_����_normal.png");
	CreateTextureEX("�G��w�i", 100, Center, -70, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");

	CreateColorEX("�G�F��", 5000, "WHITE");
	CreateMovieEX("�G������", 2100, Center, Middle, true, true, "dx/mv0003�W����01_��.ngs");
	CreateMovieEX("�G�瓮��", 3000, Center, Middle, true, true, "dx/mv0003�W����01_��.ngs");
	Rotate("�G������", 0, @0, @0, -11, null,true);
	DrawTransition("�G������", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	DrawTransition("�G�瓮��", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);

	Request("�G��*", Smoothing);
	Request("�G��*", Smoothing);
	SetShade("�G���w�i", MEDIUM);
	SetShade("�G���w�i", MEDIUM);
	SetBlur("�G�����G", true, 3, 150, 200, false);

	Zoom("�G������*", 0, 3500, 3500, null, true);
	Zoom("�G�瓮��", 0, 3000, 3000, null, true);
	Move("�G������", 0, 240, 310, Dxl1, true);
	Move("�G���w�i", 0, @-150, @0, Dxl1, true);
	Move("�G�����G", 0, @-250, @0, Dxl1, true);
	Move("�G���G*", 0, @171, @0, null, true);

	Move("�G���w*", 800, @10, @-150, Axl2, false);
	Move("�G���G*", 800, @50, @-250, Axl2, false);
	FadeDelete("�G��", 300, Dxl1, true);
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G���G��", 200, 0, null, true);
	Fade("�G���G��", 200, 1000, null, true);

	Wait(200);

	CreatePlainSP("�G��", 5000);

	Fade("�G���w�i", 0, 1000, null, true);
	Fade("�G�����G", 0, 1000, null, true);

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G���w�i", 700, @150, @-35, Dxl1, false);
	Move("�G�����G", 700, @250, @-70, Dxl1, false);
	DrawDelete("�G��", 500, 300, Dxl2, "beam_03_00_1", false);
	Wait(600);
	SetBlur("�G�����G", false);

	CreateSE("SE01","se�퓬_����_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G������", 200, 600, Dxl3, false);
	Zoom("�G���w�i", 400, 1300, 1300, Dxl2, false);
	Zoom("�G�����G", 400, 1600, 1600, Dxl3, false);
	Move("�G���w�i", 400, -420, -630, Dxl2, false);
	Move("�G�����G", 400, 350, -950, Dxl2, false);
	Wait(250);
	Fade("�G�F��", 100, 1000, Dxl1, true);

	Delete("�G��*");
	Delete("�G��*");

	Fade("�G��*", 0, 1000, null, true);

	MoveFFP1("@�G��w�i",1300);
	Wait(16);
	MoveFFP2("@�G��G",1000);
	Wait(16);

	Zoom("�G��w�i", 210, 1200, 1200, Axl3, false);
	Zoom("�G��G", 210, 1300, 1300, Axl3, false);

	Wait(100);
	FadeDelete("�G�F��", 100, null, true);
	Fade("�G�瓮��", 100, 800, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
The anxiety rises to my head&, and as Clear staggers �� 
closes in the distance and kicks him&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F���������Ȃ������Ȃ�A�����Ɍジ����N���A�̉��o

	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304122_5_���]�^���[���]�̊�_m.jpg");
	CreateTextureEX("�G���o", 6000, Center, Middle, "cg/ef/efbg����03.jpg");

	Zoom("�G���o", 0, 2500, 2500, null, true);
	Rotate("�G���o", 0, @0, @0, @20, null,true);
	Move("�G���o", 0, @0, @288, null, true);

	Move("�G��w�i", 500, @50, @100, Dxl3, false);
	Move("�G��G", 300, @-100, @-200, Dxl3, false);
	Move("�G���o", 900, @-150, @-500, AxlDxl, false);

	Fade("�G��G", 100, 0, null, false);
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�퓬_����_����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G���o", 300, 1000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);
	Wait(600);

	MoveFFP1stop();
	MoveFFP2stop();
	Delete("�G��*");
	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,700,0,1300,null,false);
	DrawDelete("�G���o", 200, 100, Dxl2, "slide_04_01_1", false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|01");
	MusicStart("SE02",0,700,0,1300,null,false);
	Shake("�G�w�i", 500, 50, 50, 0, 0, 500, null, true);

	Wait(300);

	St("C",740, @0,@0,"bu�N���A_����_normal");

	Move("@StNameC/C*", 0, @-15, @60, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @15, @-30, Axl1, false);
	FadeSt("C",300,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Clear expertly jumps back to avoid the blow&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000060b18">
"&.&.&.Ha&. Your force is amazing&, but it's really nothing too
 special&."

{
	DeleteFw();
	DeleteAllSt(180,true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1100,null,false);

	St("C",740, @0,@0,"bu�N���A_���ʕ���_pinch");
	FadeSt("C",400,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9000070a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Clear takes painful gasps and scowls at ��&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000080b18">
"It's all in vain&. But soon you won't be able to move&, you
 know? You're ruined&, both inside and outside&."

{	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_pride");}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000090b18">
"This time I'll make sure to kill you slowly&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304121_5_���]�^���[���]�̊�_m.jpg");

	DeleteSt("C", 0,true);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);

	FadeDelete("�G��", 500, null, true);

	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
�� picks up the knife on the ground&, and composedly walks 
towards Clear&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	CreateSE("SE01","se�퓬_����_�i�C�t�\����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000100b18">
"I'll take away your free will that you've gained by
 breaking the key lock with the knife that you yourself so
 freely threw away&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9000110a01">
"Shit! Let me go!! Clear&, run! Hurry!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
Still feeling like I'm in a dream&, I try and shake off 
���Q and call out to Clear&.

{	DeleteSt("C", 200,true);}
And then �� approaches Clear with his knife in hand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i��", 100, Center, Middle, "cg/bg/m/bg304122_5_���]�^���[���]�̊�_m.jpg");
//	Zoom("�G�w�i��", 0, 2000, 2000, null, true);
	St("C",740, @0,@0,"bu�N���A_���ʕ���_serious");
	FadeSt("C",0,true);
	Fade("�G�w�i", 0, 0, null, true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
Clear&.&.&. isn't moving&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000120b18">
"Your fake master looks worried&. Is that okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʕ���_pinch");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9000130a04">
"&.&.&.&.&."

{	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_sigh");}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000140b18">
"So you've finally given up&. Then I'll take you down in one hit&. You're old&, but we're made of the same things&. Don't  worry&, I won't miss&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i��");
	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/9000150b02">
"So now we've arrived at the finale&.&.&. Take him away&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
Toue&, speaking in a tone that suggests he's lost interest&, commands ���Q to leave the room and I'm pulled towards the door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,700,null,false);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(50,300,20,0,0,0,1000,null,true);

	SetVolumeEX("SE02", 3000, 0, null);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9000160a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
Toue begins to walk out&, and ���Q pulls me along with even 
more force&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9000170a01">
"Clear!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

//	Fade("�G��", 500, 1000, null, true);

	St("C",700, @0,@0,"bu�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",0,true);
	Fade("�G�w�i", 0, 1000, null, true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000180b18">
"Well then&, this is where we really part&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�퓬_�Ō�_���؂��02");
	MusicStart("SE01",0,500,0,1800,null,false);

	CreatePlainSP("�G��", 990);
	FadeDelete("�G��", 100,Dxl3, true);

	CreateTextureEXadd("ef01", 1000, Center, Middle, "cg/ef/efx01���M01.jpg");//efx01���M01.jpg
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);
	Wait(30);
	FadeDelete("ef01", 350, Axl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
�� flashes a cruel smile and raises the knife&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateColorEX("�G�F��", 500, "000000");
	Fade("�G�F��", 0, 300, null, true);
	CreateTextureSP("�G�w�i��", 100, -491, 0, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");
	Fade("�G�w�i��", 0, 1000, null, true);
	SetShade("�G�w�i��", MEDIUM);

	St("C",700, @0,@0,"fu�N���A_���ʕ���_serious");
	FadeSt("C",0,true);

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
Clear&.&.&. still won't move&.

Why?
Has he given up like �� said?

Why&.&.&.

Why won't he move&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9000190a01">
"Clear&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�����G", 2700, -141, -246, "cg/fu/x/fu�N���A��_�}�X�N�Ȃ�_pride_x02.png");
	Zoom("�G�����G", 0, 700, 700, null, true);
	Request("�G�����G", Smoothing);

	CreateTextureSP("�G���w�i", 2000, Center, Middle, "cg/bg/l/bg304121_5_���]�^���[���]�̊�_l.jpg");
	SetVertex("�G�����G", 0, 300);
	SetVertex("�G���w�i", 732, 428);
	Request("�G�����G", Smoothing);

	Move("�G���w�i", 0, @-50, @0, null, true);
	Move("�G�����G", 0, @-100, @0, null, true);

	Move("�G���w�i", 1000, @50, @0, Dxl1, false);
	Move("�G�����G", 1000, @100, @0, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

//	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000200b18">
"Bye-bye&, brother&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	CreateMovieEX("�G����", 3000, 286, 50, true, true, "dx/mv0003�W����02_��.ngs");
	Zoom("�G����",0,5000,5000,null,true);
	Move("�G����", 0, 795, 575, null, true);

//	Fade("�G����", 500, 800, null, false);

	CreateSE("SE01","se�퓬_����_���؂荂02");
	MusicStart("SE01",0,700,0,800,null,false);
	Zoom("�G�����G", 450, 2000, 2000, Dxl1, false);
	Zoom("�G�����G", 450, 2000, 2000, Dxl1, false);
	Zoom("�G���w�i", 450, 2000, 2000, Dxl2, false);

	Fade("�G����", 200, 800, Dxl2, false);
	Wait(180);
//	FadeDelete("�G�����G", 200, Dxl1, false);

	CreateColorSPadd("�G�F��", 5000, "WHITE");
//	Fade("�G�F��", 200, 1000, Dxl2, false);
	DrawTransition("�G�F��", 200, 0, 1000, 80, Dxl3, "cg/data/circle_05_00_0.png", true);

	Delete("�G�O��");
	Delete("�G�w�i");
	Delete("�G����");
	Delete("�G��*");
	DeleteSt("C", 0,true);

	St("C",700, @0,@0,"fu�N���A_���ʕ���_serious");
	FadeSt("C",0,true);

	FadeDelete("�G�F��", 500, null, true);

	Wait(500);

	St("C",700, @0,@0,"fu�N���A_���ʕ���_normal");
	FadeSt("C",500,true);

	Wait(500);
	St("C",700, @0,@0,"fu�N���A_���ʕ���_think");
	SetVolumeEX("@dm*", 1500, 0, null);
	FadeSt("C",1500,false);

	Wait(500);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,800,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 1000, 1000, Dxl2, true);
*/

	CreateMovieEX("�G����", 3000, Center, Middle, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G����",0,5000,5000,null,true);

	CreateSE("SE01","se�퓬_����_���؂荂02");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("�G��", 2800);

	Zoom("�G��", 450, 2000, 2000, Dxl1, false);
	Fade("�G����", 200, 800, Dxl2, false);
	Wait(180);

	CreateColorSPadd("�G�F��", 5000, "WHITE");

	Delete("�G�O��");
	Delete("�G�w�i");
	Delete("�G����");
	Delete("�G��*");
	DeleteSt("C", 0,true);
	Delete("�G��");

	St("C",700, @0,@0,"fu�N���A_���ʕ���_serious");
	FadeSt("C",0,true);

	FadeDelete("�G�F��", 500, null, true);

	Wait(500);

	St("C",700, @0,@0,"fu�N���A_���ʕ���_normal");
	FadeSt("C",500,true);

	Wait(500);
	St("C",700, @0,@0,"fu�N���A_���ʕ���_think");
	SetVolumeEX("@dm*", 1500, 0, null);
	FadeSt("C",1500,false);

	Wait(500);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,800,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 1000, 1000, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
And at that moment&.&.&.

Clear spreads out both of his arms&, and breathes in deeply&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEXadd("�G�떇�G��", 1001, 0, -576, "cg/ev/l/ev940�̂��N���A_l.jpg");
	CreateTextureSP("�G�떇�G", 1000, 0, -576, "cg/ev/l/ev940�̂��N���A_l.jpg");

	SetShade("�G�떇�G��", MEDIUM);

	Delete("�G�w�i*");
	Delete("�G�F��");

	DeleteSt("C", 0,true);

	SoundPlay("@dm020a",1500,450,true);
	Move("�G�떇�G*", 12000, @-512, @0, AxlDxl, false);
	Fade("�G�F��", 1000, 0, null, true);

	Wait(2000);

	Zoom("�G�떇�G��", 3000, 1200, 1200, Dxl1, false);
	Move("�G�떇�G��", 3000, @0, @-100, Dxl1, false);
	Fade("�G�떇�G��", 1000, 900, null, false);

	Wait(1000);

	Zoom("�G�떇�G��", 3000, 1500, 1500, Axl1, false);
	Move("�G�떇�G��", 3000, @0, @-100, Axl1, false);
	Fade("�G�떇�G��", 1500, 0, null, false);

	Wait(2500);

	Fade("�G�F��", 1000, 1000, null, true);

	Zoom("�G�떇�G��", 0, 1000, 1000, Dxl1, true);
	Move("�G�떇�G*", 0, -1024, -288, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0251]
His soft voice begins to sing a slow melody&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/9000210b18">
"This is&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�떇�G*", 12000, @512, @0, AxlDxl, false);
	Fade("�G�F��", 1000, 0, null, true);

	Wait(2000);

	Zoom("�G�떇�G��", 3000, 1200, 1200, Dxl1, false);
	Move("�G�떇�G��", 3000, @0, @-100, Dxl1, false);
	Fade("�G�떇�G��", 1000, 900, null, false);

	Wait(1000);

	Zoom("�G�떇�G��", 3000, 1500, 1500, Axl1, false);
	Move("�G�떇�G��", 3000, @0, @-100, Axl1, false);
	Fade("�G�떇�G��", 1500, 0, null, true);

	Wait(1000);

	Fade("�G�F��", 1000, 1000, null, true);

	Delete("�G�떇*");

	CreateSE("SE01","se�퓬_�i�C�t_���Ƃ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
�� steps back in surprise&, and the knife falls from his 
hand&.

���Q stops moving as well&, and crouches over&, groaning in 
pain&.

He lets go of my arms&.

But&.&.&. I'm unable to get closer to Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm020a", 3000, 700, null);

//	CreateTextureEXadd("�G���w�i", 1003, -810, -440, "cg/ef/ef�N���A�̉̐�_l.jpg");
//	CreateTextureEXadd("�G�떇�G��", 1001, Center, Middle, "cg/ev/ev940�̂��N���A.jpg");
//	CreateTextureSP("�G�떇�G", 1000, Center, Middle, "cg/ev/ev940�̂��N���A.jpg");

	CreateTextureEXadd("�G�떇�G��", 1001, -141, -14, "cg/ev/l/ev940�̂��N���A_l.jpg");
	CreateTextureSP("�G�떇�G", 1000, -141, -14, "cg/ev/l/ev940�̂��N���A_l.jpg");


	SetVertex("�G���w�i", 215, 120);

//	Zoom("�G���w�i", 0, 1200, 1200, null, true);
	Zoom("�G�떇�G��", 0, 1250, 1250, null, true);
//	Fade("�G���w�i", 0, 1000, null, true);
	Fade("�G�떇�G��", 0, 600, null, true);

	SetShade("�G�떇�G��", MEDIUM);

//	Zoom("�G���w�i", 2500, 1000, 1000, Dxl1, false);
	Zoom("�G�떇�G��", 3500, 1000, 1000, Dxl1, false);
//	FadeDelete("�G���w�i", 2000, null, false);
	FadeDelete("�G�떇�G��", 3000, null, false);
	FadeDelete("�G�F��", 1500, null, true);

	Wait(2500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0275]
Clear was singing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEXadd("�G�떇�G��2", 1003, Center, Middle, "cg/ev/ev940�̂��N���A.jpg");
	CreateTextureEX("�G�떇�G2", 1002, Center, Middle, "cg/ev/ev940�̂��N���A.jpg");

	Fade("�G�떇�G2", 500, 1000, null, true);

	Zoom("�G�떇�G��2", 0, 1000, 1000, Dxl1, true);
	Fade("�G�떇�G��2", 0, 500, null, true);
	SetShade("�G�떇�G��2", MEDIUM);
	Zoom("�G�떇�G��2", 1500, 1100, 1100, null, false);
	FadeDelete("�G�떇�G��2", 1500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
His singing voice is beautiful&, even now&.&.&. and it 
captivates me&.

It is such a tragic display&, but I can only think of how 
beautiful his singing is&.

Clear's song envelopes me in a certain calmness&, but also 
brings up a sharp pain from the bottom of my heart&. 
It's strange&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm4500.nss"]
//�����t�@�C��["dm4491.nss"]

}
