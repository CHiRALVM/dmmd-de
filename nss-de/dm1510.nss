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


scene dm1510.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){

//�����ݒ�Q
		if($dm1500_SE11==true){Request("SE11",UnLock);$dm1500_SE11=false;}

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
	#bg304033_5_���]�^���[�L��03=true;
	#bg304061_5_���]�^���[�K�i=true;
	#bg304062_5_���]�^���[�K�i�ʃA���O��=true;

	//�����o����
	Request("@EFWIN/��������",Lock);
	Request("@EFWIN/SE01",Lock);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1520.nss";

}


scene dm1510.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintGO("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304112_5_���]�^���[���z�[�����O");
	FadeBG(0,true);

	Delete("��w�i");

//���F�����Ή�
	if($dm1500_SE11==true){
		Request("SE11",UnLock);
		$dm1500_SE11=false;
	}else{
		CreateSE("SE11","se����_���]�^���[_�n��01L");
		MusicStart("SE11",0,700,0,1000,null,true);
	}

//�������u���F�����Ή��A�A���[���ƌx�񉹁v
	if($CautionAlarm==true){
		Request("@EFWIN/SE01", Play);
		Request("@EFWIN/��������", Play);
		SetVolumeEX("@EFWIN/SE01", 10, 300, null);
		SetVolumeEX("@EFWIN/��������", 10, 700, null);

	}else{
	CreateSE("@EFWIN/SE01","se����_���]�^���[_�A���[��01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",0,300,0,1000,null,true);
	CreateVOICEEX("@EFWIN/��������","dm15/0000010e14","��������");
	Request("@EFWIN/��������", Lock);
	MusicStart("@EFWIN/��������",0,700,0,1000,null,true);
	$CautionAlarm=true;
	}

//���F�a�f�l
	SoundPlay("@dm008",0,450,true);

	CreateColorEXmul("�Gdm3520red", 500, RED);
	Fade("�Gdm3520red", 0, 600, null, true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("�G�V�F�C�N","bg304112_5_���]�^���[���z�[�����O",400,1);

	DrawDelete("�G�F��", 250, 100, null, "slide_01_03_1", true);


	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/1000010e47">
"The elevator over here is broken! Take the stairs!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE12","se�l��_����_����03����L");//�������u�r�d�Fse�l��_����_����03����L�v
	MusicStart("SE12",0,700,0,750,null,true);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro01");

	OnBG(10,"bg304033_5_���]�^���[�L��03");
	FadeBG(0,true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304033_5_���]�^���[�L��03",400,2);

	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);

	SetVolumeEX("SE12", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Following the members in front of us&, we run down the 
hallway to the staircase&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro02");

	OnBG(10,"bg304032_5_���]�^���[�L��02");
	FadeBG(0,true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304032_5_���]�^���[�L��02",400,1);

	DrawDelete("�G����", 150, 100, null, "slide_01_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
My headache has quieted down considerably&, so I can easily move around now&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	DeleteAllSt(0,true);
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro01");

	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304061_5_���]�^���[�K�i",400,2);

	CreateSE("SE12","se�l��_����_����03����L");//�������u�r�d�Fse�l��_����_����03����L�v
	MusicStart("SE12",0,600,0,750,null,true);

	DrawDelete("�G����", 150, 100, null, "zoom_01_00_1", true);

	SetVolumeEX("SE12", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
We finally reach the staircase&, and all we focus on is 
running down the stairs to the sound of the alarm echoing&.

I don't know how far we went down&.
But all we thought about was making it to the entrance&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/1000020a01">
"Hah&, haah&, hah&.&.&.&."

{	Fw("fw�g��_�o�[�T�N���C_pain");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/1000030a02">
"Guh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I went well over my body's limit&, and soon had to pause 
to catch a bit of breath&.

But still&, the fact that we made it down that many 
staircases was a miracle&.

We continued to move our feet as fast as we could to get 
out of there&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro02");

	OnBG(10,"bg304062_5_���]�^���[�K�i�ʃA���O��");
	FadeBG(0,true);

	Shake("@OnBG*", 2000, 0, 2, 0, 0, 500, null, false);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Wait(100);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Shake("@OnBG*", 0, 0, 0, 0, 0, 500, null, true);

	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	Shake("@OnBG*", 2000, 0, 2, 0, 0, 500, null, false);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Wait(100);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Shake("@OnBG*", 0, 0, 0, 0, 0, 500, null, true);

	OnBG(10,"bg304062_5_���]�^���[�K�i�ʃA���O��");
	FadeBG(0,true);
	dm1500ShakeLoop("�G�V�F�C�N","bg304062_5_���]�^���[�K�i�ʃA���O��",400,1);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
I start to go dizzy&, my head spinning&.

The only sounds bouncing off the staircase wall was the 
rough breathing of all of us&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro01");

	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304061_5_���]�^���[�K�i",400,2);
	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Fw("fwm�g���`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm15/1000040e48">
"Hah&, hah&, just- one more floor!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
Looking down&, I see the staircase end and a hallway going 
on&.

Just a little more&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
We make it down the steps&, and finally leave
out of the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���F�߂���댯
	$dm1510_SE11=true;
	Request("SE11",Lock);

//�����t�@�C��["dm1520.nss"]

}
