//<continuation number="840">
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


scene dm5590_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";

	CreateTxtinEffect("�@",4000);
	CreateTxtinEffect("���]",4000);
	RMDefaultStatusSet();
	RMDControlSet();

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
	#ev010�K��a=true;
	#ev559�@�A�K����������j=true;
	#ev900���C���ΐ푓�tVS���]2=true;
	#ev900���C���ΐ푓�tVS���]2_�A�b�v=true;
	#ev950�@�̌��C�\��=true;
	#ev950�@�o�g���ėp�U��=true;
	#ev950�@�o�g���ėp�ːi=true;
	#ev950�@�o�g���ėp�h��=true;
	#ev950�@�o�g���ėp�h��_����=true;
	#bg201051_0_���C�����]=true;
	#bg201052_0_���C�����]=true;

	//�����o��̏���������
	Request("@�G�w�i�K��", UnLock);
	Request("@�G�K������", UnLock);
	Request("@�G�K������������", UnLock);
	Request("@�G�K��", UnLock);
	Request("@�G�K����", UnLock);
	Request("@�G�K���Q", UnLock);
	Request("@�G�Ō�K��", UnLock);
	Request("@�G�K��������", UnLock);
	Request("@�G�K����������", UnLock);
	Request("@SEF*", UnLock);
	Request("@SE01", UnLock);
	Request("@SE01_ef", UnLock);
	SetLoopPoint("@dm023",1789,93204);
	RMDControlDelete();
	EffectTxtinDelete();
	EffectAllDelete();



	//������������ł̏����ݒ�
	if($SYSTEM_skip && #SYSTEM_skip_express && !$dm5590_vs_musicB){
		$dm5590_vs_music=false;
	}

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5600.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=5;

}


scene dm5590_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	RMDControlRDefault($���t�g�o);//5000
	RMDControlLDefault($���]�g�o);//5000
	$�����t�g�o=$���t�g�o;
	$�����]�g�o=$���]�g�o;
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);
	CreateColorSPadd("�G�F��", 15000, "FFFFFF");
	OnBG(10,"bg201051_0_���C�����]");
	FadeBG(0,true);
	CreateTextureSP("�G���w�i", 1010, Center, InBottom, "cg/bg/l/bg201051_0_���C�����]_l.jpg");
	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 0, null, true);
	FadeDelete("�G�F��", 3000, null, true);

//�������u���o�F�ŏ��̒Ҏa��Ɠ������A���C���v�����o�͂���������v

//�����]�A���C���W�J�B���t�������肱�܂��B
//�����]�̃t�B�[���h�B��䶗��➐�����w�i�ɕ����Ă���a���Ő_��I�Ȑ��E�B���]�̃I�[�����C�g�͉K���B
//�@�n�ʂ����ŕǁ��V��i�h�[���^�j�͈Â����Ƃ��B

	Wait(500);

//�e�F�K���o�ꕪ���ǂݍ���(1/3)
	CreateTextureEX("�G�w�i�K��", 1000, Center, InBottom, "cg/ev/ev010�K��_�w�i.jpg");
	Request("�G�w�i�K��", Lock);
	CreateTextureEX("�G�K������", 1005, Center, InBottom, "cg/ev/ev010�K��_���ʞ���.png");
	Request("�G�K������", Lock);
	CreateTextureEXadd("�G�K������������", 1005, Center, InBottom, "cg/ev/ev010�K��_���ʞ���.png");
	Request("�G�K������������", Lock);
	CreateTextureEX("�G�K��", 1005, Center, InBottom, "cg/ev/ev010�K��_�l���K���̂�.png");
	Request("�G�K��", Lock);
//�����܂Ł�����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
This is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateProcessEX("�v���Z�X", "Proc_dm5590_vs_01Act");
	Request("�v���Z�X", Start);

	Wait(3700);

//�e�F�K���o�ꕪ���ǂݍ���(2/3)
	CreateTextureEXadd("�G�K����", 1015, Center, -320, "cg/ev/ev010�K��_�l���K���O.png");
	Request("�G�K����", Lock);
	RhymeDrawSet("�K��",2000,center,InBottom,"cg/ev/ev010�K��_�l���K���̂�.png");
//C����

	SoundPlay("@dm021",0,450,true);//���]�ƑΌ�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011a]
A Rhyme field&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011b]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000010a01">
"Rhyme&.&.&. So it's Toue&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Request("�v���Z�X", Stop);

	if($Proc_dm0190_vs_01Act==true){
	}else{
	CreatePlainSP("�G��", 10000);
	Move("@�G���w�i", 0, @0, -288, null, true);
	Zoom("@�G���w�i", 0, 500, 500, null, true);
	FadeDelete("�G��", 500, null, true);
	}
	$Proc_dm0190_vs_01Act=false;
	Delete("�v���Z�X");

	CoilStartSet();
	St("C",1740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_normal");
	Position($C_��, $x1, $y1);
	RhymeDrawSet("�@�O���l�^",1750,$x1,$y1,"cg/bu/bu�@_�ʏ�}���g�Ȃ�_normal.png");
	CreateSE("SE01a","se�[��_���C��_����01");

	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("�@�O���l�^");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011c]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000020a06">
"Seems so&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
This will be the second time I've fought with Toue in 
Rhyme&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G���w�i��", 2100, Center, 0, "cg/bg/l/bg201052_0_���C�����]_l.jpg");
	Move("�G���w�i��", 15000, @0, -390, DxlAuto, false);
	Fade("�G���w�i��", 2000, 1000, null, false);

//�e�F�K���o�ꕪ���ǂݍ���(3/3)
	CreateTextureEX("�G�K���Q", 1014, Center, -320, "cg/ev/ev010�K��_�l���K��.png");
	Request("�G�K���Q", Lock);
	CreateTextureEX("�G�Ō�K��", 1025, Center, -320, "cg/ev/ev010�K��.jpg");
	Request("�G�Ō�K��", Lock);
	CreateTextureEXadd("�G�K��������", 1100, Center, InBottom, "cg/ev/ev010�K��_���ʞ����O.png");
	Request("�G�K��������", Lock);
	CreateTextureEX("�G�K����������", 1004, Center, InBottom, "cg/ev/ev010�K��_���ʞ����O.png");
	Request("�G�K����������", Lock);
//�����܂Ł�����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
This wasn't the field from last time&, though&.
So this must be Toue's real field&.

A mysterious place with a gloomy and ghastly mood to it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G���w�i��", 0, 1000, null, false);
	DeleteAllSt(0,true);
	Delete("�G���w�i");

	OnBG(10,"bg201051_0_���C�����]");
	FadeBG(0,true);

	FadeDelete("�G���w�i��", 1400, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I lost last time&, now&.&.&.

I feel more powerful&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	St("C",1740, @0,@0,"st���]_�ʏ�_normal");
	Position($C_��, $x1, $y1);
	RhymeDrawSet("�@�O���l�^",1750,$x1,$y1,"cg/st/st���]_�ʏ�_normal.png");
	CreateSE("SE01a","se�[��_���C��_����01");

	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("�@�O���l�^");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
The scenery begins to shake&, and two figures appear&.<k>
One of them is Toue&, and the other&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�K���o��F�����ɃA�b�v
	//CreatePlainSP("�G��", 5000);
	PrintGO("��w�i", 10000);

	DeleteAllSt(0,true);
	//CreateTextureSP("�G�w�i", 100, Center, InBottom, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06_l.jpg");
	//CreateColorSP("�G�w�i", 100, "000000");

	SetVertex("�G�K������*", 512, 1067);
	Zoom("�G�K������", 0, 0, 0, null, true);
	Rotate("�G�K������*", 0, @-30, @0, @0, null,true);

	SetVolumeEX("SE*", 1000, 0, null);
	Delete("�G�F��");
	FadeDelete("��w�i", 500, null, true);

	Request("�G�w�i�K��", UnLock);
	Request("�G�K������", UnLock);
	Request("�G�K������������", UnLock);
	Request("�G�K��", UnLock);
	Request("�G�K����", UnLock);
	Request("�G�K���Q", UnLock);
	Request("�G�Ō�K��", UnLock);
	Request("�G�K��������", UnLock);
	Request("�G�K����������", UnLock);


//�K���o��F�����w������
	Zoom("�G�K������������", 0, 1100, 1100, null, true);
	CreateSE("SE11","se�[��_���C��_����01");
	MusicStart("SE11",0,700,0,1500,null,false);
	Fade("�G�K������", 0, 1000, null, false);
	Fade("�G�K������������", 0, 1000, null, false);
	DrawTransition("�G�K������", 500, 0, 1000, 50, null, "cg/data/zzex_turn_02_00_1 .png", false);
	DrawTransition("�G�K������������", 500, 0, 1000, 50, null, "cg/data/zzex_turn_02_00_1 .png", false);
	Zoom("�G�K������", 200, 990, 990, Dxl3, false);
	Zoom("�G�K������������", 200, 990, 990, Dxl3, false);
	Wait(190);
	Zoom("�G�K������", 300, 1000, 1000, Dxl1, false);
	Zoom("�G�K������������", 300, 1000, 1000, Dxl1, false);
	FadeDelete("�G�K������������", 800, null, true);
	Wait(50);


//�K���o��F�����w�p�x�ς���ĉK������
	CreateSE("SE21","se�[��_���C��_�����G���J�E���g01");
	MusicStart("SE21",0,700,0,1000,null,false);
	Fade("�G�w�i�K��", 0, 1000, Dxl1, false);
	DrawTransition("�G�w�i�K��", 500, 0, 1000, 1000, Dxl1, "cg/data/circle_17_00_0.png", false);
	Fade("�G�K��������", 500, 500, Dxl1, false);

	Move("�G�w�i�K��", 1000, @0, @200, Dxl1, false);
	Rotate("�G�K������*", 1000, @30, @0, @0, Dxl1,true);
	Wait(200);

//�K���o��F�K������
	CreateSE("SE31","se�[��_���C��_����01");
	MusicStart("SE31",0,700,0,1000,null,false);
	Fade("�G�K��������", 500, 1000, Dxl1, false);
	RhymeDrawFade("�K��");
	Fade("�G�K��", 200, 1000, null, true);
	Fade("�G�K����������", 500, 1000, Dxl3, false);
	Fade("�G�K��������", 500, 0, Dxl1, true);

	Wait(100);

	Move("�G�K��", 1000, @0, @-30, Dxl1, true);



	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000030a01">
"Wha? Is that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�K���o��F�K����ɃJ�����ړ�
	Move("�G�K��", 2000, @0, -320, AxlDxl, false);
	Move("�G�K������*", 2000, @0, -320, AxlDxl, false);
	Move("�G�w�i�K��", 2000, @0, -320, AxlDxl, true);
	Delete("�G�K������");
	Delete("�G�K��������");

	CoilStartSet();
	Wait(200);

	CreateSE("SE41","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SE42","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SE43","se�[��_���C��_�����G���J�E���g01");

	MusicStart("SE41",0,700,0,1300,null,false);
	CoilStartFade();
	Fade("�G�K����", 300, 1000, Dxl1, false);
	Fade("�G�K���Q", 300, 1000, Dxl1, true);
	MusicStart("SE42",0,700,0,1300,null,false);
	Wait(50);
	Fade("�G�K��*", 1000, 0, Dxl1, false);
	Fade("�G�Ō�K��", 1000, 1000, Dxl1, false);
	Wait(150);
	MusicStart("SE43",0,700,0,1300,null,false);
	Wait(850);
	Delete("�G�K��*");
	Delete("�G�w�i�K*");

{	Fw("fw���t_�ʏ�_worry4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023b]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000040a01">
"Usui&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

���K���̖ڂ��J�b�ƊJ���B�K������ɕϐg�B
	Request("�@�O��*", UnLock);
	Delete("�@�O��*");
	CreatePlainSP("�G��", 10000);

	Wait(16);
	CoilIntoDelete();
	Delete("�G�Ō�*");
	Delete("�K��*");
	Delete("�G�w�i*");

	CreateTextureSP("�G�d�u", 1000, Center, 0, "cg/ev/x/ev010�K��_x06.jpg");
	Move("�G�d�u", 2000, @0, -70, DxlAuto, false);
	FadeDelete("�G��", 1000, null, true);

	WaitAction("@�G�d�u", null);

	CreateSE("SE01","se�[��_����_�h��03");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateSE("SE02","se�퓬_���C��_��͔���01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	CreateEffectSP("�G����", 4990, Center, Middle, 1024, 576, "Plain");
	Zoom("�G����", 1, 1100, 1100, null, true);
	SetBlur("�G����", true, 3, 500, 200, false);

	CreateTextureSP("�G�d�u", 1000, Center, -70, "cg/ev/x/ev010�K��a_x06.jpg");

	Wait(30);

	FadeDelete("�G�F��", 150, null, false);
	Zoom("�G����", 1400, 1000, 1000, Dxl3, true);
	Delete("�G����");

	CreateTextureEX("�G�d�u�Q", 1110, Center, -1100, "cg/ev/m/ev010�K��a_m.jpg");
	Move("�G�d�u�Q", 30000, @0, -900, DxlAuto, false);
	Fade("�G�d�u�Q", 1000, 1000, null, true);

	Wait(1000);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000050a01">
"Why does Usui look like that?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");//�l�^��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000060a06">
"That's Toue's Allmate&. That is Usui's true form&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000070a01">
"Are you serious&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureSP("�G��", 1010, 0, -350, "cg/ev/l/ev900���C���ΐ푓�tVS���]2_l.jpg");
	Move("�G��", 10000, @0, -270, DxlAuto, false);
	FadeDelete("�G�d�u�Q", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000080b02">
"Now&, shall we begin? Your turn first&, Aoba-kun&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 5000);
	Move("�G��", 0, -710, -620, DxlAuto, false);
	Move("�G��", 10000, @0, -700, DxlAuto, false);
	FadeDelete("�G��", 1000, null, true);

//{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000090a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G��", 1010, Center, -560, "cg/ev/ev010�K��a.jpg");
	CreateTextureSP("�G�����G", 1740, 550, 20, "cg/bu/bu���]_�ʏ�_normal.png");

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
A calm and cool smile rises to Toue's face&.

His carefree attitude just fires me up more&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Can I really win this?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	$TextBoxDelete=true;

//	PrintGO("��w�i", 10000);
	CreatePlainSP("��w�i", 10000);

	OnBG(10,"bg201051_0_���C�����]");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",0,true);

	Delete("�G�d�u");
	Delete("�G��");
	Delete("�G�����G");

	SetVolumeEX("@dm*", 2000, 0, null);

//�������u���F��o���Ȃ��͉̂��o�ł��v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000100a06">
"It'll be fine&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("��w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
When I turned my eyes to his strong affirmation&, I found 
Ren looking right at me&.

&.&.&.That's right&.<k>
I have Ren&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000110a01">
"Well&, ready or not!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�������瓌�]��̋ȗ��������������ǂȂ񂩂��܂�ɐ������������̂ł�߂��I�v
	SetStream("@dm023", 44700);
	SetLoopPoint("@dm023",44700,93264);
	SoundPlay("@dm023",0,450,true);//�����Q

//�����t�̍U���B�u��v�Z�b�g�B�@�̘r���璷���n������яo���A�؂荞�݂ɍs������B

	CreateSE("SE00","se�퓬_����_������01");
	MusicStart("SE00",0,700,0,600,null,false);

	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteAllSt(0,true);
	Delete("@OnBG*");


//�������u���o�܂Ƃ߁F�@�ːi�v
//��`
	CreateMovieEX("�G������", 2100, Center, Middle, true, true, "dx/mv0003�W����04_��&.ngs");
	Rotate("�G������", 0, @0, @0, -11, null,true);
	DrawTransition("�G������", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	Zoom("�G������", 0, 3000, 3000, null, true);
	Fade("�G������", 0, 500, null, true);

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");
	MoveCamera("�b", 0, @0, @0, 5000, null, true);

	CreateTextureSP("�b/�G���@�ːi�w�i", 0, -1110, -1220, "cg/ev/l/ev950�@�o�g���ėp�U��a_�w�i_l.jpg");
	CreateTextureSP("�b/�G���@�ːi��", 500, 800, -500, "cg/ev/ev950�@�o�g���ėp�ːi_�l���@.png");
	Position("@�b/�G���@�ːi��", $x1, $y1);
	CreateTextureEX("�b/�G���@�ːi�ꍕ", 500, $x1, $y1, "cg/ev/x/ev950�@�o�g���ėp�ːi_�l���@_xb.png");
	Fade("�b/�G���@�ːi�ꍕ", 0, 800, null, true);

	CreateTextureEXadd("�b/�G���@�ːi���", 500, $x1, $y1, "cg/ev/ev950�@�o�g���ėp�ːi_�l���@.png");

	Zoom("�b/�G���@�ːi��*", 0, 10, 10, null, true);

	CreateProcessEX("�v���Z�X", "Proc_dm0200_vs_02Act");

//�J�n
	MoveCamera("�b", 300, @0, @0, 1250, Dxl2, false);
	Move("�b/�G���@�ːi�w�i", 80000, 0, -1450, null, false);
	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);
	Request("�v���Z�X", Start);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fade("�b/�G���@�ːi�ꍕ", 3600, 0, Dxl1, false);
	Position("@�b/�G���@�ːi��", $x1, $y1);
	BezierMove("�b/�G���@�ːi��*", 900, ($x1,$y1){200,-180}{0,-180}(-20, -240), Dxl2, false);
	Zoom("�b/�G���@�ːi��*", 1000, 250, 250, Dxl2, true);

	Wait(300);

//���t��J�b�g�C����`
	CreateTextureEX("�G����", 4990, Center, Middle, "cg/mask/ci�X���b�V��_02_00z.png");
	CreateMaskEX("�G��", 0, Center, Middle, "cg/mask/ci�X���b�V��_02_00.png", false);
	CreateColorSP("�G��/�G�F��", 5000, "FFFFFF");
	CreateTextureSPsub("�G��/�G�����t�w�i", 2100, Center, Middle, "cg/ef/efbg����02.jpg");
	CreateTextureSP("�G��/�G�����t��", 2100, 350, 20, "cg/fu/fu���t_�ʏ�_angry.png");
	SetVertex("�G��/�G�����t��", 460, 260);
	Zoom("�G��/�G�����t��", 0, 1500, 1500, null, true);
	Request("�G��/�G�����t��", Smoothing);
	SetBlur("�G��/�G�����t��", true, 2, 500, 80, false);

	Zoom("�G��", 0, 5000, 0, null, true);
	Rotate("�G��", 0, @0, @0, -270, null,true);
	Zoom("�G����", 0, 5000, 0, null, true);
	Rotate("�G����", 0, @0, @0, -270, null,true);


//���t��J�b�g�C���J�n
	Zoom("�G��", 400, 1000, 600, Dxl3, false);
	Rotate("�G��", 400, @0, @0, 0, Dxl3,false);
	Zoom("�G����", 400, 1000, 600, Dxl3, false);
	Rotate("�G����", 400, @0, @0, 0, Dxl3,false);
	Wait(200);
	Fade("�G����", 200, 1000, null, false);
	Fade("�G��/�G�F��", 200, 0, null, true);

	Wait(100);

//�������u���F�Z���t��ǉ����܂����v
	CreateVOICE("���t","ex06/0000080a01");//��Z�b�g
	$SETime = RemainTime("���t")-100;
	MusicStart("���t",0,1800,0,1000,null,false);

	Zoom("�G��/�G�����t��", 300, 1950, 1950, AxlDxl, true);

	WaitKey($SETime);

	SetVolumeEX("���t", 150, 0, null);

	CreateVOICE("�@","dm55/4000170a06");//����
	$SETime = RemainTime("�@");
	MusicStart("�@",0,1800,0,1000,null,false);
	WaitKey($SETime);
	SetVolumeEX("�@", 150, 0, null);

//���t��J�b�g�C����
	Fade("�G����", 300, 0, null, false);
	Fade("�G��/�G�F��", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("�G����", 200, 1000, 0, AxlDxl, false);
	Zoom("�G��", 200, 1000, 0, AxlDxl, true);

//��̓Z�b�g
	EffectTxtinA("�@","��");

	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);

//��͌��ʂɂ��@����
	Fade("�b/�G���@�ːi���", 0, 500, null, true);
	Zoom("�b/�G���@�ːi���", 0, 275, 275, null, true);

	FadeDelete("�G�F��", 70, null, false);

	EffectTxtinB("�@","��");

//�����ʂɈڍs���鏀��

	CreateColorEX("�G����", 10000, "BLACK");

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,700,null,false);

//�@�F�ːi�i�s
	Move("�b/�G���@�ːi��*", 400, -200, -200, Axl2, false);
	$�@�g��=1000;
	Zoom("�b/�G���@�ːi��", 400, $�@�g��, $�@�g��, Axl2, false);
	$�@���g�嗦����=$�@�g��*1&.1;
	Zoom("�b/�G���@�ːi���", 400, $�@���g�嗦����, $�@���g�嗦����, Axl2, false);

	Wait(300);

	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateMovieSP("�G������", 2100, Center, Middle, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G������", 0, 3000, 3000, null, true);


	Delete("�b");
	Delete("�G��*");
	Request("�v���Z�X", Stop);
	Delete("�v���Z�X");

	$�����]�g�o=$���]�g�o;
	$�_���[�W�k=0;
	$�����]�g�o=$�����]�g�o-$�_���[�W�k;
	RMDControlInL(0,$�����]�g�o);

	CreateTextureSP("�G��", 1100, Center, -870, "cg/ev/m/ev010�K��a_m.jpg");
	Zoom("�G��", 0, 1000, 1000, null, true);
	SetBlur("�G��", true, 3, 500, 60, false);
	Zoom("�G��", 800, 2500, 2500, Dxl2, false);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Fade("�G������", 650, 0, null, true);


	CreateSE("SE02a","se�퓬_����_�����؋�01");

