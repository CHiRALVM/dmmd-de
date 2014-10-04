//<continuation number="40">
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


scene dm2370.nss_MAIN
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

	#bg304121_5_���]�^���[���]�̊�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2380_vs.nss";

}


scene dm2370.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateSE("SE01","se����_�h�A���]�̊�_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
White walls&, a white floor and a white ceiling&.

Is this Toue's room&, the one Noiz mentioned?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1200,0,800,null,false);
	Wait(3000);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/7000010a01">
"Noiz&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_���ʐ��]_normal");
	FadeSt("C",200,true);}
	SetVolumeEX("SE*", 50, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.There he is&.

Good&, he's safe&.

Extremely relieved&, I smile&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/7000020a01">
"I&.&.&. was really worried about you&. You didn't come back at all&. Were you all right?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreateSE("SE01","se�l��_����_�ߎC��17");
//	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I try to walk towards Noiz&, but I stop midway&.

&.&.&.Strange&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Noiz just stands there&, watching me without moving&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G��", 1000);
	SetShade("�G��", SEMIHEAVY);
	Fade("�G��", 800, 800, null, true);

	CreatePlainSP("�G�ʍŏ�i", 9990);

	CreateColorEX("�G�F����", 1010, "000000");
	Fade("�G�F����", 0, 750, null, true);

	CreatePlainSP("�G�ʏ�", 9900);
	CreateTextureSP("�G�����G", 1110, Center, -70, "cg/fu/fu�m�C�Y_���ʐ��]_normal.png");
	Request("�G�����G", Smoothing);
	Zoom("�G�����G", 0, 2000, 2000, null, true);

	CreateTextureSP("�G���w�i", 1100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Zoom("�G���w�i", 0, 2000, 2000, null, true);

	DrawTransition("�G�ʏ�", 1, 1000, 600, 100, null, "cg/data/slide_05_01_0.png", true);

	FadeDelete("�G�ʍŏ�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Staring at me with sharp eyes&.

&.&.&.Lifeless&, chilly eyes&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʍŏ�i", 9990);
	Delete("�G�ʏ�");
	Delete("�G�����G");
	Delete("�G���w�i");
	FadeDelete("�G�ʍŏ�i", 600, null, true);

	FadeDelete("�G�F����", 400, Dxl3, false);
	FadeDelete("�G��", 400, Axl3, true);

{	Fw("fwAM�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/7000030a06">
"&.&.&.Aoba&, it's coming&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/7000040a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	CreatePlainEX("�G��", 800);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("@�G�F��", 300, 1000, Axl3, true);
	Wait(100);
	Fade("@�G��", 0, 1000, null, true);
	DrawEffect("@�G��", 5000, "Ripple", 500, 100, null);
	Delete("@OnBG*");
	Fade("@�G�F��", 3000, 0, null, true);
	Delete("@�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Suddenly&, the space around us twists and distorts inward&.

&.&.&.No way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateMaskEX("�G��", 0, Center, Middle, "cg/data/slide_02_00_1.png", false);
	SetVertex("�G��", center, top);
	CreateColorEX("�G��/�G�F��", 5000, "000000");

	Zoom("�G��", 2000, 1000, 2000, Axl3, false);
	Move("�G��", 20000, @0, 1152, null, false);

	Fade("�G��/�G�F��", 500, 1000, null, false);
	Zoom("�G��", 5000, 1000, 20000, AxlDxl, true);

	CreateSE("@EFWIN/SE01","se�[��_���C��_�����g01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	$nextrhymescene="dm2380_vs.nss";

//�����t�@�C��["dm2380_vs.nss"]

}
