//<continuation number="250">
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


scene dm1170.nss_MAIN
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

//���o����===========================================================
	Request("@�G�F���C�g*", UnLock);
	Request("@�v���Z�X���C�g�P", UnLock);
	Request("@dm1160_�v���Z�X���]*", UnLock);
	Request("dm1160_�v���Z�X���]*", UnLock);
	Request("dm1160_�v���Z�X���]��", UnLock);
	Request("dm1160_�v���Z�X���]���[�U�[", UnLock);

	Request("@�v���Z�X���C�g�P", Stop);
	Delete("@�v���Z�X���C�g�P");
	Delete("@�GSuf*");
	Delete("@�G�F���C�g*");
	Delete("@dm1160_�v���Z�X���]*");
//���o����===========================================================

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#ev117�g���A���t�������=true;

	#bg390011_5_�v���`�i�W�F�C���ėp��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1180.nss";

}


scene dm1170.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	//�����݁FBGM�F�؂Ȃ��n
	SoundPlay("@dm012",0,450,true);

	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

//�}�N���E�v���Z�X�n���F�X�L�b�v�Ή��p==========================
	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("@dm1160_�v���Z�X���]*","�GSuf");
	SetBlur("�GSuf", true, 3, 50, 500, false);
	Fade("@dm1160_�v���Z�X���]�G�w�i", 0, 1000, null, true);

	Request("@�G�F���C�g*", UnLock);
	Request("@�v���Z�X���C�g�P", UnLock);
	Request("@dm1160_�v���Z�X���]*", UnLock);
	Request("dm1160_�v���Z�X���]*", UnLock);
	Request("dm1160_�v���Z�X���]��", UnLock);
	Request("dm1160_�v���Z�X���]���[�U�[", UnLock);

	GoLoopFade("@dm1160_�v���Z�X���]��",100);
	GoLoopFade2("@dm1160_�v���Z�X���]���[�U�[",137);
	Request("@�v���Z�X���C�g�P", Start);

	Delete("��w�i");
//�}�N���E�v���Z�X�n���F�X�L�b�v�Ή��p==========================

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�ȉ��A����
//===========================================

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000010a01">
"Sorry&.&.&."

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000020a02">
"It's fine&. Stay like this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,600,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
He says that&, turns his back to me&, and crouches down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000021a02">
"C'mere&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000030a01">
"Eh?"

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000040a02">
"Hurry up&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000050a01">
"What are&.&.&."

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000060a02">
"Piggy back&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000070a01">
"&.&.&.Huh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000080a02">
"Come on already&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000090a01">
"What are you&.&.&. this is a joke&, right?"

{	Fw("fw�g��_�ʏ�_cool");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000100a02">
"It's not&. How are we going to get home if you can't walk?
 We'll be bothering the club&. Get on&."

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000110a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
He has a point&. I swallow my next words&.

In a corner&, an employee starts to sweep; all of the 
earlier dancing guests look at us with sour faces&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000120a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I somewhat get myself up and unwillingly climb onto 
Koujaku&.

I quietly move my body weight to his back&.

I'm really too old for something like this&.&.&.

But I can't let myself cause anymore trouble&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000130a02">
"I'm gonna stand up now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	Move("�GSuf", 150, @0, @-10, Dxl1, true);
//	Move("�GSuf", 150, @0, @10, AxlDxl, true);

//	Wait(600);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
Koujaku holds up my thighs and carefully stands up&. I clingto his neck&, feeling weightless&.

I haven't had a piggy back ride since I was a kid&, so I 
feel just a tinge of fear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000140a02">
"Well&, please excuse us for this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000150a01">
"I'm sorry&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Request("@�v���Z�X���C�g�P", Stop);
	Delete("@�v���Z�X���C�g�P");
	Delete("@�GSuf*");
	Delete("@�G�F���C�g*");
	Delete("@dm1160_�v���Z�X���]*");

	OnBG(10,"bg303011_5_��y�{�݊O�ϓ�������b�h");
	FadeBG(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Koujaku bows his head to the janitors&, and we walk far awayfrom the floor so we won't cause anymore trouble&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
The lights&, the music&, the perfume&, the stench of sweat&. 
All of them were mixed together in that room&.

When we reach outside&, the air feels so refreshing&.

Koujaku silently keeps walking&, readjusting his hold on me from time to time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301021_5_�v���`�i�W�F�C�����ʂ�1��");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
At first I was embarrassed to see people watch me be 
carried&, but I quickly gave into it&.

The heat of Koujaku's back felt nice&. Some of the sickness faded away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000160a01">
"&.&.&.Koujaku&."

{	Fw("fw�g��_�ʏ�_cool");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000170a02">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE11","se�l��_����_�g������ԕ����������01L");
	MusicStart("SE11",1000,500,0,1000,null,true);

	CreateTextureEX("�G�d�uBG", 200, Center, Middle, "cg/bg/bg390011_5_�v���`�i�W�F�C���ėp��.jpg");
	CreateTextureEX("�G�d�u", 200, Center, Middle, "cg/ev/ev117�g���A���t�������.jpg");
	CreateTextureEX("�G�d�u�k", 100, -220, -120, "cg/ev/m/ev117�g���A���t�������_m.jpg");
	MoveFTP1("@�G�d�u�k",5000,5,10);

	Fade("�G�d�u�k", 1000, 1000, null, false);

	Wait(1500);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000180a01">
"&.&.&.I'm sorry&. For ruining your kimono&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000190a02">
"Don't sweat it&, I can always wash it later&. Isn't this how we've always been?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000200a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
His words stab me in the heart&.
Koujaku's kindness can hurt sometimes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000210a02">
"For now&, just be quiet&. You never know when you might
 start feeling sick again&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000220a01">
"&.&.&.Okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE11", 3000, 300, null);
	Fade("�G�d�u", 800, 1000, null, true);
	Delete("�G�d�u�k");
	Wait(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Koujaku has always taken care of me&, and that hurts even 
more&.

Koujaku&, he&.&.&. helped me even when I ruined his clothes&.

He's kind&, and he's good with taking care of others&.

I guess this is why girls fawn over him so much&.&.&.

A different thought pops into my head&, and I go back to my suspicions about Koujaku&.

I might have been too sensitive over it&, but he's doing 
something in secret for sure&.

Being the awful person that I am&, I ignore his kindness 
and my honest satisfaction&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�d�uBG", 0, 1000, null, true);
	Move("�G�d�uBG", 30000, @0, 0, null, false);

	FadeDelete("�G�d�u", 1000, null, true);

//�������u���o�F�ȍ~�݂͌��ɕ\����Ȃ��ق����ǂ����ȁv
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0069]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000230a01">
"Koujaku&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/7000240a02">
"Hm?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/7000250a01">
"&.&.&.Nevermind&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
Maybe I should just give up on it&.
Or maybe I should just pretend&.

&.&.&.I don't know&.

It's still hard for me to understand him even though he's 
been my friend since we were kids&. 

I can't tell how close we really are&.

While silently thinking to myself&, I start to feel a 
heaviness throughout my body&.

Koujaku's rhythm of walking feels nice&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
My eyelids gradually feel heavier and heavier&, and I fall 
asleep onto Koujaku's back&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE11", 2000, 300, null);

	Wait(1000);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(100, true);
	Wait(1000);

//�����t�@�C��["dm1180.nss"]

}