//�K���ɂ�����J����������f��
	Move("�G��", 600, @0, 576, Axl3, false);
	Wait(590);

	MusicStart("SE02a",500,700,0,2000,null,false);
	SetFrequency("SE02a", 2000, 500, null);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateMovieSP("�G������", 5100, Center, Middle, true, true, "dx/mv0003�W����04_��&.ngs");
	Rotate("�G������", 0, @0, @0, 90, null,true);
	Zoom("�G������", 0, 2000, 3400, null, true);

	CreateColorSP("�G�����ʐ����F", 4890, "FFFFFF");
	CreateTextureEXsub("�G�����ʐ���", 4890, 330, -20, "cg/ef/efbg����01.jpg");
	Zoom("�G�����ʐ���", 0, 2000, 2000, null, true);

	CreateTextureSP("�G�����ʐ�", 4900, Center, -4788, "cg/ef/efbg����91t.jpg");
	Zoom("�G�����ʐ�", 0, 2000, 1000, null, true);

	Fade("�G�����ʐ�", 2000, 0, null, false);
	Shake("�G�����ʐ���", 1900, 20, 0, 0, 0, 1000, Dxl3, false);
	Shake("�G�����ʐ�", 1900, 20, 0, 0, 0, 1000, Dxl3, false);
	Move("�G�����ʐ�", 1400, @0, -288, Dxl3, false);
	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);


//�V�Ŏ~�܂�
	Wait(400);
	SetVolumeEX("SE02a", 4000, 0, null);
	Fade("�G������", 450, 0, null, false);
	Wait(400);

	Fade("�G�����ʐ���", 500, 1000, null, false);
	Move("�G�����ʐ���", 1300, @0, 0, DxlAuto, false);
	Fade("�G�����ʐ�", 1000, 0, null, true);

	Wait(500);

