//<continuation number="30">
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


scene dm5570.nss_MAIN
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

	#bg304131_5_���]�^���[���]�̊ԑO�L��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5580.nss";

}


scene dm5570.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
/*
	CreateColorEXadd("�G�F���C�g1", 1109, "FFFFFF");
	CreateColorEXadd("�G�F���C�g2", 1109, "FFFFFF");
	CreateColorEXadd("�G�F���C�g3", 1109, "000000");
	DrawTransition("�G�F���C�g1", 0, 300, 300, 800, null, "cg/data/slide_06_00_1.png", true);
	DrawTransition("�G�F���C�g2", 0, 300, 300, 800, null, "cg/data/slide_01_04_1.png", true);
	//DrawTransition("�G�F���C�g3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
*/


//	CreatePlainSP("plain01", 20);


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 15000, "000000");
/*
	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);

	Delete("��w�i");

	CreateSE("SE01L","se����_�G���x�[�^_�쓮01L");
	MusicStart("SE01L",3000,700,0,1000,null,true);

	Wait(2000);

	CreateTextureSP("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");

	CreateTextureSP("bg_el", 10, -580, 165, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[.jpg");
	Request("bg_el", Smoothing);
	Rotate("bg_el", 0, @0, 180, @0, null,true);
	Zoom("bg_el", 0, 2500, 2500, null, true);

//	CreateTextureSP("chara01", 11, center, middle, "cg/fu/fu�g��_�ʏ�_angry.png");
//	Move("chara01", 0, @300, @0, null, true);
	CreateTextureSP("chara01", 11, -300, middle, "cg/fu/fu���t_�ʏ�_serious.png");
	Request("chara01", Smoothing);
	Rotate("chara01", 0, @0, 180, @0, null,true);
	Zoom("chara01", 0, 1500, 1500, null, true);
//	Move("chara01", 0, @300, @0, null, true);

	CreateTextureSP("ElevatorPaul", 500, Center, -600, "cg/bg/x/bg304072_5_���]�^���[�G���x�[�^�[_�O��|�[��.png");
	Request("ElevatorPaul", Smoothing);
	Zoom("ElevatorPaul", 0, 6000, 6000, null, true);

	CreateTextureSP("bg_scrool", 100, 0, -4700, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[_�O��a.jpg");
	Fade("ElevatorPaul", 0, 500, null, true);
	Fade("bg_scrool", 0, 700, null, true);

	ElevatorPole();
	ElevatorMove();

	Fade("bg_scrool", 700000, 300, null, false);
	Move("bg_scrool", 700000, @0, 0, Dxl1, false);


	Move("bg_el2", 4000, @170, @0, null, false);
	FadeDelete("�G�F��", 1500, null, true);

	Wait(1000);

	FadeDelete("bg_el2", 1500, null, true);

	Wait(1500);
*/

	CreateSE("SE01L","se����_�G���x�[�^_�쓮01L");
	MusicStart("SE01L",3000,700,0,1000,null,true);
	FadeDelete("��w�i", 500, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
When I split up with Koujaku and the others&, I put Ren 
into my bag and board the elevator&.

I stare at the numbers as the elevator goes up and up&.

Toue is at the top of this&.
Sei is&, too&.

In any other situation&, the anxiety and tension would have crushed me&.

But I have Ren with me&.
So I'll be all right&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(1000);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

//	ElevatorPoleStop();
//	Delete("ElevatorPaul");
//	Delete("bg_el");
//	Delete("bg_scrool");
//	Delete("chara01");

	Wait(1000);

	SetFrequency("SE01L", 3500, 300, null);

	Wait(2000);

	SetVolumeEX("SE01L", 1000, 0, null);

	Wait(1000);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(1000);
	CreateSE("SE02","se����_�h�A���]����_���J��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

	OnBG(10,"bg304131_5_���]�^���[���]�̊ԑO�L��");
	FadeBG(0,true);

//	Fade("�G�F��", 1500, 0, null, true);
	FadeDelete("�G�F��", 1000, null, true);

	Wait(1000);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/7000010a01">
"This is&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
When I stepped off the elevator&, the first thing I saw was 
a door&. The atmosphere of this floor was different from 
the others&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/7000020a01">
"Let's go&, Ren&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/7000030a06">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I silently gripped my hands into fists and went forward&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(500);

	CreateSE("SE03","se�l��_����_����03L");
	SoundEffect("SE03","SEWERPIPE");
	MusicStart("SE03",0,1000,0,600,null,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304131_5_���]�^���[���]�̊ԑO�L��.jpg");
	Request("�G�w�i", Smoothing);
	Move("�G�w�i", 10000, @0, @-50, AxlDxl, false);
	Zoom("�G�w�i", 10000, 1300, 1300, AxlDxl, false);

	Wait(3000);

	CreateSE("SE01","se����_�h�A���]�̊�_���J��01a");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 2000, 1000, Axl1, true);

//	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
//	DrawTransition("�G�F��", 1000, 0, 200, 100, null, "cg/data/slide_06_00_1.png", true);
//	DrawTransition("�G�F��", 1000, 200, 400, 100, null, "cg/data/slide_06_00_1.png", true);
//	DrawTransition("�G�F��", 1000, 400, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	SetVolumeEF("@SE03", 1000);
	SetVolumeEX("SE*", 2000, 0, null);

	Wait(2000);

//�����t�@�C��["dm5580.nss"]

}

