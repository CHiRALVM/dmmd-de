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


scene dm0490.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0500.nss";

}


scene dm0490.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

//���w�i�ύX�\��
	OnBG(10,"bg101041_3_���Z����ʂ藠�H�n05");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
As evening approaches&, a light delicious smell begins to 
float through the streets&.

So it's dinner time&.
That reminds me&, I wonder if Granny's home?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/bg/bg104021_5_���t��䏊.jpg");
	St("C",1200, @0,@0,"bu�^�G_�ʏ�_normal");
	FadeSt("C",0,true);

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Around this time of day&, from time to time I go out with   some people&.

Granny&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");
	DeleteAllSt(0,true);

	FadeDelete("�G�ʂQ", 500, null, true);

	Wait(300);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/9000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
&.&.&.I wonder what it is&.

Ever since I played that game&, I've had a bad feeling that won't go away&.

In that game&, Granny was stolen away by some black bats&.

&.&.&.&.&.

Why did that game get sent at such a weird time?

Was it by accident?

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���R�C��_�d�b
//���R�C��_�R�C���𑀍삵�ēd�b��������

	//���w�k���R�C���m�F�x

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm0490_01","Granny",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���G�R�C���d�b�\��
	CoilPhone_CallFade();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Just thinking about it makes my chest hurt&, so I try to 
call Granny from my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���R�C��_�d�b
//���R�C��_�R�C���̒ʐM�������΂炭����

	//���R�C���҂�
	CoilWait();

	Wait(5000);

//	SetVolumeEX("SE*", 2500, 1, null);

	//���G�R�C���d�b�I��
	CoilPhone_End();

	Wait(1000);

	//���F�G�H�I�R�C���d�b����
	$coilintoON=true;
	CoilPhoneDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.It isn't going through&.

I'll try the home phone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���R�C��_�R�C���̒ʐM�������΂炭����

	//���R�C���҂�
	CoilWait();

	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm0490_02","Home",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//���@�R�C�����o�\��
	//CoilStartFade();
	//���G�R�C���d�b�\��
	CoilPhone_CallFade();

	Wait(5000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
She's not picking up&.

{
	//���G�R�C���d�b�I��
	CoilPhone_End();

	//���F�G�H�I�R�C���d�b����
	$coilintoON=true;
	CoilPhoneDelete();
}
I'll try Granny's Coil one more time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���R�C���҂�
	CoilWait();

	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm0490_03","Granny",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//���@�R�C�����o�\��
	//CoilStartFade();
	//���G�R�C���d�b�\��
	CoilPhone_CallFade();

	Wait(5000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.She isn't picking up&.

But she never really used her Coil from the start&.

Instead of sending me a message&, she'd leave a letter by 
the entryway&.

That's why she might've gone out knowing that I probably 
was out with some people&.

Probably&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���G�R�C���d�b�I��
	CoilPhone_End();

	Wait(500);

	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPhone",300,-50,370);
	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	//CoilAllDelete(300,-50,370);

	//���R�C���҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
Definitely&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,100);

	CreateTextureSP("�G���ʔw�i", 1000, 0, Middle, "cg/bg/m/bg101021_5_���Z����ʂ藠�H�n01�����q�l_m.jpg");

	EfRecoIn2(100);

	Wait(500);

	EfRecoOut1(100);

	Delete("�G����*");
	Delete("�G�w�i");

	EfRecoIn2(400);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/9000020a01">
"&.&.&.Damn it!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I try hard not to worry&, but I keep thinking about the 
bloodstains scattered everywhere at the Dry Juice hangout&.

I think that's what's gotten me so nervous today&.

I'm thinking too much about not being able to reach Granny&.

But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
&.&.&.I can't do this&. I'm going home&.

I'll feel better when I get home and see Granny safe 
and sound&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I make up my mind&, and run full-speed back home&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0500.nss"]

	Wait(1000);

	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1000);

	ClearFadeAll(0, true);

}