//�@�󒆂���̊�P
	CreateTextureEX("�G���@�ˌ��\", 5110, 295, -330, "cg/ev/x/ev950�@�o�g���ėp�ːi_�l���@_xb.png");
	Zoom("�G���@�ˌ��\", 0, 50, 50, null, true);
	SetBlur("�G���@�ˌ��\", true, 3, 500, 30, false);

	CreateTextureEXmul("�G���@�ˌ��Ռ��g", 5109, 380, -96, "cg/ef/ef�N���A�̉̐�.jpg");
	Zoom("�G���@�ˌ��Ռ��g", 0, 2000, 2000, null, true);


	Move("�G���@�ˌ��\", 300, 290, -340, DxlAuto, false);
	Zoom("�G���@�ˌ��\", 3000, 90, 90, null, false);
	Fade("�G���@�ˌ��\", 300, 1000, null, true);

	Wait(2000);

	CreateSE("SE02b","se�퓬_����_������02");
	MusicStart("SE02b",0,700,0,1000,null,false);

	Fade("�G���@�ˌ��Ռ��g", 0, 500, null, true);
	Zoom("�G���@�ˌ��Ռ��g", 150, 3000, 3000, Dxl3, false);
	Fade("�G���@�ˌ��Ռ��g", 100, 0, null, true);

	Rotate("�G���@�ˌ��\", 40, @0, @0, -45, null,false);
	Zoom("�G���@�ˌ��\", 200, 3000, 3000, Dxl2, false);
	Move("�G���@�ˌ��\", 200, -256, -128, null, false);

	Wait(80);

//�J�������K���ɖ߂�
	Fade("�G����", 0, 0, null, true);
	DrawTransition("�G����", 0, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Fade("�G����", 100, 1000, null, true);
	Delete("�G���@*");
	Delete("�G�����ʐ�*");

	CreateTextureEX("�G���K����", 1110, Center, Middle, "cg/ef/efv�K��_��䶗��h��.png");

	CreateTextureEXadd("�G���@�a������", 1215, -200, -160, "cg/ev/ev950�@�o�g���ėp�U��_���ʌ��M.png");
	CreateProcessEX("�v���Z�X", "Proc_dm5590_vs_02Act");
	CreateSE("PSE02","se�퓬_�@_����01");
	MusicStartSet("PSE02",1200,0,1000,null,false);

	CreateTextureEX("�G���@�ːi�\", 1210, 340, -150, "cg/ev/ev950�@�o�g���ėp�ːi_�l���@.png");
	CreateTextureEX("�G���@�a���\", 1210, -180, -1024, "cg/ev/ev950�@�o�g���ėp�U��_�l���@.png");

	Rotate("�G������", 0, @0, @0, -90, null,true);
	Fade("�G������", 0, 500, null, false);

	Zoom("�G��", 0, 1000, 1000, null, true);
	Move("�G��", 300, @0, -870, null, false);
	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Fade("�G������", 300, 0, null, false);

//�@�K������䶗��̃V�[���h�Ŗh��B���S�ɒe�����B

	CreateSE("SE03","se�퓬_�Ռ�_�h�ǔ���01");
	Zoom("�G���K����", 1, 0, 0, null, true);
	SetBlur("�G���K����", true, 3, 500, 200, false);

	Wait(100);

	SetVertex("�G���@�a���\", 1220, 700);
	SetBlur("�G���@�a���\", true, 3, 500, 60, false);
	Rotate("�G���@�a���\", 0, @0, @0, 30, null,true);
	Fade("�G���@�a���\", 0, 1000, null, true);

	Rotate("�G���@�a���\", 150, @0, @0, 0, Dxl3,false);
	Move("�G���@�a���\", 100, -280, -90, null, false);
	Wait(140);

	//Fade("�G���@�a������", 0, 1000, null, true);
	//DrawTransition("�G���@�a������", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", false);

	Request("�v���Z�X", Start);//���M����

	$�_���[�W�k=90;
	$�����]�g�o=$�����]�g�o-$�_���[�W�k;
	RMDControlInL(1000,$�����]�g�o);

	MusicStart("SE03",0,700,0,1000,null,false);
	Zoom("�G���K����", 300, 1500, 1500, Dxl3, false);
	Fade("�G���K����", 300, 700, null, false);

	WaitAction("@�G���@�a���\", null);
	Shake("�G���@�a���\", 100, 2, 4, 0, 0, 1000, null, false);

	Wait(150);

	Fade("�G���@�a���\", 0, 0, null, true);
	Fade("�G���@�ːi�\", 0, 1000, null, true);

	CreateSE("SE04","se�퓬_����_������01");
	MusicStart("SE04",0,700,0,1600,null,false);
	Zoom("�G���@�ːi�\", 200, 2000, 2000, null, false);
	Move("�G���@�ːi�\", 200, -1024, 800, null, true);

	Zoom("�G���K����", 10000, 1600, 1600, null, false);
	Fade("�G���K����", 500, 0, null, true);

//�@�@���߂��Ă���B

	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	PrintGO("��w�i", 10010);

	CreateTextureSP("�G��", 1110, 0, Middle, "cg/ev/ev900���C���ΐ푓�tVS���]2.jpg");
	Zoom("�G��", 0, 1200, 1200, null, true);

	Zoom("�G��", 400, 1000, 1000, Dxl1, false);
	FadeDelete("��w�i", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000120a01">
"-! He's pretty tough&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	RMDControlOutL(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000130b02">
"Now it's my turn&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����]�A�u���v���Z�b�g�B
//�@�K���̎���𞐎��̋ʂ������������сA���ꂼ��������ɕ�܂�đ��t�̕��֍����Ŕ��ł���B

	PrintGO("��w�i", 10010);
	CreateColorSP("�G�F��", 10000, "000000");

	CreateColorSP("�G�F���w�i", 10, "000000");
	CreateTextureEX("�G���K����U����", 1100, Center, -497, "cg/ev/x/ev010�K��a.png");
	Zoom("�G���K����U����", 0, 2000, 2000, null, true);
	CreateTextureSP("�G���K����U��", 1100, Center, -1290, "cg/ev/l/ev010�K��a_l.jpg");

	Move("�G���K����U��*", 3000, @0, @50, DxlAuto, false);

	FadeDelete("��w�i", 500, null, true);
	Fade("�G�F��", 500, 0, null, true);

	Wait(1000);

	EffectTxtinA("���]","��");
	EffectTxtinB("���]","��");

	Fade("�G�F��", 250, 1000, null, true);
	Fade("�G���K����U��*", 0, 0, null, true);


	CreateTextureEX("�G���K����U��������", 1100, Center, -282, "cg/ev/x/ev010�K��a.png");
	Zoom("�G���K����U��������", 0, 750, 750, null, true);

	CreateColorSP("�G���K����U���������ʍ�", 1101, "000000");

	CreateTextureEX("�G���K����U������������", 1105, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	CreateTextureEXadd("�G���K����U�����������ʌ�", 1105, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	Zoom("�G���K����U������������*", 0, 250, 250, null, true);
	SetBlur("�G���K����U�����������ʌ�", true, 3, 500, 60, false);


	Delete("�G�F��");

	CreateSE("SE01","se�[��_����_�͓��]01");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1200,0,1500,null,false);

	Zoom("�G���K����U������������*", 200, 780, 780, Dxl3, false);

	Fade("�G���K����U������������*", 0, 1000, null, true);
	Fade("�G���K����U�����������ʌ�", 200, 0, null, true);

	Fade("�G���K����U��������", 0, 1000, null, true);
	Fade("�G���K����U���������ʍ�", 200, 0, null, true);


	Zoom("�G���K����U������������", 1000, 880, 880, DxlAuto, false);
	Fade("�G���K����U������������", 1000, 850, DxlAuto, true);

	CreateTextureEX("�G���K����U���������̎l", 1110, 113, 157, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//��
	CreateTextureEX("�G���K����U���������̎Q", 1110, 355, 413, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//��
	CreateTextureEX("�G���K����U���������̓�", 1110, 606, 157, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//�E
	CreateTextureEX("�G���K����U���������̈�", 1110, 355, -88, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//��
	Rotate("�G���K����U����������*", 60000, @0, @0, 36000000, null,false);

	CreateSE("SE02a","se�[��_����_�͓��]01");
	CreateSE("SE02b","se�[��_����_�͓��]01");
	CreateSE("SE02c","se�[��_����_�͓��]01");
	CreateSE("SE02d","se�[��_����_�͓��]01");

	CreateColorEX("�G���K����U������", 1200, "FFFFFF");

	MusicStart("SE02a",0,1200,0,800,null,false);
	Zoom("�G���K����U���������̈�", 200, 1200, 1200, null, false);
	Fade("�G���K����U���������̈�", 200, 1000, null, true);

	MusicStart("SE02b",0,1200,0,800,null,false);
	Zoom("�G���K����U���������̓�", 200, 1200, 1200, null, false);
	Fade("�G���K����U���������̓�", 200, 1000, null, true);

	MusicStart("SE02c",0,1200,0,800,null,false);
	Zoom("�G���K����U���������̎Q", 200, 1200, 1200, null, false);
	Fade("�G���K����U���������̎Q", 200, 1000, null, true);

	MusicStart("SE02d",0,1200,0,800,null,false);
	Zoom("�G���K����U���������̎l", 200, 1200, 1200, null, false);
	Fade("�G���K����U���������̎l", 200, 1000, null, true);

	CreateSE("PSE31a1","se�퓬_����_������02");
	MusicStartSet("PSE31a1",500,0,1200,null,false);
	CreateSE("PSE31b1","se�퓬_����_������02");
	MusicStartSet("PSE31b1",500,0,1200,null,false);
	CreateSE("PSE31c1","se�퓬_����_������02");
	MusicStartSet("PSE31c1",500,0,1200,null,false);
	CreateSE("PSE31d1","se�퓬_����_������02");
	MusicStartSet("PSE31d1",500,0,1200,null,false);

//���̂�������`���Ȃ�����ł���
	Proc_dm5590_vs_03();
	Wait(200);

//��ʂ𔒂�
	Fade("�G���K����U������", 200, 1000, null, true);

//���̉�ʉ��ړ��F����
	Delete("�G���K����U����������*");
	Delete("�G���K����U��������*");
	Delete("�G���K����U��������*");

	CreateColorSP("�G�������w�i������", 11, "000000");
	DrawTransition("�G�������w�i������", 1, 0, 100, 500, null, "cg/data/slide_05_00_1.png", true);

	CreateTextureSP("�G�������w�i��", 10, 0, Middle, "cg/ef/efbg����91.jpg");
	CreateTextureSP("�G�������w�i��", 10, 0, Middle, "cg/ef/efbg����91.jpg");
	CreateSCR1("@�G�������w�i��","@�G�������w�i��",300,-4000,@0);

	CreateTextureSP("�G���K����U���������̎l", 1110, 113, 72, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//��
	Shake("�G���K����U���������̎l", 600000, 1, 8, 0, 0, 1000, null, false);
	CreateTextureSP("�G���K����U���������̎Q", 1110, 355, 144, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//��
	Shake("�G���K����U���������̎Q", 600000, 1, 6, 0, 0, 1000, null, false);
	CreateTextureSP("�G���K����U���������̓�", 1110, 606, 360, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//�E
	Shake("�G���K����U���������̓�", 600000, 1, 4, 0, 0, 1000, null, false);
	Move("�G���K����U����������*", 0, @-1024, @0, null, true);
	CreateTextureSP("�G���K����U���������̈�", 1110, Center, Middle, "cg/ev/x/ev010�K��a_�U���p����_x01s.png");//��
	Position("@�G���K����U���������̈�", $x1, $y1);
	Shake("�G���K����U���������̈�", 600000, 1, 3, 0, 0, 1000, null, false);
	Zoom("�G���K����U����������*", 0, 1100, 1100, null, true);

	CreateMovieEX("�G������", 4000, Center, Middle, true, true, "dx/mv0003�W����04_��&.ngs");
	Zoom("�G������", 0, 3000, 2500, null, true);
	DrawTransition("�G������", 1, 0, 500, 500, null, "cg/data/slide_05_00_0.png", true);

	Rotate("�G���K����U����������*", 600000, @0, @0, 10000000, null,false);
//���̉�ʉ��ړ��F���������܂Ł�����

//���̉�ʉ��ړ�����O�ɒ���������
	CreateSE("SE01","se�퓬_����_�����؋�01");
	MusicStart("SE01",1000,700,0,2000,null,false);
	SetFrequency("SE01", 2000, 500, null);
	Fade("�G������", 2000, 700, null, false);
	Zoom("�G���K����U���������̈�", 0, 8000, 8000, null, true);
	Fade("�G���K����U������", 200, 0, null, false);
	Position("@�G���K����U���������̈�", $x1, $y1);
	BezierMove("�G���K����U���������̈�", 2000, (@0,@0){100,200}{200,100}($x1,$y1), AxlDxl, false);
	Zoom("�G���K����U���������̈�", 2000, 1100, 1100, AxlDxl, true);
	SetVolumeEX("SE01", 1000, 0, null);

	Wait(200);

//���̎��ԍ��ːi�F����
	CreateProcessEX("Pr04a", "Proc_dm5590_vs_04aAct");
	CreateProcessEX("Pr04b", "Proc_dm5590_vs_04bAct");
	CreateProcessEX("Pr04c", "Proc_dm5590_vs_04cAct");
	CreateProcessEX("Pr04d", "Proc_dm5590_vs_04dAct");

	CreateSE("PSE04a1","se�퓬_�E�T�M_���ːi01");
	MusicStartSet("PSE04a1",700,0,2000,null,false);

	CreateSE("PSE04b1","se�퓬_�E�T�M_���ːi01");
	MusicStartSet("PSE04b1",700,-400,2000,null,false);

	CreateSE("PSE04c1","se�퓬_�E�T�M_���ːi01");
	MusicStartSet("PSE04c1",700,400,2000,null,false);

	CreateSE("PSE04d1","se�퓬_�E�T�M_���ːi01");
	MusicStartSet("PSE04d1",700,200,2000,null,false);


	CreateSE("PSE04a2","se�퓬_���C��_��͐Z���ėp02");
	MusicStartSet("PSE04a2",700,0,2000,null,false);

	CreateSE("PSE04b2","se�퓬_���C��_��͐Z���ėp02");
	MusicStartSet("PSE04b2",700,-400,2000,null,false);

	CreateSE("PSE04c2","se�퓬_���C��_��͐Z���ėp02");
	MusicStartSet("PSE04c2",700,400,2000,null,false);

	CreateSE("PSE04d2","se�퓬_���C��_��͐Z���ėp02");
	MusicStartSet("PSE04d2",700,200,2000,null,false);

//���̎��ԍ��ːi�F���������܂Ł�����

//���̎��ԍ��ːi
	Request("Pr04a", Start);
	Wait(150);
	Request("Pr04b", Start);
	Wait(150);
	Request("Pr04c", Start);
	Wait(800);
	Request("Pr04d", Start);

	Wait(2000);

	CreateColorSP("�G�F��", 10000, "000000");
	DrawTransition("�G�F��", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("@Pr*");
	Delete("�G���K��*");
	Delete("�G�������w�i*");
	SCR1stop();

//�@�h��Ɉڍs������������������������������������������������������������

	CreateTxtinEffectS(3900,"�@","��");

	CreateTextureEX("�G�ꉺ", 3110, -210, -120, "cg/ev/ev950�@�o�g���ėp�h��_����.jpg");

	CreateTextureEX("�G��w�i����", 3120, -2000, -440, "cg/ev/l/ev950�@�o�g���ėp�h��_����_l.jpg");
	SetVertex("�G��w�i����", 1453, 830);
	Zoom("�G��w�i����", 0, 1100, 1110, null, true);

	CreateTextureEX("�G��w�i", 3110, -2000, -440, "cg/ev/l/ev950�@�o�g���ėp�h��_l.jpg");
	Zoom("�G��w�i", 0, 1500, 1500, null, true);

	FadeDelete("�G������", 800, null, false);

	DrawDelete("�G�F��", 150, 100, null, "slide_01_02_0", false);

	CreateVOICE("���t","dm55/9000140a01");//�u�@�A�h��I�v
	$SETime = RemainTime("���t")-100;
	CreateVOICE("�@","dm02/0000420a06");//�u�����I�v
	$SETime2 = RemainTime("�@")-100;

	CreateSE("SE51","se�퓬_����_������01");
	MusicStart("SE51",0,700,0,800,null,false);

	Position("@�G��w�i", $x1, $y1);
	Zoom("�G��w�i", 800, 1000, 1000, Dxl3, false);
	BezierMove("�G��w�i", 800, ($x1,$y1){-1920,-380}{-1650,-370}(-1170,-490), Dxl3, false);
	Fade("�G��w�i", 600, 1000, null, false);

	//Wait(600);

	Delete("@PSE*");
	MusicStart("���t",0,1600,0,1000,null,false);
	WaitKey($SETime);

	SetVolumeEX("���t", 150, 0, null);
	MusicStart("�@",0,1600,0,1000,null,false);
	WaitKey($SETime2);

	EffectTxtinS(700,"�@","��");

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("�G�F��", 4900, "FFFFFF");
	FadeDelete("�G�F��", 1000, null, false);

	Fade("�G�ꉺ", 0, 1000, null, true);

	Position("@�G��w�i", $x1, $y1);
	Move("�G��w�i����", 0, $x1, $y1, null, true);
	Fade("�G��w�i����", 0, 1000, null, true);
	SetBlur("�G��w�i����", true, 3, 500, 250, false);
	Wait(100);
	Zoom("�G��w�i����", 1000, 1000, 1000, null, false);
	Fade("�G��w�i����", 800, 0, null, false);
	Wait(500);
	Fade("�G��w�i", 800, 0, null, true);

//�q�b�g�G�t�F�N�g����
	CreateSE("SE16","se�퓬_�Ռ�_�h�ǌ���01");

	CreateSE("SE11","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE12","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE13","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE14","se�퓬_�Ō�_�q�b�g��04");

	CreateTextureEXadd("�G�����ʉΉ�", 4900, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);

	CreateMaskEX("��", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("��", 0, 2000, 2000, null, true);

	CreateColorEXadd("�G���]", 5000, "FFFFFF");
	CreateColorEXadd("��/�G�F��", 4890, "FFFFFF");

	Position("�G�ꉺ", $x1, $y1);//���_���擾
	SetVolumeEX("�@", 150, 0, null);

//�����_���q�b�g�G�t�F�N�g01��������������������������������������������������
//�h��ǂ����Ȃ茈��A�ȍ~�̃_���[�W�͑傫��
	MusicStart("SE11",0,700,0,1000,null,false);
	MusicStart("SE16",0,1200,0,1000,null,false);

	Fade("��/�G�F��", 0, 1000, null, true);

	CreateTextureSP("�G�ꉺ", 3110, $x1, $y1, "cg/ev/ev950�@�o�g���ėp�h��.jpg");
	CreateTextureSPadd("�G�ꉺ����", 3111, $x1, $y1, "cg/ev/ev950�@�o�g���ėp�h��_����.jpg");

	$�_���[�W�q=100;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	Fade("�G�ꉺ����", 800, 0, null, false);
	DrawDelete("�G�ꉺ����", 4000, 100, null, "zoom_01_00_1", false);
	FadeFFR3("�G�ꉺ", 0,1000, 200, 0, 0, 30,null, false);
	Fade("��/�G�F��", 170, 0, null, true);

	Wait(300);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g02��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=300;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g03��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=300;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);


	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g04��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=300;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Wait(100);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�


/*
	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000140a01">
"Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/

//���@�ɃV�[���h���点�Ėh�䂷��B�P�͒e�����Ƃ��ł��邪�A
//�@���������@�̃V�[���h�ɃM���M���߂肱��ł���B�@���B
//�@�Ȃ�Ƃ��e�����A�@�̕��Ƀ_���[�W���o��B

	CreateTextureEX("�G�w�i", 5010, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Fade("�G�w�i", 0, 1000, null, true);
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	BGPlainShake(5020,300,0,20,0,0,1000,null,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000150a01">
"Ren&, are you okay!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	$NoTextBoxDelete=true;
	PrintGO("��w�i", 9900);
	Delete("@��*");
	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");
	FadeDelete("��w�i", 0, null, true);

	RMDControlOutR(0);

{	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");}//�l�^��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000160a06">
"Yeah&."

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000170a01">
"Shit&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�̍U���B�u�c�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă��āA�����Ƀr���b�Ɠd��������B
//�@�r�����������ēd�C���߁����]�Ɍ������Ęr���J���ĕ��B

	EffectTxtinSDelete("�@","�c");
	CreateTxtinEffectS(4000,"�@","�c");

//���C��`
	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/x/ev950�@�̌��C�\��_���ʕ���_x01.png");
	SetVertex("EF1", 514, 435);
	Zoom("EF1", 0, 2300, 2300, null, true);

	CreateTextureEXadd("EF2", 1000, -212, 27, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("EF2", 0, 1800, 1800, null, true);

	CreateColorEXadd("EF3", 5000, "FFFFFF");
	DrawTransition("EF3", 0, 500, 500, 100, null, "cg/data/beam_03_00_0.png", true);
	Fade("EF3", 0, 0, null, true);

	CreateColorEXadd("EF4", 5000, "FFFFFF");

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_�n�ʂɎh��01");
	CreateSE("SE05","se�[��_���__�Ђ�02");
	CreateSE("SE06","se�[��_���__�E�o01");
	CreateSE("SE07","se�퓬_�Ռ�_�j��01a");
	CreateSEEX("SE08","se�퓬_���K�C_�`���[�W01");

	CreateMovieEX("�G����", 2000, 120, 170, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G����",0,5000,3000,null,true);

	CloudZoomSmokeSet01("���",200,"cg/ev/x/ev950�@�̌��C�\��_���ʎ��d_x01.png");

	//CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	//SetShade("�G�w�i", HEAVY);
	//Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureEX("�@�U��", 100, -250, Middle, "cg/ev/ev950�@�̌��C�\��.jpg");
	Request("�@�U��", Smoothing);
	Rotate("�@�U��", 0, @0, @0, @50, null,true);
	Zoom("�@�U��", 0, 1300, 1300, null, true);
	SetBlur("�@�U��", true, 2, 500, 50, false);

	CreateTextureEXadd("��", 100, Center, Middle, "cg/ef/effi�\�I����_ef01.png");
	Move("��", 0, @-250, @50, null, true);
	Zoom("��", 0, 5000, 5000, null, true);

	RotetoLoopOGM02("���v���Z�X","��",1800,-3600);
	RotetoLoopOGM03("���v���Z�X2","EF1",34000,-3600);

	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("��", 10000000, 3, 3, 3, 3, 900, null, false);

	SetVolumeEX("SEL21", 300, 0, null);
	SetVolumeEX("SE22", 300, 0, null);
	FadeDelete("�G�F��", 100, null, false);

	Delete("�G���w�i");

//�@���C�\��
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("�G�w�iEF02", 100, 1000, null, false);
	Fade("�G�w�i", 100, 1000, null, false);
	Zoom("�G�w�i", 650, 2000, 2000, AxlDxl, false);
	//BezierMove("�G�w�i", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
	BezierMove("�G�w�iEF02", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@150,@-150), null, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�iEF01", 0, 1000, null, true);
	Move("�G�w�iEF01", 400, -200, 0, Dxl2, false);
	FadeDelete("�G�w�iEF01", 200, Axl2, false);

	//Wait(100);

	FadeDelete("�G�w�iEF02", 200, Axl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);

	//Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);

	//SetBlur("�@�U��", true, 2, 300, 1000, false);
	Zoom("�@�U��", 300, 1100, 1100, Dxl3, false);
	Fade("�@�U��", 100, 1000, null, false);
	Move("�@�U��", 300, -180, -140, Dxl3, false);
	Rotate("�@�U��", 300, @0, @0, 0, Dxl2,true);
	SetBlur("�@�U��", false, 2, 300, 1000, false);

	WaitAction("@�@�U��", null);
	SetBlur("�@�U��", true, 2, 500, 50, false);

	EffectTxtinS(700,"�@","�c");

//�@���C�`���[�W
	MusicStart("SE08",0,600,0,200,null,true);
	Shake("�@�U��", 10000000, 3, 3, 3, 3, 900, null, false);
	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	Fade("�G����", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("��", 3000, 500, null, false);

	Zoom("�@�U��", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@�@�U��",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);


//�@���C����
	Shake("EF2", 1000, 10, 21, 0, 0, 1000, null, false);
	Fade("EF2", 0, 1000, null, true);
	Wait(50);

	MoveFTP1stop();
	MoveFTP2stop();

	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",0,700,0,1000,null,false);
	SetVolumeEX("SE08", 1000, 0, null);

	SetBlur("�@�ːi", true, 2, 300, 50, false);
	Move("�@�U��", 200, -20, -200, Dxl2, false);
	Fade("EF3", 50, 1000, null, true);

	Shake("�@�U��", 1000, 10, 3, 12, 7, 900, null, false);

	Wait(50);

	Fade("EF4", 200, 1000, Axl1, true);

	MusicStart("SE07",0,1000,0,1000,null,false);

	Wait(300);

//�@�K���A��䶗��̃V�[���h�Ŗh��B���S�ɒe�����B
//��ʐ؂�ւ��ē��]����
	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@��*");
	Delete("@�@�U��*");
	Delete("@���*");
	Delete("@�G����");
	Delete("@EF*");

	CreateTextureSP("�G��", 1100, Center, -1280, "cg/ev/l/ev010�K��a_l.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 500, 500, null, true);
	SetBlur("�G��", true, 3, 500, 60, false);

	CreateTextureEXadd("�G���K����", 1110, Center, Middle, "cg/ef/efv�K��_��䶗��h��.png");
	CreateSE("SE03","se�퓬_�Ռ�_�h�ǔ���01");
	Zoom("�G���K����", 1, 0, 0, null, true);
	SetBlur("�G���K����", true, 3, 500, 200, false);

	CreateSE("SE04","se�퓬_�Ռ�_�З͊g�U01");

	CreateColorEX("�G���K��������", 1120, "FFFFFF");
	DrawTransition("�G���K��������", 1, 0, 500, 100, null, "cg/data/effect_01_00_0.png", true);

	CreateMovieSP("�G������", 2100, Center, Middle, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G������", 0, 3000, 3000, null, true);

	$�_���[�W�k=0;
	$�����]�g�o=$�����]�g�o-$�_���[�W�k;
	RMDControlInL(0,$�����]�g�o);

	Fade("�G������", 600, 0, Dxl2, false);
	Zoom("�G��", 800, 1000, 1000, Dxl2, false);
	DrawDelete("�G����", 150, 100, null, "circle_01_00_0.png", true);

	Wait(600);

	$�_���[�W�k=180;
	$�����]�g�o=$�����]�g�o-$�_���[�W�k;
	RMDControlInL(1000,$�����]�g�o);

	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Zoom("�G���K����", 300, 1500, 1500, Dxl3, false);
	Fade("�G���K����", 300, 700, null, true);

	Fade("�G���K��������", 0, 1000, null, true);
	Fade("�G���K��������", 2000, 0, null, false);
	Request("�G���K����", NormalRender);
	Zoom("�G���K����", 10000, 1600, 1600, null, false);
	Fade("�G���K����", 500, 0, null, true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000180a01">
"We're not even making a dent on him&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	DeleteFw();
	RMDControlOutL(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateTextureEX("�G��", 5110, 0, -110, "cg/ev/ev900���C���ΐ푓�tVS���]2.jpg");
	Fade("�G��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000190b02">
"Fufu&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

//���K�������]�̑O�ɏo�Ă���B
	PrintGO("��w�i", 10000);
	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");
{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",0,true);}
	FadeDelete("��w�i", 500, null, true);

	SoundPlay("@dm021",0,450,true);//�s���Q

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000200b02">
"This Usui is also modeled on Sei&. They have the same face&, can't you tell?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000210a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���K���̊�A�b�v�H

	DeleteFw();
	CreateTextureEX("�G���q��", 1110, Center, InBottom, "cg/ev/l/evf08���t�o���̔閧_l.jpg");
	SetTone("�G���q��", Monochrome);
	Move("�G���q��", 30000, @0, 0, null, false);
	Fade("�G���q��", 500, 1000, null, true);

	Fw("fw���]_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000220b02">
"Sei and Aoba&. The twins chosen by fate&. Sei&, given a name
 that means life&, and you&, a child who died after birth&.&.&.
 chosen by death itself&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000230b02">
"Sei has the ability to give birth to things&, while you
 hold the power to destroy&. The two of you are one&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G����", 1120, -1024, -360, "cg/ev/l/ev515�������܂�Z�C_l.jpg");
	SetTone("�G����", Monochrome);
	Move("�G����", 30000, -90, @0, null, false);
	Fade("�G����", 500, 1000, null, true);
	Delete("�G���q��");

	Fw("fw���]_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000240b02">
"There were many times when Sei was comatose for the sake
 of brain and consciousness research&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000250b02">
"Sei&, who had lost his liberty&, had only his heart working&, and gave birth to a large scale self consciousness&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",0,true);}

	FadeDelete("�G����", 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000260b02">
"I would liken it to as if he had divided his own
 consciousness into a large amount of fragments&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000270b02">
"When following the electro-magnetic waves of the
 consciousness he created&, one can enter various places&.
 It's simple as a network system&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000280b02">
"It does not mean that the consciousness functions on its
 own&, but if one follows down the network&, they can reach
 an area of their choosing and access it&."


{	St("C",740, @0,@0,"st���]_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000290b02">
"Aoba-kun&. It's even possible to communicate with you
 across it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Sei communicated to me&.&.&.?

That must've happened at some point&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�����i", 1110, Center, Middle, "cg/ev/ev010���C���̗l�q.jpg");
	SetTone("�G�����i", Monochrome);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);

	CreateProcessEX("�v���Z�X", "Proc_dm5590_vs_05Act");
	Request("�v���Z�X", Start);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000300b02">
"As we put Sei's ability to use&, we created personal dolls
 by brainwashing them by injecting Sei's consciousness into
 them&. Usui is one of them&. And so&, Rhyme was created&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Request("�v���Z�X", Stop);
	Fade("�G�����i", 0, 1000, null, true);
	Delete("�v���Z�X");
	FadeDelete("�G�����i", 500, null, true);

//���K���\��

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000310b02">
"After that&, Sei's consciousness began to diffuse and
 gradually became weak&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000320a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("@dm*", 1000, 0, null);

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000330b02">
"Usui is the second Sei&, in a sense&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

//�����]�A�u���v���Z�b�g�B
//�@�K���̎���ɞ����̋ʂ������������яオ��A���ꂼ�ꏬ���ș�䶗��^�̐n�ɕω�����B
//�@���ꂪ���������ĉ�]�A���t�̕��֌������Ă���B

	CreateColorEX("�G����", 10000, "000000");
	Fade("�G����", 400, 1000, null, true);

	DeleteAllSt(0,true);

//�K���ő�U���f�ޒ�`����(1/4)��������������������������������������������������
	CreateColorSP("�G������", 55, "000000");
	Fade("�G����", 0, 0, null, true);

//��`�F�K�������̎��̔w�i
	CreateColorEX("�G�F", 50, "#000000");
	CreateTextureEXadd("�G�w�i", 50, Center, Middle, "cg/ef/efbg����01.jpg");

	Fade("�G�F", 0, 1000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);

//��`�F�K���J�b�g�C��
	CreateTextureEX("�G���K���ő�U����", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x01.jpg");
	CreateTextureEX("�G���K���ő�U����", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x02.jpg");
	CreateTextureEX("�G���K���ő�U���O", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x03.jpg");
	CreateTextureEX("�G���K���ő�U���l", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x04.jpg");
	CreateTextureEX("�G���K���ő�U����", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x05.jpg");
	CreateTextureEX("�G���K���ő�U���Z", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x06.jpg");
	Move("�G���K���ő�U���Z", 0, @0, @-40, null, true);

//��`�F�K���k���p
	CreateTextureEX("�G���K���ő�U���S�g", 1090, Center, -252, "cg/ev/x/ev010�K��a.png");

//��`�F�K����䶗�
	CreateTextureEXover("�G���K���ő�U����䶗��O", 1190, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	Zoom("�G���K���ő�U����䶗��O", 0, 500, 500, null, true);

	CreateTextureEXadd("�G���K���ő�U����䶗���", 1190, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	Zoom("�G���K���ő�U����䶗���", 0, 980, 980, null, true);
	SetBlur("�G���K���ő�U����䶗���", true, 3, 500, 100, false);


//��`�F�K���U���̔g��
	CreateMaskEX("�G��", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("�G��/�G���K���ő�U����䶗��e�C", 1200, Center, Middle, "cg/ef/ef�N���A�̉̐�_l.jpg");
	Zoom("�G��/�G���K���ő�U����䶗��e�C", 0, 1000, 1067, null, true);

	CreateColorEXadd("�G�F��", 2000, "#FFFFFF");

	CreateTxtinEffectS(2000,"���]","��");

//�����܂őf�ޒ�`����������������������������������������������������������

/*
&.�K���ő�U��1/4
*/


//�K���J�b�g�C��
	CreateSE("SE21a","se�[��_����_�͓��]01");
	CreateSE("SE21b","se�[��_����_�͓��]01");
	CreateSE("SE21c","se�[��_����_�͓��]01");
	CreateSE("SE21d","se�[��_����_�͓��]01");
	CreateSE("SE21e","se�[��_����_�͓��]01");

	$EF01Ftime=450;
	$EF01Wtime=50;
	$EF01Mtime=$EF01Ftime+$EF01Wtime*6;
	MusicStart("SE21a",0,700,0,500,null,false);
	Move("�G���K���ő�U����", $EF01Mtime, @-40, @-40, DxlAuto, false);
	Fade("�G���K���ő�U����", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U����", $EF01Ftime, 250, null, true);

	MusicStart("SE21b",0,700,0,500,null,false);
	Fade("�G���K���ő�U����", 0, 0, null, true);
	Move("�G���K���ő�U����", $EF01Mtime, @40, @0, DxlAuto, false);
	Fade("�G���K���ő�U����", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U����", $EF01Ftime, 250, null, true);

	MusicStart("SE21c",0,700,0,500,null,false);
	Fade("�G���K���ő�U����", 0, 0, null, true);
	Move("�G���K���ő�U���O", $EF01Mtime, @-40, @40, DxlAuto, false);
	Fade("�G���K���ő�U���O", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U���O", $EF01Ftime, 250, null, true);

	MusicStart("SE21d",0,700,0,500,null,false);
	Fade("�G���K���ő�U���O", 0, 0, null, true);
	Move("�G���K���ő�U���l", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("�G���K���ő�U���l", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U���l", $EF01Ftime, 250, null, true);

	MusicStart("SE21e",0,700,0,500,null,false);
	Fade("�G���K���ő�U���l", 0, 0, null, true);
	Move("�G���K���ő�U����", $EF01Mtime, @0, @-40, DxlAuto, false);
	Fade("�G���K���ő�U����", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U����", $EF01Ftime, 250, null, true);

	Fade("�G���K���ő�U����", 0, 0, null, true);
	Move("�G���K���ő�U���Z", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("�G���K���ő�U���Z", 0, 1000, null, true);

	Wait(1000);

//�����G�t�F�N�g�\��
	EffectTxtinS(700,"���]","��");
	Wait(1000);

//�K���S�g�\��
	CreateSE("SE21f","se�퓬_����_������01");
	MusicStart("SE21f",0,700,0,800,null,false);
	$EF02Ztime=350;
	Fade("�G���K���ő�U���S�g", 0, 1000, null, true);
	Zoom("�G���K���ő�U���S�g", 0, 6000, 6000, null, true);

	Zoom("�G���K���ő�U���Z", $EF02Ztime, 25, 25, Dxl3, false);
	Fade("�G���K���ő�U���Z", $EF02Ztime, 0, null, false);
	Move("�G���K���ő�U���S�g", $EF02Ztime, @0, -476, Dxl3, false);
	Fade("�G���K���ő�U���S�g", $EF02Ztime, 1000, null, false);
	Zoom("�G���K���ő�U���S�g", $EF02Ztime, 100, 100, Dxl3, false);
	Fade("�G������", $EF02Ztime, 0, Dxl3, true);

	Wait(150);

//�K����䶗���W�J
	CreateSE("SE22a","se�[��_����_�͓��]02");
	MusicStart("SE22a",0,700,0,1500,null,false);
	CreateSE("SE22b","se�퓬_���C��_��͔����������]�ėp01");
	SoundEffect("SE22b","SEWERPIPE");
	MusicStart("SE22b",0,700,0,500,null,false);
	Fade("�G���K���ő�U����䶗��O", 0, 1000, null, true);
	Fade("�G���K���ő�U����䶗��O", 200, 500, null, false);
	Zoom("�G���K���ő�U����䶗��O", 200, 700, 700, DxlAuto, true);

	Wait(100);

	Fade("�G���K���ő�U����䶗���", 0, 750, null, true);
	Fade("�G���K���ő�U����䶗���", 300, 500, null, false);
	Zoom("�G���K���ő�U����䶗���", 300, 700, 700, Dxl3, true);

//�K���e�C���オ��
	CreateSE("SE23a","se�퓬_���C��_��͔���01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se�[��_����_�͓��]02");
	MusicStart("SE23b",0,700,0,800,null,false);
	Rotate("�G��/�G���K���ő�U����䶗��e�C", 50000, @0, @0, 1080, null,false);
	Fade("�G��/�G���K���ő�U����䶗��e�C", 500, 500, null, false);
	DrawTransition("�G��/�G���K���ő�U����䶗��e�C", 6000, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("�G��", 3000, 10000, 10000, null, false);

	Wait(2000);

//�K���U������
	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 250, 0, 1000, 100, Axl1, "cg/data/circle_03_00_0.png", false);

	Wait(1000);

//�Ó]���ɘ@���̑f�ޒ�`����(2/4)��������������������������������������������������

//��`�F�@�h��
	CreateTextureEX("�G���@�K���ő�U���h��", 1200, -1600, -100, "cg/ev/x/ev950�@�o�g���ėp�h��_�@�̂�_x00.png");
	Zoom("�G���@�K���ő�U���h��", 0, 1200, 1200, null, true);

//��`�F�@�����ɏo���䶗�
	CreateTextureEXadd("�G���@�K���ő�U���h�䑫�������w", 1190, Center, 250, "cg/ef/efv�K��_��䶗��n_����.png");

	CreateTextureEX("�G���@�K���ő�U���h�䑫�������w����", 1190, Center, 250, "cg/ef/efv�K��_��䶗��n_����.png");
	SetBlur("�G���@�K���ő�U���h�䑫�������w����", true, 2, 500, 80, false);

//��`�F�@�K���̖��Ɉ������܂��
	CreateTextureEX("�G���@�K���ő�U���h�䑫�������w�e�C", 1200, Center, 0, "cg/ef/ef�N���A�̉̐�_l.jpg");

	CreateColorEX("�G�F��", 10100, "#000000");

//�Ó]���ɘ@���̑f�ޒ�`���������܂Ł���������������������������������������������������������

/*
&.�K���ő�U��2/4
*/

//�@�A�b�v����\��
	Fade("�G���K���ő�U��*", 0, 0, null, true);
	Fade("�G��/�G���K���ő�U��*", 0, 0, null, true);

	Move("�G���@�K���ő�U���h��", 5000, -1190, -250, null, false);
	Zoom("�G���@�K���ő�U���h��", 5000, 1000, 1000, null, false);
	Fade("�G���@�K���ő�U���h��", 0, 1000, null, true);

	Fade("�G�F��", 300, 0, null, true);

	Wait(1500);

//�@�S�g�\����
	CreateSE("SE24a","se�퓬_����_������01");
	MusicStart("SE24a",0,700,0,1500,null,false);
	Fade("�G�F��", 0, 1000, null, true);
	Move("�G���@�K���ő�U���h��", 200, -850, -820, Dxl2, false);
	Zoom("�G���@�K���ő�U���h��", 200, 250, 250, Dxl2, false);
	Fade("�G�F��", 300, 0, Axl3, false);

	Wait(500);

//�@�����ə�䶗����W�J
	CreateSE("SE24a","se�퓬_�Ռ�_���e01");
	Fade("�G���@�K���ő�U���h�䑫�������w", 500, 1000, null, true);

	MusicStart("SE24a",0,700,0,1500,null,false);
	Fade("�G���@�K���ő�U���h�䑫�������w����", 0, 500, null, true);
	Move("�G���@�K���ő�U���h�䑫�������w����", 2000, @0, @-200, Dxl1, false);
	Fade("�G���@�K���ő�U���h�䑫�������w����", 400, 0, null, true);

	Wait(300);

//�@�K���̖��Ɏ�荞�܂��
	CreateSE("SE25a","se�퓬_�Ռ�_���e02");
	MusicStart("SE25a",0,700,0,1500,null,false);
	CreateSE("SE25b","se����_���]�^���[_�n��01aL");
	MusicStart("SE25b",0,700,0,1500,null,true);
	Rotate("�G���@�K���ő�U���h�䑫�������w�e�C", 1000, @0, @0, 3600, null,false);
	Fade("�G���@�K���ő�U���h�䑫�������w�e�C", 1000, 1000, null, false);
	DrawTransition("�G���@�K���ő�U���h�䑫�������w�e�C", 300, 0, 1000, 100, null, "cg/data/circle_13_00_0.png", false);
	Zoom("�G���@�K���ő�U���h�䑫�������w�e�C", 1000, 5000, 10000, null, false);
	Wait(700);
	Fade("�G�F��", 300, 1000, null, true);

//�Ó]���ɘ@���̑f�ޒ�`����(3/4)��������������������������������������������������

//��`�F�K���̖��w�i
	//CreateColorEX("�G���w�i�K����", 51, "#FFFFFF");
	CreateTextureEX("�G���w�i�K����", 51, Center, Middle, "cg/ef/efbg�F��02.jpg");
	//DrawEffect("�G���w�i�K����", 0, "LowWave", 100, 100, null);
	Zoom("�G���w�i�K����", 0, 400, 400, null, true);


//��`�F�@���̐��E�ł̉e
	CreateTextureEX("�G���@�K���ő�U���h��e", 1200, -1600, -100, "cg/ev/x/ev950�@�o�g���ėp�h��_�@�̂�_x00b.png");
	Zoom("�G���@�K���ő�U���h��e", 0, 1200, 1200, null, true);


//��`�F���̐��E�ł̞���
	CreateTextureEX("�G���@�K���ő�U���h�䑫�������w�e", 1190, Center, 1152, "cg/ef/efv�K��_��䶗��n_����_b.png");
	Zoom("�G���@�K���ő�U���h�䑫�������w�e", 0, 2000, 2000, null, true);

	CreateTextureEX("�G���@�K���ő�U���h�䞐������", 1190, -340, -240, "cg/ef/efv�K��_��䶗��h�����.png");
	Zoom("�G���@�K���ő�U���h�䞐������", 0, 1000, 1000, null, true);

	CreateTextureEX("�G���@�K���ő�U���h�䞐������", 1190, 1124, -240, "cg/ef/efv�K��_��䶗��h�䕁��.png");
	Zoom("�G���@�K���ő�U���h�䞐������", 0, 1000, 1000, null, true);

	CreateTextureEX("�G���@�K���ő�U���h�䞐���ω�", 1210, -680, 140, "cg/ef/efv�K��_��䶗��h��ω�.png");
	Zoom("�G���@�K���ő�U���h�䞐���ω�", 0, 2000, 2000, null, true);
	Rotate("�G���@�K���ő�U���h�䞐���ω�", 0, @0, @180, @0, null,true);

	CreateTextureEX("�G���@�K���ő�U���h�䞐������", 1210, 1344, 140, "cg/ef/efv�K��_��䶗��h�䕶��.png");
	Zoom("�G���@�K���ő�U���h�䞐������", 0, 2000, 2000, null, true);
	Rotate("�G���@�K���ő�U���h�䞐������", 0, @0, @180, @0, null,true);

//��`�F�����Ռ��g
	$EFSeData=se�퓬_�Ռ�_���e02;
	CreateShockEffect_dm5590_vs(1,1191);
	EffectSE("SEF01",$EFSeData,700,-250,1000,0);
	CreateShockEffect_dm5590_vs(4,1205);
	EffectSE("SEF04",$EFSeData,700,250,1000,0);
	CreateShockEffect_dm5590_vs(2,1191);
	EffectSE("SEF02",$EFSeData,700,250,1000,0);
	CreateShockEffect_dm5590_vs(3,1205);
	EffectSE("SEF03",$EFSeData,700,-250,1000,0);

	EffectSE("SEF11",$EFSeData,700,-250,1000,0);
	EffectSE("SEF14",$EFSeData,700,250,1000,0);
	EffectSE("SEF12",$EFSeData,700,250,1000,0);
	EffectSE("SEF13",$EFSeData,700,-250,1000,0);

	EffectSE("SEF21",$EFSeData,700,-250,1000,0);
	EffectSE("SEF24",$EFSeData,700,250,1000,0);
	EffectSE("SEF22",$EFSeData,700,250,1000,0);
	EffectSE("SEF23",$EFSeData,700,-250,1000,0);

	EffectSE("SEF31",$EFSeData,700,-250,1000,0);
	EffectSE("SEF34",$EFSeData,700,250,1000,0);
	EffectSE("SEF32",$EFSeData,700,250,1000,0);
	EffectSE("SEF33",$EFSeData,700,-250,1000,0);

	Request("@SEF01", Lock);
	Request("@SEF02", Lock);
	Request("@SEF03", Lock);
	Request("@SEF04", Lock);
	Request("@SEF11", Lock);
	Request("@SEF12", Lock);
	Request("@SEF13", Lock);
	Request("@SEF14", Lock);
	Request("@SEF21", Lock);
	Request("@SEF22", Lock);
	Request("@SEF23", Lock);
	Request("@SEF24", Lock);
	Request("@SEF31", Lock);
	Request("@SEF32", Lock);
	Request("@SEF33", Lock);
	Request("@SEF34", Lock);

//�Ó]���ɘ@���̑f�ޒ�`���������܂Ł���������������������������������������������������������

/*
&.�K���ő�U��3/4
*/

	SetVolumeEX("SE2*", 800, 0, null);

//�@�K���̖��ɏo�Ă���
	CreateSE("SE31a","se�[��_����_���ǂ남�ǂ�01");
	SoundEffect("SE31a","SEWERPIPE");
	MusicStart("SE31a",2000,1000,0,500,null,true);
	Fade("�G���@�K���ő�U���h��*", 0, 0, null, true);
	Fade("�G���w�i�K����", 0, 1000, null, true);
	Fade("�G���@�K���ő�U���h��e", 0, 1000, null, true);
	Fade("�G���@�K���ő�U���h�䞐��*", 0, 1000, null, true);
	Fade("�G���@�K���ő�U���h�䑫�������w�e", 0, 1000, null, true);

	Zoom("�G���@�K���ő�U���h��e", 0, 2000, 2000, null, true);

	Fade("�G�F��", 500, 0, null, true);

	Wait(1000);

//�@�J�����������ƞ����Ɉ͂܂�Ă�

	$EF03Ztime=6000;
	Move("�G���@�K���ő�U���h��e", $EF03Ztime, -900, -720, Dxl2, false);
	Zoom("�G���@�K���ő�U���h��e", $EF03Ztime, 180, 180, Dxl2, false);

	Move("�G���@�K���ő�U���h�䑫�������w�e", $EF03Ztime, @0, 290, Dxl2, false);
	Zoom("�G���@�K���ő�U���h�䑫�������w�e", $EF03Ztime, 1000, 1000, Dxl2, false);

	Move("�G���@�K���ő�U���h�䞐������", $EF03Ztime, -60, -70, Axl1, false);
	Zoom("�G���@�K���ő�U���h�䞐������", $EF03Ztime, 500, 500, Axl1, false);
	Move("�G���@�K���ő�U���h�䞐������", $EF03Ztime, 590, -70, Axl1, false);
	Zoom("�G���@�K���ő�U���h�䞐������", $EF03Ztime, 500, 500, Axl1, false);
	Move("�G���@�K���ő�U���h�䞐���ω�", $EF03Ztime, -150, -40, Axl1, false);
	Zoom("�G���@�K���ő�U���h�䞐���ω�", $EF03Ztime, 1000, 1000, Axl1, false);
	Move("�G���@�K���ő�U���h�䞐������", $EF03Ztime, 700, -30, Axl1, false);
	Zoom("�G���@�K���ő�U���h�䞐������", $EF03Ztime, 1000, 1000, Axl1, true);


//�@��������̍U�����󂯂�

	Position("@�G���@�K���ő�U���h��e", $x1, $y1);

//���ӂ̈ʒu�FEFS1
	$ULX=231;
	$UY=170;

//����̈ʒu�FEFS4
	$DRX=960;
	$DY=280;

//�����̈ʒu�FEFS2
	$URX=835;
	$UY=170;

//�ω��̈ʒu�FEFS3
	$DLX=160;
	$DY=280;

	$EF04Wtime=40;
	Effectshock(1,$ULX,$UY,1500,"@SEF01");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF04");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF02");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF03");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF11");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF14");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF12");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF13");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF21");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF24");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF22");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF23");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF31");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF34");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF32");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF33");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	Effectshock(1,$ULX,$UY,1500,"@SEF01");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF04");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF02");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF03");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF11");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF14");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF12");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF13");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF21");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF24");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF22");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF23");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF31");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF34");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF32");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF33");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);


//��ʂ������Í��ɕ�܂��
	SetVolumeEX("SE31a", 800, 0, null);
	Fade("�G�F��", 750, 1000, null, false);
	Move("@�G���@�K���ő�U���h��e", 1500, -897, -600, null, false);
	Move("@�G���@�K���ő�U���h�䑫�������w�e", 3000, @0, 288, null, false);
	Zoom("@�G���@�K���ő�U���h��e", 1500, 100, 100, null, false);
	Zoom("@�G���@�K���ő�U���h�䑫�������w�e", 1500, 700, 700, null, false);

	Effectshock(1,$ULX,$UY,1500,"@SEF01");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF04");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF02");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF03");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);


	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF11");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF14");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF12");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF13");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);


	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF21");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF24");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF22");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF23");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);


	//Position("@�G���@�K���ő�U���h��e", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF31");
	FadeFFR2("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF34");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF32");
	FadeFFR3("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF33");
	FadeFFR("@�G���@�K���ő�U���h��e", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@�G���@�K���ő�U���h��e", 4, $x1, $y1, null, true);

	WaitAction("@�G�F��", null);

//�Ó]���ɘ@���̑f�ޒ�`����(4/4)��������������������������������������������������

//��`�F�K���̏��F��
	CreateTextureEX("�G���@�K���ő�U���K���S�g��", 1100, Center, -1320, "cg/ev/l/ev010�K��a_l.jpg");
	Zoom("�G���@�K���ő�U���K���S�g��", 0, 2000, 2000, null, true);
	CreateTextureEX("�G���@�K���ő�U�����F��", 1110, Center, Middle, "cg/ef/ef�K���̉F��.png");
	Zoom("�G���@�K���ő�U�����F��", 0, 10000, 10000, null, true);

//��`�F�K���j�БO����
	CreateTextureEX("�G���@�K���ő�U�����F���j�Ј�", 1109, Center, Middle, "cg/ef/efc�K���ő�U���j��01.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�Г�", 1109, Center, Middle, "cg/ef/efc�K���ő�U���j��11.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�ЎQ", 1109, Center, Middle, "cg/ef/efc�K���ő�U���j��21.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�Ўl", 1109, Center, Middle, "cg/ef/efc�K���ő�U���j��01.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�Ќ�", 1109, Center, Middle, "cg/ef/efc�K���ő�U���j��11.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�ИZ", 1109, Center, Middle, "cg/ef/efc�K���ő�U���j��21.png");

//��`�F�K���j�Ќ㕔��
	CreateTextureEX("�G���@�K���ő�U�����F���j�Ў�", 1108, Center, Middle, "cg/ef/efc�K���ő�U���j��01.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�Д�", 1108, Center, Middle, "cg/ef/efc�K���ő�U���j��11.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�Ћ�", 1108, Center, Middle, "cg/ef/efc�K���ő�U���j��21.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�ЏE", 1108, Center, Middle, "cg/ef/efc�K���ő�U���j��01.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�ЏE��", 1108, Center, Middle, "cg/ef/efc�K���ő�U���j��11.png");
	CreateTextureEX("�G���@�K���ő�U�����F���j�ЏE��", 1108, Center, Middle, "cg/ef/efc�K���ő�U���j��21.png");
	Zoom("�G���@�K���ő�U�����F���j��*", 0, 300, 300, null, true);

//�Ó]���ɘ@���̑f�ޒ�`���������܂Ł���������������������������������������������������������

/*
&.�K���ő�U��4/4
*/
	Fade("@�Gshock*", 0, 0, null, true);
	Fade("�G���@�K���ő�U���h��*", 0, 0, null, true);
	Fade("�G���w�i�K����", 0, 0, null, true);

	Fade("�G���@�K���ő�U���K���S�g��", 0, 1000, null, true);
	Fade("�G���@�K���ő�U�����F��", 0, 1000, null, true);
	MoveFFP1("@�G���@�K���ő�U�����F��",30000);

	Fade("�G�F��", 1000, 0, null, true);

//�S�Ă͉K���̎�̒���
	Zoom("�G���@�K���ő�U���K���S�g��", 3000, 1000, 1000, DxlAuto, false);
	Zoom("�G���@�K���ő�U�����F��", 3000, 750, 750, DxlAuto, true);

	Wait(2000);

	$�_���[�W�q=2200;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

//�@����荞�񂾐��E�����󂷂�
	CreateSE("SE42a","se�[��_���__�����01");
	MusicStart("SE42a",0,1000,0,1000,null,false);
	CreateSE("SE42b","se�퓬_���C��_��͔����������]03");
	MusicStart("SE42b",0,500,0,800,null,false);
	Fade("�G���@�K���ő�U�����F��", 0, 0, null, true);
	Fade("�G���@�K���ő�U�����F���j��*", 0, 1000, null, true);

	$garasuef_hahen00="@�G���@�K���ő�U�����F���j�Ј�";
	$garasuef_hahen01="@�G���@�K���ő�U�����F���j�Г�";
	$garasuef_hahen02="@�G���@�K���ő�U�����F���j�ЎQ";
	$garasuef_hahen03="@�G���@�K���ő�U�����F���j�Ўl";
	$garasuef_hahen04="@�G���@�K���ő�U�����F���j�Ќ�";
	$garasuef_hahen05="@�G���@�K���ő�U�����F���j�ИZ";
	$garasuef_hahen06="@�G���@�K���ő�U�����F���j�Ў�";
	$garasuef_hahen07="@�G���@�K���ő�U�����F���j�Д�";
	$garasuef_hahen08="@�G���@�K���ő�U�����F���j�Ћ�";
	$garasuef_hahen09="@�G���@�K���ő�U�����F���j�ЏE";
	$garasuef_hahen10="@�G���@�K���ő�U�����F���j�ЏE��";
	$garasuef_hahen11="@�G���@�K���ő�U�����F���j�ЏE��";

	Fade($garasuef_hahen00", 0, 1000, null, true);
	Fade($garasuef_hahen01", 0, 1000, null, true);
	Fade($garasuef_hahen02", 0, 1000, null, true);
	Fade($garasuef_hahen03", 0, 1000, null, true);
	Fade($garasuef_hahen04", 0, 1000, null, true);
	Fade($garasuef_hahen05", 0, 1000, null, true);
	Fade($garasuef_hahen06", 0, 1000, null, true);
	Fade($garasuef_hahen07", 0, 1000, null, true);
	Fade($garasuef_hahen08", 0, 1000, null, true);
	Fade($garasuef_hahen09", 0, 1000, null, true);
	Fade($garasuef_hahen10", 0, 1000, null, true);
	Fade($garasuef_hahen11", 0, 1000, null, true);

	$garasu_speed=600;
	$garasu_speed2=1200;

	Fade("garasuef01*", 50, 0, null, false);
	Zoom($garasuef_hahen*, $garasu_speed, 1500, 1500, Dxl1, false);

	Rotate($garasuef_hahen00, $garasu_speed, @0, @0, @50, null,false);
	Move($garasuef_hahen00, $garasu_speed, @-550, @-550, null, false);

	Rotate($garasuef_hahen01, $garasu_speed, @0, @0, @-300, null,false);
	Move($garasuef_hahen01, $garasu_speed, @-600, @0, null, false);

	Rotate($garasuef_hahen02, $garasu_speed, @0, @0, @300, null,false);
	Move($garasuef_hahen02, $garasu_speed, @-550, @550, null, false);

	Rotate($garasuef_hahen03, $garasu_speed, @0, @0, @-280, null,false);
	Move($garasuef_hahen03, $garasu_speed, @100, @550, null, false);

	Rotate($garasuef_hahen04, $garasu_speed, @0, @0, @150, null,false);
	Move($garasuef_hahen04, $garasu_speed, @600, @550, null, false);

	Rotate($garasuef_hahen05, $garasu_speed, @0, @0, @360, null,false);
	Move($garasuef_hahen05, $garasu_speed, @750, @-100, null, false);

	Rotate($garasuef_hahen06, $garasu_speed, @0, @0, @-160, null,false);
	Move($garasuef_hahen06, $garasu_speed, @650, @-550, null, false);

	Rotate($garasuef_hahen07, $garasu_speed, @0, @0, @260, null,false);
	Move($garasuef_hahen07, $garasu_speed, @-60, @-550, null, false);

	Zoom($garasuef_hahen08, $garasu_speed2, 3500, 3500, null, false);
	Rotate($garasuef_hahen08, $garasu_speed2, @760, @720, @90, null,false);
	Move($garasuef_hahen08, $garasu_speed2, @-450, @250, null, false);

	Zoom($garasuef_hahen09, $garasu_speed2, 1000, 1000, null, false);
	Rotate($garasuef_hahen09, $garasu_speed2, @-760, @720, @-80, null,false);
	Move($garasuef_hahen09, $garasu_speed2, @250, @150, null, false);

	Zoom($garasuef_hahen10, $garasu_speed2, 8500, 8500, null, false);
	Rotate($garasuef_hahen10, $garasu_speed2, @360, @100, @50, null,false);
	Move($garasuef_hahen10, $garasu_speed2, @-250, @-250, null, false);

	Zoom($garasuef_hahen11, $garasu_speed2, 4500, 4500, null, false);
	Rotate($garasuef_hahen11, $garasu_speed2, @240, @-720, @100, null,false);
	Move($garasuef_hahen11, $garasu_speed2, @250, @-150, null, false);

	Fade($garasuef_hahen08, $garasu_speed2, 0, Axl3, false);
	Fade($garasuef_hahen09, $garasu_speed2, 0, Axl3, false);
	Fade($garasuef_hahen10, $garasu_speed2, 0, Axl3, false);
	Fade($garasuef_hahen11, $garasu_speed2, 0, Axl3, false);

	Wait(2000);

	RMDControlOutR(1000);

	CreateColorEXadd("�G�F��", 10000, "FFFFFF");
	Fade("�G�F��", 600, 1000, AxlAuto, true);

	PrintGO("��w�i", 10010);
	CreateColorSPadd("�G�F��", 10000, "FFFFFF");

	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");
	CreatePlainSP("�G��", 5000);
	Zoom("�G��", 0, 3000, 3000, null, true);
	Rotate("�G��", 0, @0, @0, 540, null,true);
	SetShade("�G��", HEAVY);
	SetBlur("�G��", true, 3, 200, 100, false);
	FadeDelete("��w�i", 0, null, true);
	FadeDelete("�G�F��", 600, null, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01b","se�l��_����_���02");
	MusicStart("SE01b",0,700,0,1000,null,false);
	Rotate("�G��", 200, @0, @0, 0, Dxl3,false);
	Zoom("�G��", 300, 1000, 1000, Dxl3, false);
	Shake("�G��", 600, 0, 20, 0, 0, 1000, Dxl3, true);
	FadeDelete("�G��", 500, null, true);

/*
	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000340a01">
"&.&.&.!"

{	Fw("fwAM�@_�ʏ�_normal");}//�l�^��
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000350a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//���@�ɃV�[���h���点�Ėh�䂷��B���A�����ȉ�]�n��
//�@�M�����M�����ƃV�[���h�����B�@�����Ȃ�ꂵ�����B
//�@���̂����̂P���V�[���h��˔j���A�@�̘r�ɐH�����ށB
//�@�@�_���[�W�B���\�f�J���B�@���Ў��n�ʂɂ��B


	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000360a01">
"Ren!"

{	Fw("fw�@_�ʏ�}���g�Ȃ�_pain");}//�l�^��
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000370a06">
"-! I'm still fine&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000380b02">
"Aoba-kun&. You should've realized it by now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000390b02">
"You should've known that the moment you thought you were
 going to win&, you had already lost&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000400a01">
"&.&.&.Kuh-!"

{	DeleteFw();}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000410b02">
"What do you think happens to people the moment when they
 put their intentions high on a pedestal&, thinking of
 themselves noble?" 

//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000420b02">
"Nothing&. Only when people lock their desires and emotions
 away can they achieve true bliss&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000430b02">
"If there is desire&, there is battle&. When that is erased&,
 people will be able to achieve equality&, tranquility&, and
 pure bliss&. You think my ideas are wrong&, don't you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_hard");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000440a01">
"&.&.&.!"

{	St("C",740, @0,@0,"st���]_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000450b02">
"Do you think that a world that's run by greed&, where life
 is pointlessly taken away is right?"

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000460a01">
"&.&.&.No&, I&.&.&.!"

{	DeleteFw();}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000470b02">
"You hold the power of destruction&. A direct link to death&.
 What you've been using to kill off Sei's consciousnesses
 that we've spent so long on&, hm?" 

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000480a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
&.&.&.No&.

It's true that my power is only good for destruction&.

But it's not like that&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000490a01">
"Death and destruction aren't always the same thing&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000500a01">
"It's a release from something&. To end something to begin
 anew&. That's why there's death!"

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000510b02">
"&.&.&.I see&."

{	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000520b02">
"If you think so&, then try to overcome it&. Show me how
 you'll stop my 'life' with your 'death'&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000530b02">
"Then maybe you'll be able to release me as well? Fufu&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����]�A�u���v���Z�b�g�B
//�@�K���̎���ɞ����̋ʂ������������яオ��B

	CreateColorEX("�G����", 10000, "000000");
	Fade("�G����", 400, 1000, null, true);

	DeleteAllSt(0,true);

//�K���ő�U���f�ޒ�`����(1/4)��������������������������������������������������
	CreateColorSP("�G������", 55, "000000");
	Fade("�G����", 0, 0, null, true);

//��`�F�K�������̎��̔w�i
	CreateColorEX("�G�F", 50, "#000000");
	CreateTextureEXadd("�G�w�i", 50, Center, Middle, "cg/ef/efbg����01.jpg");

	Fade("�G�F", 0, 1000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);

//��`�F�K���J�b�g�C��
	CreateTextureEX("�G���K���ő�U����", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x01.jpg");
	CreateTextureEX("�G���K���ő�U����", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x02.jpg");
	CreateTextureEX("�G���K���ő�U���O", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x03.jpg");
	CreateTextureEX("�G���K���ő�U���l", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x04.jpg");
	CreateTextureEX("�G���K���ő�U����", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x05.jpg");
	CreateTextureEX("�G���K���ő�U���Z", 1100, Center, Middle, "cg/ev/x/ev010�K��a_x06.jpg");
	Move("�G���K���ő�U���Z", 0, @0, @-40, null, true);

//��`�F�K���k���p
	CreateTextureEX("�G���K���ő�U���S�g", 1090, Center, -252, "cg/ev/x/ev010�K��a.png");

//��`�F�K����䶗�
	CreateTextureEXover("�G���K���ő�U����䶗��O", 1190, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	Zoom("�G���K���ő�U����䶗��O", 0, 500, 500, null, true);

	CreateTextureEXadd("�G���K���ő�U����䶗���", 1190, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	Zoom("�G���K���ő�U����䶗���", 0, 980, 980, null, true);
	SetBlur("�G���K���ő�U����䶗���", true, 3, 500, 100, false);


//��`�F�K���U���̔g��
	CreateMaskEX("�G��", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("�G��/�G���K���ő�U����䶗��e�C", 1200, Center, Middle, "cg/ef/ef�N���A�̉̐�_l.jpg");
	Zoom("�G��/�G���K���ő�U����䶗��e�C", 0, 1000, 1067, null, true);

	CreateColorEXadd("�G�F��", 2000, "#FFFFFF");

	CreateTxtinEffectS(2000,"���]","��");

//�����܂őf�ޒ�`����������������������������������������������������������

/*
&.�K���ő�U��1/4
*/

//�K���J�b�g�C��
	CreateSE("SE21a","se�[��_����_�͓��]01");
	CreateSE("SE21b","se�[��_����_�͓��]01");
	CreateSE("SE21c","se�[��_����_�͓��]01");
	CreateSE("SE21d","se�[��_����_�͓��]01");
	CreateSE("SE21e","se�[��_����_�͓��]01");

	$EF01Ftime=450;
	$EF01Wtime=50;
	$EF01Mtime=$EF01Ftime+$EF01Wtime*6;
	MusicStart("SE21a",0,700,0,500,null,false);
	Move("�G���K���ő�U����", $EF01Mtime, @-40, @-40, DxlAuto, false);
	Fade("�G���K���ő�U����", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U����", $EF01Ftime, 250, null, true);

	MusicStart("SE21b",0,700,0,500,null,false);
	Fade("�G���K���ő�U����", 0, 0, null, true);
	Move("�G���K���ő�U����", $EF01Mtime, @40, @0, DxlAuto, false);
	Fade("�G���K���ő�U����", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U����", $EF01Ftime, 250, null, true);

	MusicStart("SE21c",0,700,0,500,null,false);
	Fade("�G���K���ő�U����", 0, 0, null, true);
	Move("�G���K���ő�U���O", $EF01Mtime, @-40, @40, DxlAuto, false);
	Fade("�G���K���ő�U���O", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U���O", $EF01Ftime, 250, null, true);

	MusicStart("SE21d",0,700,0,500,null,false);
	Fade("�G���K���ő�U���O", 0, 0, null, true);
	Move("�G���K���ő�U���l", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("�G���K���ő�U���l", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U���l", $EF01Ftime, 250, null, true);

	MusicStart("SE21e",0,700,0,500,null,false);
	Fade("�G���K���ő�U���l", 0, 0, null, true);
	Move("�G���K���ő�U����", $EF01Mtime, @0, @-40, DxlAuto, false);
	Fade("�G���K���ő�U����", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("�G���K���ő�U����", $EF01Ftime, 250, null, true);

	Fade("�G���K���ő�U����", 0, 0, null, true);
	Move("�G���K���ő�U���Z", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("�G���K���ő�U���Z", 0, 1000, null, true);

	Wait(1000);

//�����G�t�F�N�g�\��
	EffectTxtinS(700,"���]","��");
	Wait(1000);

//�K���S�g�\��
	CreateSE("SE21f","se�퓬_����_������01");
	MusicStart("SE21f",0,700,0,800,null,false);
	$EF02Ztime=350;
	Fade("�G���K���ő�U���S�g", 0, 1000, null, true);
	Zoom("�G���K���ő�U���S�g", 0, 6000, 6000, null, true);

	Zoom("�G���K���ő�U���Z", $EF02Ztime, 25, 25, Dxl3, false);
	Fade("�G���K���ő�U���Z", $EF02Ztime, 0, null, false);
	Move("�G���K���ő�U���S�g", $EF02Ztime, @0, -476, Dxl3, false);
	Fade("�G���K���ő�U���S�g", $EF02Ztime, 1000, null, false);
	Zoom("�G���K���ő�U���S�g", $EF02Ztime, 100, 100, Dxl3, false);
	Fade("�G������", $EF02Ztime, 0, Dxl3, true);

	Wait(150);

//�K����䶗���W�J
	CreateSE("SE22a","se�[��_����_�͓��]02");
	MusicStart("SE22a",0,700,0,1500,null,false);
	CreateSE("SE22b","se�퓬_���C��_��͔����������]�ėp01");
	SoundEffect("SE22b","SEWERPIPE");
	MusicStart("SE22b",0,700,0,500,null,false);
	Fade("�G���K���ő�U����䶗��O", 0, 1000, null, true);
	Fade("�G���K���ő�U����䶗��O", 200, 500, null, false);
	Zoom("�G���K���ő�U����䶗��O", 200, 700, 700, DxlAuto, true);

	Wait(100);

	Fade("�G���K���ő�U����䶗���", 0, 750, null, true);
	Fade("�G���K���ő�U����䶗���", 300, 500, null, false);
	Zoom("�G���K���ő�U����䶗���", 300, 700, 700, Dxl3, true);

//�K���e�C���オ��
	CreateSE("SE23a","se�퓬_���C��_��͔���01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se�[��_����_�͓��]02");
	MusicStart("SE23b",0,700,0,800,null,false);
	Rotate("�G��/�G���K���ő�U����䶗��e�C", 50000, @0, @0, 1080, null,false);
	Fade("�G��/�G���K���ő�U����䶗��e�C", 500, 500, null, false);
	DrawTransition("�G��/�G���K���ő�U����䶗��e�C", 6000, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("�G��", 3000, 10000, 10000, null, false);

	Wait(2000);

	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("�G�w�i", 1100, -750, -660, "cg/ev/l/ev900���C���ΐ푓�tVS���]2_l.jpg");
	Delete("�G���K��*");
	Delete("�G��");
	Wait(150);
	DrawDelete("�G����", 150, 100, null, "slide_01_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000540a01">
"Shit! If that happens again Ren won't make it&.&.&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000550a06">
"I'm fine&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000560a01">
"No! What if&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	$NoTextBoxDelete=true;
	PrintGO("��w�i", 11000);
	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");

{	St("C",740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",0,true);}

	FadeDelete("��w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000570a06">
"&.&.&.Aoba&. It might sound weird for me to say this to
 you&.&.&."

{
	SetVolumeEX("@dm*", 1600, 0, null);
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000580a06">
"But if Usui has Sei's consciousness within it&, you may
 just be able to reach him and call him out&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000590a01">
"What do you mean?"

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000600a06">
"This is a Rhyme Field&. It's closer to communicate mind to
 mind rather than through the flesh&. Like how you did to
 me&, you can call out to Sei&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	FwPro("fw���t_�ʏ�_worry4",800,"fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0164]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000610a01">
"&.&.&.I see&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlayEF("@dm016",0,450,true);//����

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000620a01">
"I got it&. I'll try&."

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000630a06">
"And during it&, I'll protect you&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000640a01">
"Sorry&."

{	St("C",740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_smile");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000650a06">
"It's my duty&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G����", 10000, "000000");
	Fade("�G����", 400, 1000, null, true);

	DeleteAllSt(0,true);

//�K���ő�U���f�ޒ�`����(1/4)��������������������������������������������������
	CreateColorSP("�G������", 55, "000000");

//��`�F�K�������̎��̔w�i
	CreateColorEX("�G�F", 50, "#000000");
	CreateTextureEXadd("�G�w�i", 50, Center, Middle, "cg/ef/efbg����01.jpg");

	Fade("�G�F", 0, 1000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);

//��`�F�K���k���p
	CreateTextureEX("�G���K���ő�U���S�g", 1090, Center, -252, "cg/ev/x/ev010�K��a.png");

//��`�F�K����䶗�
	CreateTextureEXover("�G���K���ő�U����䶗��O", 1190, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	Zoom("�G���K���ő�U����䶗��O", 0, 500, 500, null, true);

	CreateTextureEXadd("�G���K���ő�U����䶗���", 1190, Center, Middle, "cg/ef/efv�K��_��䶗��n.png");
	Zoom("�G���K���ő�U����䶗���", 0, 980, 980, null, true);
	SetBlur("�G���K���ő�U����䶗���", true, 3, 500, 100, false);


//��`�F�K���U���̔g��
	CreateMaskEX("�G��", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("�G��/�G���K���ő�U����䶗��e�C", 1200, Center, Middle, "cg/ef/ef�N���A�̉̐�_l.jpg");
	Zoom("�G��/�G���K���ő�U����䶗��e�C", 0, 1000, 1067, null, true);

	CreateColorEXadd("�G�F��", 4000, "#FFFFFF");

//�����܂őf�ޒ�`����������������������������������������������������������

//�K���S�g�\��
	$EF02Ztime=0;
	Fade("�G���K���ő�U���S�g", 0, 1000, null, true);
	Zoom("�G���K���ő�U���S�g", 0, 6000, 6000, null, true);

	Zoom("�G���K���ő�U���Z", $EF02Ztime, 25, 25, Dxl3, false);
	Fade("�G���K���ő�U���Z", $EF02Ztime, 0, null, false);
	Move("�G���K���ő�U���S�g", $EF02Ztime, @0, -476, Dxl3, false);
	Fade("�G���K���ő�U���S�g", $EF02Ztime, 1000, null, false);
	Zoom("�G���K���ő�U���S�g", $EF02Ztime, 100, 100, Dxl3, false);
	Fade("�G������", $EF02Ztime, 0, Dxl3, true);

	Wait(1);

//�K����䶗���W�J
	Fade("�G���K���ő�U����䶗��O", 0, 1000, null, true);
	Fade("�G���K���ő�U����䶗��O", 0, 500, null, false);
	Zoom("�G���K���ő�U����䶗��O", 0, 700, 700, DxlAuto, true);

	Fade("�G���K���ő�U����䶗���", 0, 750, null, true);
	Fade("�G���K���ő�U����䶗���", 0, 500, null, false);
	Zoom("�G���K���ő�U����䶗���", 0, 700, 700, Dxl3, true);

//�K���e�C���オ��
	CreateSE("SE23a","se�퓬_���C��_��͔���01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se�[��_����_�͓��]02");
	MusicStart("SE23b",0,700,0,800,null,false);

	Rotate("�G��/�G���K���ő�U����䶗��e�C", 50000, @0, @0, 1080, null,false);
	Fade("�G��/�G���K���ő�U����䶗��e�C", 0, 500, null, false);
	DrawTransition("�G��/�G���K���ő�U����䶗��e�C", 0, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("�G��", 0, 10000, 10000, null, false);

	Fade("�G����", 200, 0, null, true);

	Wait(1000);

//�K���U������
	CreateSE("SE01","se�퓬_�Ռ�_���e02");
	MusicStart("SE01",0,700,0,800,null,false);
	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 250, 0, 1000, 100, Axl1, "cg/data/circle_03_00_0.png", false);

	Wait(1000);

	Delete("�G�w�i");
	Delete("�G���K��*");
	Delete("�G��");

//�@�h��Ɉڍs������������������������������������������������������������

	CreateTextureEX("�G�ꉺ", 3110, -210, -120, "cg/ev/ev950�@�o�g���ėp�h��_����.jpg");

	CreateTextureEX("�G��w�i����", 3120, -2000, -440, "cg/ev/l/ev950�@�o�g���ėp�h��_����_l.jpg");
	SetVertex("�G��w�i����", 1453, 830);
	Zoom("�G��w�i����", 0, 1100, 1110, null, true);

	CreateTextureEX("�G��w�i", 3110, -2000, -440, "cg/ev/l/ev950�@�o�g���ėp�h��_l.jpg");
	Zoom("�G��w�i", 0, 1500, 1500, null, true);

	CreateMovieSP("�G������", 3120, Center, Middle, true, true, "dx/mv0003�W����04_��&.ngs");
	Zoom("�G������", 0, 3000, 3000, null, true);

	FadeDelete("�G������", 800, null, false);
	FadeDelete("�G�F��", 600, null, false);

	CreateVOICE("�@","dm55/9000660a06");//�u�c�c�b�b�v
	$SETime2 = RemainTime("�@")-100;

	CreateSE("SE51","se�퓬_����_������01");
	MusicStart("SE51",0,700,0,800,null,false);

	Position("@�G��w�i", $x1, $y1);
	Zoom("�G��w�i", 800, 1000, 1000, Dxl3, false);
	BezierMove("�G��w�i", 800, ($x1,$y1){-1920,-380}{-1650,-370}(-1170,-490), Dxl3, false);
	Fade("�G��w�i", 600, 1000, null, false);

	Wait(600);

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("�G�F��", 4900, "FFFFFF");
	FadeDelete("�G�F��", 1000, null, false);

	Fade("�G�ꉺ", 0, 1000, null, true);

	Position("@�G��w�i", $x1, $y1);
	Move("�G��w�i����", 0, $x1, $y1, null, true);
	Fade("�G��w�i����", 0, 1000, null, true);
	SetBlur("�G��w�i����", true, 3, 500, 250, false);
	Wait(100);
	Zoom("�G��w�i����", 1000, 1000, 1000, null, false);
	Fade("�G��w�i����", 800, 0, null, false);
	Wait(500);
	Fade("�G��w�i", 800, 0, null, true);

//�q�b�g�G�t�F�N�g����
	CreateSE("SE11","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE12","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE13","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE14","se�퓬_�Ō�_�q�b�g��04");
	CreateSEEX("SE15","se�퓬_�Ռ�_�G�l���M�[驂�����01L");
	CreateSE("SE16","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE17","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE18","se�퓬_�Ō�_�q�b�g��04");

	CreateTextureEXadd("�G�����ʉΉ�", 4900, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);

	CreateMaskEX("��", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("��", 0, 2000, 2000, null, true);

	CreateColorEXadd("�G���]", 5000, "FFFFFF");
	CreateColorEXadd("��/�G�F��", 4890, "FFFFFF");

	Position("�G�ꉺ", $x1, $y1);//���_���擾
	SetVolumeEX("�@", 150, 0, null);

//�����_���q�b�g�G�t�F�N�g01��������������������������������������������������
	MusicStart("�@",0,1600,0,1000,null,false);

	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	MusicStart("SE15",0,500,0,1000,null,true);
	MusicStart("SE11",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=200;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Wait(300);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g02��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=200;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g03��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=200;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);


	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g04��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=200;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Wait(100);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g05��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE16",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=200;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Wait(100);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g05��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE17",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=200;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Wait(100);

	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

	MusicStart("SE18",0,1000,0,1000,null,false);
	CreateColorSPadd("�G�F���Q", 8000, "FFFFFF");
	Wait(100);

	PrintGO("��w�i", 10000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");
	Delete("��w�i");
	Wait(30);

	RMDControlOutR(0);
	FadeDelete("�G�F��", 500, null, true);

	CreateColorEX("�G�F��", 5000, "000000");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0174]
I collect my concentration&.&.&.<k>
{
	SetVolumeEX("SE*", 3000, 0, null);
	Fade("�G�F��", 2000, 1000, null, false);
}
I call out to Sei in my mind&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

//���K���̎���ɕ����яオ���������̋ʂ����ꂼ�ꏬ���ș�䶗��^�̐n�ɕω�����B
//�@���ꂪ���������ĉ�]�A���t�̕��֌������Ă���B
//�@�@���V�[���h�Ŗh��B�����������􂩂�Ă��邽�߁A���Ȃ�炻���B

//�������u���F��Ɉړ����܂����v
/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0175]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000660a06">
"&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	PrintGO("��w�i", 10000);
	CreateColorSP("�G�F��", 2000, "000000");
	Delete("��w�i");

	CreateSEEF("SE01","se�l��_�S��_�ۓ�01L");
	MusicStartEF("SE01",10000,800,0,800,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0176]
&.&.&.Sei&. <k><?>
Answer me&.

To my call&.&.&.

Answer me&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureSPadd("�G���蓮����", 3000, Center, Middle, "cg/ef/ef���t��������d_��.jpg");
	Zoom("�G���蓮����", 0, 1100, 1100, null, true);
	SetBlur("�G���蓮����", true, 3, 500, 30, false);

//�����Ƀ��x���F�T
//��������A�Ɠ���
$HALevel=5;
	//HAFade(2010, 0,false);

	CreateSE("SE02","se�l��_����_�ɂ�01");
	MusicStart("SE02",0,1100,0,1000,null,false);
	DrawTransition("�G���蓮����", 80, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	FadeFFR2("�G���蓮����", 0,1000, 200, 0, 0, 50,null, false);
	Wait(100);
	Fade("�G���蓮����", 200, 0, null, true);
	Delete("�G���蓮����");

//�������t�̌��e���d�Ȃ�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000670a01">
"Answer me&, please&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000680a01">
"Answer me&.&.&. please!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000690a01">
"&.&.&.I'm counting on you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Request("@SE01", UnLock);
	SetVolumeEF("@SE01",300);
	SetVolumeEF("@dm016",1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0193]
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000700a01">
"Answer me&, brother!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	CreateTextureEX("�G���K��", 2110, Center, -1450, "cg/ev/l/ev010�K��a_l.jpg");
	Fade("�G���K��", 2000, 1000, null, true);
	CreateTextureEX("�G���K����", 2120, Center, Middle, "cg/ev/x/ev010�K��a_x06.jpg");
*/
	CreateColorSP("�G�F��", 5000, "000000");

	//$SYSTEM_effect_lens_curvature = 8000;
	//$SYSTEM_effect_lens_distance = 10;
	//CreateEffect("�G��", 2200, -135, -415, 1550, 1550, "Lens");
	//SetAlias("�G��","�G��");

	CreateTextureSP("�G�K������", 2110, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");
	SetShade("�G�K������", SEMIHEAVY);
	CreateTextureSP("�G�K���������G", 2120, Center, InBottom, "cg/fu/fu���t_�ʏ�_serious.png");
	Move("�G�K���������G", 0, @0, @60, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0194]
Usui's eyes&.&.&.

are looking <?>
{
	DrawTransition("�G�F��", 2000, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(500);
}
at me-

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���K���̗l�q�����������Ȃ�A�K�N���Ɠ������~�߂�B
//�@���̗l�q��ق��Č��Ă��铌�]�B

	PrintGO("��w�i", 10000);
	CreateColorSPadd("�G�F��", 10000, "FFFFFF");
	FadeDelete("��w�i", 0, null, true);
	Wait(30);

	CreateSoundAkk("�K��","voice/dm55/9000720c06");
	MusicStart("�K��",0,1500,0,1000,null,false);

	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201052_0_���C�����].jpg");

	FadeDelete("�G�F��", 1000, null, true);

	Wait(800);

	Fw("fw���]_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/9000710b02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000720c06">
"U-Ughhhh&.&.&. Ahhhhhhhhh&, AHHHHHHH&.&.&.&.&.|


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000730a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("�K��", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0203]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000740c06">
"AHHHHHHHHHHHHHHHHHHHH&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G��", 1110, Center, -265, "cg/ev/x/ev010�K��a_x07.jpg");
	Fade("�G��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0204]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000750c06">
"A"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000760c06">
"o"

//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000770c06">
"ba"

//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000780c06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	CreateTextureEXover("�G�����ʉe", 1110, Center, Middle, "cg/ev/x/ev010�K��a_x07b.png");
	Fade("�G�����ʉe", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 600, 1000, Axl3, false);
	DrawTransition("�G�����ʉe", 300, 1000, 0, 10, null, "cg/data/noize_01_00_0.png", false);
	Fade("�G�����ʉe", 100, 0, null, true);

	WaitAction("@�G�F��", null);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0213]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000790c06">
"Destr- oy- m-e&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	CreateTextureEX("�G���Ō��", 5100, Center, Middle, "cg/ef/tx�K���̊肢.jpg");
	Fade("�G���Ō��", 0, 1000, null, true);
	DrawTransition("�G���Ō��", 14000, 100, 900, 10, null, "cg/data/slide_01_00_0.png", true);

	CreatePlainEX("�G��", 6000);
	SetShade("�G��", HEAVY);
	Fade("�G��", 2000, 1000, null, true);
	Wait(1000);
	Delete("�G���Ō��");
	FadeDelete("�G��", 2000, null, true);

	Wait(500);

//�������u���F�����؂Ȃ��n�̋ȗ��������Ǝv��������Ȃ��̖����������v
	SetStream("@dm012*", 15360);
	SoundPlay("@dm012",6000,450,true);
	$dm5590_vs_music=true;

	PrintGO("��w�i", 10000);

	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201051_0_���C�����].jpg");

	FadeDelete("��w�i", 2000, null, true);

	Wait(500);

//�������u���F��͏o���Ȃ������ǂ����ȁc�c�v

/*
//�������u���F���̃Z���t���炢�Ȃ��A���ȁc�c�v
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0214]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000800a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000810a01">
"It's fine now&.&.&. I'll destroy it&. I'll release you with my power&, brother&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���K���̓��������S�Ɏ~�܂�B�@�֌������Ă����U�����҂����Ƃ�ށB

{	Fw("fw�@_�ʏ�}���g�Ȃ�_worry");}//�l�^��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/9000820a06">
"&.&.&.Usui's attacks have stopped&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

//�������u���F�Ȃ񂩑��t�����������������͈̂Ⴄ�C������v
/*
{	Fw("fw���t_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0222]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/9000830a01">
"Now&, Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
*/
	TextBoxDelete(0);

//���u�_�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă���B
//�@�K���ɓˌ�����@�B�K���͒�~���Ă��邽�߁A�V�[���h�����ꂸ�ɖ��h����ԁB�@�����j�B
//�@���t�����̏����B

	CreateColorEX("�G�F��", 2000, "000000");
	Fade("�G�F��", 400, 1000, null, true);

	CreateTextureEX("�G�����M", 2100, Center, Middle, "cg/ef/efx01���M01.jpg");
	CreateTextureEXadd("�G�����M��", 2100, Center, Middle, "cg/ef/efx01���M01.jpg");
	Rotate("�G�����M*", 0, @0, @180, @0, null,true);
	Move("�G�����M*", 0, @-100, @0, null, true);
	Zoom("�G�����M*", 0, 1500, 1500, null, true);

	CreateSE("SE91","se�퓬_�@_����01");
	MusicStart("SE91",0,700,0,1000,null,false);
	Fade("�G�����M*", 0, 1000, null, true);
	DrawTransition("�G�����M*", 100, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Fade("�G�����M��", 300, 0, null, true);

	Wait(200);

	CreateTextureSP("�G���K�����j�w�i", 1000, Center, Middle, "cg/ev/ev559�@�A�K����������j_�w�i.jpg");
	CreateTextureSP("�G���K�����j�@", 1210, -30, -60, "cg/ev/ev559�@�A�K����������j_�l���@.png");

//�������u���F�K���̏��ł��ڗ����Ȃ��Ȃ�̂ŕ\�����Ȃ��v
/*
	CreateTextureSPadd("�G���K�����j�@�n��", 1215, 65, -36, "cg/ev/ev559�@�A�K����������j_���ʎ��d�n.png");
	CreateTextureSPadd("�G���K�����j�@�藋", 1215, -10, 90, "cg/ev/ev559�@�A�K����������j_���ʎ��d��.png");

	CreateProcessEX("�v���Z�X�藋", "Proc_dm5590_vs_06Act");
	Request("�v���Z�X�藋", Start);

	CreateProcessEX("�v���Z�X�n����", "Proc_dm5590_vs_07aAct");
	CreateProcessEX("�v���Z�X�n����", "Proc_dm5590_vs_07bAct");
	Request("�v���Z�X�n����", Start);
	Request("�v���Z�X�n����", Start);
*/

	CreateTextureSP("�G���K�����j�K��", 1110, 770, 160, "cg/ev/ev559�@�A�K����������j_�l���K��.png");
	Position("@�G���K�����j�K��", $x1, $y1);
	CreateStencil("�G��",0,$x1, $y1,128,"cg/ev/ev559�@�A�K����������j_�l���K��.png",false);
	SetAlias("�G��","�G��");
	CreateColorEXadd("�G��/�G���K�����j�K����", 5000, "FFFFFF");


	FadeDelete("�G�F��", 1000, null, false);
	FadeDelete("�G�����M*", 1000, null, true);

	Wait(2000);

	Fade("�G��/�G���K�����j�K����", 2000, 1000, null, true);
	Delete("�G���K�����j�K��");

	Wait(2000);

	CreateSE("SE99","se�[��_����_�͔����t����02");
	MusicStart("SE99",0,1800,0,1200,null,false);
	Fade("�G��/�G���K�����j�K����", 16000, 0, null, false);
	DrawTransition("�G��/�G���K�����j�K����", 9000, 800, 0, 10, null, "cg/data/slide_02_01_1.png", false);

	Wait(2000);

	CreateColorEXadd("�G�F��", 9900, "FFFFFF");
	Fade("�G�F��", 2000, 1000, Axl3, true);

//�������u���F�f���������I�v
	//CreateVOICE("�K��","dm55/9000840c06");
	//MusicStart("�K��",0,1500,0,1000,null,false);

	Wait(2000);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm55/9000840c06">
"AHHHHHHHHHHHHHHHHHHHHHH!!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//����ʂ������������A���E��S�Ĉ��ݍ��ށB
//�@�����Ńp���[���Ɗ���鉹�B�i�K��������Ă鉹�j

//���������E�ɖ߂�

	ClearFadeAll(3000, true);
	$dm5590_vs_musicB=true;

//�����t�@�C��["dm5600.nss"]

}
