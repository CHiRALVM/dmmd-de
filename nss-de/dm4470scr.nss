//<continuation number="0">
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


scene dm4470scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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

	#bg205011_0_�\�I�N���A=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4480sl.nss";

}


scene dm4470scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg205011_0_�\�I�N���A");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, 0, "cg/bg/l/bg205011_0_�\�I�N���A_l.jpg");

	Wait(1000);

	SoundPlay("@dm020b",3000,100,true);

	FadeDelete("��w�i", 3000, null, true);

	Wait(500);

//�����t�A�N���A�̐��_���E��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
This&.&.&.

What is this?
Why am I here&.&.&.

I remember feeling something like Scrap&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 5000, 450, null);

	Move("�G�w�i", 1500, @0, @-217, Dxl1, false);
	FadeDelete("�G�w�i", 1500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I can hear a clear sound with a soft timbre&.

I can't tell if there's even a ceiling or a floor where I 
am&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I'm just floating in this strange open area&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�t���b�V����

//�e�F�ΉԃG�t�F�N�g+�m�C�Y

/*
	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateTextureEXadd("�G��/�G���o", 2001, Center, Middle, "cg/ef/efx02�Ήԓd��02.jpg");
	CreateTextureEXsub("�G��/�G���o��", 2000, Center, Middle, "cg/ef/efx02�Ήԓd��02.jpg");
	Zoom("�G��/�G���o", 0, 1050, 1050, null, true);

	Rotate("�G��/�G���o��", 0, @0, @180, @0, Dxl3,true);

	DrawTransition("�G��/�G���o��", 0, 0, 400, 300, null, "cg/data/circle_02_00_0.png", true);

	SetFrequency("@dm020b", 2000, 350, null);
	Wait(2000);
	SetVolumeEX("@dm020b", 0, 1, null);
	SetFrequency("@dm020b", 0, 1000, Dxl3);

	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("�G��/�G���o", 200, 1000, 1000, Axl1, false);
	Fade("�G��/�G���o", 150, 800, Dxl3, true);
	Wait(30);
	FadeDelete("�G��/�G���o", 130, Axl1, false);

	Zoom("�G��/�G���o��", 250, 900, 900, Axl3, false);
	Fade("�G��/�G���o��", 150, 400, Dxl3, false);
	Wait(100);
	FadeDelete("�G��/�G���o*", 100, Axl1, true);
	Delete("�G��*");

	SetVolumeEX("@dm020b", 1500, 450, null);

	Wait(500);
*/

	SetFrequency("@dm020b", 2000, 350, null);
	Wait(300);
	SetVolumeEX("@dm020b", 300, 1, null);
	SetFrequency("@dm020b",300, 1000, Dxl3);

	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,400,0,1800,null,false);

	CreateColorSPadd("�G�t���b�V����", 5000, "RED");
	Wait(30);
	FadeDelete("�G�t���b�V����", 100, null, true);

	SetVolumeEX("@dm020b", 2000, 450, null);

	SetFrequency("@dm020b", 2000, 350, null);
	Wait(1000);
	SetVolumeEX("@dm020b", 300, 1, null);
	SetFrequency("@dm020b",300, 1000, Dxl3);

	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateColorSPadd("�G�t���b�V����", 5000, "RED");
	Wait(30);
	FadeDelete("�G�t���b�V����", 100, null, true);

	CreateSE("SE02","se�[��_����_�Ή�02");
	MusicStart("SE02",0,600,0,1400,null,false);

	CreateColorSPover("�G�t���b�V����", 5000, "RED");
	Wait(30);
	FadeDelete("�G�t���b�V����", 100, null, true);

	SetVolumeEX("@dm020b", 2000, 450, null);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Sometimes the tone becomes unstable&, and sparks start to 
fly throughout the air&.

I smell traces of something burning&.
Parts of it graze my cheek&.

But the music keeps ringing on&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4480sl.nss"]

}
