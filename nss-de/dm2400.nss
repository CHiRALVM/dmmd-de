//<continuation number="20">
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


scene dm2400.nss_MAIN
{
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
	#�C�x���g�t�@�C����=true;

	//�����o������������
	Request("@SE01", UnLock);
	Request("@SE01_ef", UnLock);
	TiesMovieDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2410scr.nss";

}


scene dm2400.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	if($PreGameName=="dm2390_vs.nss"){
	CreateTextureSP("�G���G��", 1110, Center, Middle, "cg/ev/ev239�E�l�}�V�[���m�C�Yvs���t.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G���G��", 0, 1080, 1080, null, true);
	}
	FadeDelete("��w�i", 0, null, true);
	SetVolumeEX("@dm*", 150, 0, null);


	CreatePlainSP("�G��", 10000);
	Delete("�G���G��");

//����u�A�����t�̌��e�������
//���r�d�F�ǂ���A�ǂ���A�ƐS�������[�v
	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	CreateColorEX("�G�F��", 5000, "000000");

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	Delete("�G��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
�@�\�\�\�\�@Use it�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Move("@�G�������t�U�f", 0, @0, -180, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
�@�\�\�\�\�@Use the power�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Move("@�G�������t�U�f", 0, @0, -220, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
�@�\�\�\�\�@Use it�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 5000);
	TemptationDelete("�G�������t�U�f���B");
	CreateColorSP("�G�F��", 5000, "000000");
	Delete("�G��");

	CreateSE("SEL01","se�[��_���__�����g01L");
	MusicStart("SEL01",3000,400,0,600,null,true);

	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
&.&.&.Again&.

The headache returns and I hear the voice&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 10000);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/ev900�����P�l�̑��t.jpg",1000,1000);

	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	CreateColorEX("�G�F��", 5000, "000000");

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

//���r�d�F�ǂ���A�ǂ���A�ƐS�������[�v
	//SetVolumeEX("SE*", 1000, 0, null);

	CreateSEEF("SE01","se�l��_�S��_�ۓ�01L");
	Delete("�G��");
	MusicStartEF("SE01",0,1000,0,1000,null,true);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
�@�\�\�\�\�@If you don't hurry&, it'll be too late�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DrawTransition("�G�������t�U�f���B", 1, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	TemptationAobaSet("�G�������t�U�f",1100,Center,-80,"cg/ev/ev900�����P�l�̑��t.jpg",1250,1250);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
�@�\�\�\�\�@Come on&, use it�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DrawTransition("�G�������t�U�f���B", 1, 0, 300, 100, null, "cg/data/slide_05_00_0.png", true);
	TemptationAobaSet("�G�������t�U�f",1100,Center,-120,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
�@�\�\�\�\�@Go inside his head�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DrawTransition("�G�������t�U�f���B", 1, 0, 200, 100, null, "cg/data/slide_05_00_0.png", true);
	TemptationAobaSet("�G�������t�U�f",1100,Center,-20,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",1500,1500);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	SetVolumeEF("@SE01",300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
�@�\�\�\�\�@and reveal it�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, null);
	Request("@SE01", UnLock);
	Request("@SE01_ef", UnLock);

	PrintGO("��w�i", 20000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);
	TemptationDelete("�G�������t�U�f���B");

	CreateSE("SE02","se�[��_����_�̓N���A01");
	MusicStart("SE02",0,500,0,1500,null,false);
	SetVolumeEX("SE02", 2000, 1200, null);
	SetFrequency("SE02", 2000, 1470, null);

	FadeDelete("��w�i", 2000, Axl2, true);
	SetVolumeEX("SE01", 600, 0, null);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/0000010a01">
"AAAAAAaaaaaaaaah!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�m�C�Y_���ʐ��]_normal");
	FadeSt("C",0,true);}

	FadeDelete("�G�F��", 1000, null, true);
	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
An intense spear of pain pierces through the inside of my  head and everything begins to move in slow motion&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
My hand grips Noiz's forehead on its own&.<k>
And&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G��", 1900);
	Request("�G��", Smoothing);
	Move("�G��", 0, @0, 60, null, true);
	Zoom("�G��", 0, 1500, 1500, null, true);
	Fade("�G��", 500, 1000, null, true);

	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//���͔�����
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/0000020a01">
"&.&.&.I'll go inside of you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SCRAPINSE01","se�l��_�S��_�ۓ�02L");
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

//���u�\�I�v����
//���m�C�Y�̐��_���E��
	ScrapIn("�]���\�Ia",2000);
	Delete("�G��");
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();
	Wait(2000);

//�����t�@�C��["dm2410scr.nss"]

}
