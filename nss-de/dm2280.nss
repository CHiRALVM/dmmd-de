//<continuation number="100">
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


scene dm2280.nss_MAIN
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
	#bg304031_5_���]�^���[�L��01=true;
	#bg304072_5_���]�^���[�G���x�[�^�[=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2290_vs.nss";

}


scene dm2280.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304031_5_���]�^���[�L��01");
	FadeBG(0,true);

	CreateColorSPadd("�G�F��", 4000, "WHITE");
	CreateTextureSP("�G�w�i", 100, Center, 0, "cg/bg/l/bg304031_5_���]�^���[�L��01_l.jpg");

	Move("�G�w�i", 0, @-500, @0, AxlDxl, true);

	Wait(500);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);
	FadeDelete("�G�F��", 2500, null, false);
	Wait(500);
	Move("�G�w�i", 3500, @0, @-400, AxlDxl, true);
	Wait(700);
	SoundPlay("@dm018",0,450,true);
	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The inside of the tower was made of such a pure white 
material that it was almost dazzling&. 

The floor and walls were polished like a mirror and coldly reflected our figures&.

I've heard that there's an area open to the general public in the tower&, but I don't see any visitors&. Probably 
because we came through the back entrance&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/8000010a03">
"&.&.&.Hey&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE11","se�l��_����_����04L");//�������u�r�d�Fse�l��_����_����04L�v
	MusicStart("SE11",0,10,0,1000,null,true);
	SetVolumeEX("SE11", 1600, 700, null);

//�������u���F�������܂����v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012a]
We carefully proceed down the hallway&, and eventually see 
a guard walking on the other side&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, 000000);
	CreateSE("SE01","se�l��_����_�ߎC��19");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 100, 1000, null, false);
	DrawTransition("�G�F��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012b]
We slip into a side hallway and hold our breath&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 500, 1100, null);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/8000020a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������ʂ�߂��Ă����x����

	SetVolumeEX("SE11", 3000, 0, null);
	WaitKey(2000);
	SetVolumeEX("SE11", 500, 0, null);
	FadeDelete("�G�F��", 500, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
After waiting until the guard passed&, we calmly reenter 
the hallway and survey our surroundings again&.

The guard had come from the direction of an elevator at 
the end of the hall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*===========================
//���F�E�B���h�E�ŃG���x�[�^�̂Ƃ�����Y�[���ɂ����G��\��
	CreateWindow("�G�}�X�N", 2100, 0, 100, 1024, 374, false);
	SetAlias("�G�}�X�N","�G�}�X�N");
	Zoom("�G�}�X�N", 0, 1000, 0, null, true);

	CreateTextureEX("�}�X�N���C����", 2100, Center, Middle, "cg/mask/ci�E�B���h�E��01.png");
	CreateTextureEX("�}�X�N���C����", 2100, Center, Middle, "cg/mask/ci�E�B���h�E��01.png");

//���F��ňʒu��������
	CreateTextureSP("�G�}�X�N/�G�w�i100", 2000, Center, Middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");

	CreateColorEX("�G�F��", 1000, "000000");

	Fade("�G�F��", 300, 300, null, true);
	Fade("�}�X�N���C��*", 0, 1000, null, false);
	Move("�}�X�N���C����", 150, @0, 90, null, false);
	Move("�}�X�N���C����", 150, @0, 474, null, false);
	Zoom("�G�}�X�N", 150, 1000, 1000, null, true);

	Move("�}�X�N���C����", 150, @0, 281, null, false);
	Move("�}�X�N���C����", 150, @0, 281, null, false);
	Zoom("�G�}�X�N", 150, 1000, 0, null, true);
	Fade("�}�X�N���C��*", 50, 0, null, true);
	Delete("�}�X�N���C��*");
	Delete("�G�}�X�N/�G�w�i100");
	Delete("�G�}�X�N/�Gst200");
	Delete("�G�}�X�N");

	FadeDelete("�G�F��",300,null,true);
===========================*/

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/8000030a03">
"Let's use that&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/8000040a01">
"Okay&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);

	Wait(30);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,900,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Just to be safe&, we make sure that the guard is far away 
from us before quickly running to the elevator&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);
	CreateTextureSP("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");

	DrawDelete("�G����", 300, 100, null, "slide_01_01_1", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
We step inside of the ready elevator and Noiz pushes the 
button to send us to the top floor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se����_�R�C��_���쉹01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("bg_el", 10, -580, 165, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[.jpg");
	Request("bg_el", Smoothing);
	Rotate("bg_el", 0, @0, 180, @0, null,true);
	Zoom("bg_el", 0, 2500, 2500, null, true);


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


	CreateSE("SE11","se����_�G���x�[�^_�쓮01L");//�������u�r�d�Fse����_�G���x�[�^_�쓮01L�v
	MusicStart("SE11",1500,700,0,1000,null,true);

	Shake("bg_el2", 300, 0, 2, 0, 0, 500, null, false);

	Wait(2000);

	FadeDelete("bg_el2", 1000, null, true);

	Wait(2000);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
With a small shake&, the elevator begins to move&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u�R�C���F�������đf�ނ���񂾂����H�v
	CreateSE("SE01","se����_�R�C��_���쉹02");//�������u�r�d�Fse����_�R�C��_���쉹02�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Feeling slightly relieved&, I sigh&.
But I can't completely relax just yet&.

I turn my eyes to the sound of a Coil and see Noiz looking at a map&.

This guy&.
I wonder if he has a plan or something&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SetFrequency("SE11", 1800, 500, null);
	SetVolumeEX("SE11", 2500, 0, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(1500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
The elevator gradually decreases speed and stops without a sound&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//�����t�@�C��["dm2290_vs.nss"]

}
