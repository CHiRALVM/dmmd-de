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


scene dm0860.nss_MAIN
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
	#bg101021_1_���Z����ʂ藠�H�n01=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($DM_ROUTE==1){	$GameName = "dm1010.nss";
	}else if($DM_ROUTE==2){	$GameName = "dm2010.nss";
	}else if($DM_ROUTE==3){	$GameName = "dm3010.nss";
	}else if($DM_ROUTE==4){	$GameName = "dm4010.nss";
	}else if($DM_ROUTE==5){	$GameName = "dm5010.nss";
	}else {	$GameName = "dm0010.nss";
	}

}


scene dm0860.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104011_5_���t���");
	FadeBG(0,true);

	CreateSE("SE01","se����_���t��K�i_�o�鋭��01");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 2500, 0, null);

	FadeDelete("��w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I finish changing&, start up Ren&, and quickly go downstairs&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i100", 100, Center, Middle, "cg/bg/bg104051_5_���t���.jpg");

	Delete("�G�w�i500");

	St("LL",710, @0,@5,"st�N���A_�ʏ�}�X�N����_normal");
	St("ML",730, @30,@0,"st�g��_�ʏ�_cool");
	St("MR",730, @-30,@0,"st�~���N_�ʏ�_normal");
	St("RR",710, @-15,@5,"st�m�C�Y_�ʏ�_normal");
	FadeAllSt(0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
In the living room is Granny&, Koujaku&, Noiz&, Clear&, 
Mink&, Haga-san&, and Yoshie-san&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/6000010a02">
"Aoba&.&.&."

{	DeleteAllSt(180,true);}
{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",180,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm08/6000020a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/6000030a01">
"Granny! There are a bunch of policemen outside&, and he
 called out my name too&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�^�G_�ʏ�_sigh");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/6000040b03">
"This has definitely taken a turn for the worst&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("ML",720, @0,@0,"st���V�G_�ʏ�_worry");
	St("MR",720, @0,@0,"st�H��_�ʏ�_worry");
	FadeAllSt(180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���V�G�z
<voice name="���V�G" class="���V�G" src="voice/dm08/6000050b15">
"Wait&, Aoba-chan! What's going to happen!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm08/6000070b07">
"I finished the preparations for you and came over here&,
 Tae-san&, but&.&.&. it seems like there's bit of a problem&."

{	St("ML",720, @0,@0,"st���V�G_�ʏ�_normal");
	FadeSt("ML",200,true);}
//�y���V�G�z
<voice name="���V�G" class="���V�G" src="voice/dm08/6000080b15">
"I don't know why they're doing this&, but I'm on your side&, Aoba-chan!"

{	St("MR",720, @0,@0,"st�H��_�ʏ�_smile");
	FadeSt("MR",200,true);}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm08/6000090b07">
"Yes&, me too!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_confuse",1850,"fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/6000100a01">
"Thank you&. But&, I feel only sort of relieved&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�^�G_�ʏ�_sigh");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/6000110b03">
"This is most likely Toue&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/6000120a01">
"Toue&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�^�G_�ʏ�_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/6000130b03">
"Yesterday&, Morphine must've reported that you used Scrap&.
 So now he's showing interest&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	SetVolumeEX("@dm007a", 1000, 0, null);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�����H�F�g����
//�y�����z
<voice name="����" class="����" src="voice/dm08/6000140b08">
"Hurry up and come oooooooooooooouuut!!! If you don't we'll come in! Okay! All right! Get ready for entryyyy!!"

{
	SoundPlay("@dm009",0,450,true);
	St("C",740, @0,@0,"st�^�G_�ʏ�_shout");
	FadeSt("C",200,true);}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/6000150b03">
"All of you&, escape through the back door!"

{	DeleteAllSt(180,true);}
{	St("C",740, @0,@0,"st�g��_�ʏ�_angry4");
	FadeSt("C",180,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/6000160a02">
"Those guys are completely serious&."

{	DeleteAllSt(180,true);}
{	St("MR",720, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("MR",180,true);}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm08/6000170b07">
"We'll do something here&. So please&, Aoba-kun&, get out as
 quickly as you can!"

{	St("ML",720, @0,@0,"st���V�G_�ʏ�_angry");
	FadeSt("ML",200,true);}
//�y���V�G�z
<voice name="���V�G" class="���V�G" src="voice/dm08/6000180b15">
"Exactly! We'll make sure that those stinky policemen can't take a single step!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/6000190a01">
"Haga-san&, Yoshie-san&.&.&. Granny&, thank you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�����H�F�g����
//�y�����z
<voice name="����" class="����" src="voice/dm08/6000200b08">
"CHAAAAAARRRRRRGEEEEE!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_shout");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/6000210a02">
"Aoba&, they're coming!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg104001_1_���t��O�ʂ�");
	FadeBG(0,true);

	Delete("�G�w�i100");

	DrawDelete("�G����", 250, 100, Dxl1, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
We go outside through the back kitchen door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�l��_����_����04����");
	MusicStart("SE02",0,700,0,600,null,false);

	Wait(100);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 8000, 0, 2, 0, 0, 1000, AxlDxl, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
As if they had taken our places&, we hear the noise of 
policemen crowding into the house&.

Granny&, Haga-san&, Yoshie-san&.&.&.
Everyone&, I'm sorry&.&.&.!

Please be safe&.&.&.!!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("�G����", 6000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Delete("�G��");
	CreateTextureSP("�G�w�i100", 100, Center, Middle, "cg/bg/bg101021_1_���Z����ʂ藠�H�n01.jpg");
	Rotate("�G�w�i100",0,0,180,null,false);
	Move("�G�w�i100",0,-256,0,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
We follow a narrow road that runs between two walls&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawDelete("�G����", 250, 100, Dxl1, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
We pass through it&, and it becomes a bit wider as we hit a different back lane&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm08/6000220a04">
"There are police over there! I can hear their footsteps!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",2000,700,0,800,null,false);

	CreateSE("SE02","se�l��_����_����04����");
	MusicStart("SE02",2000,700,0,600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
Just as Clear yells out&, I hear the policemen in front of 
us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 10000, 0, null);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm08/6000230e15a">
"It's them! They're over here!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/6000240a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
They found us&.&.&.!

If they catch us here&, we'll be rounded up like cattle!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm08/6000250a05">
"Don't huddle together! Separate!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,1100,null,false);
	CreateSE("SE03","se�l��_����_����01");
	MusicStart("SE03",0,700,0,900,null,false);
	CreateSE("SE04","se�l��_����_����01");
	MusicStart("SE04",0,700,0,800,null,false);
	CreateSE("SE04","se�l��_����_����01");

	SetPan("SE01", 300, -1000, null);
	SetPan("SE02", 1000, 600, null);
	SetPan("SE03", 1000, -600, null);
	SetPan("SE04", 300, 1000, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
Mink's voice urges us&, and we start running in different 
directions&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(500);

	ClearFadeAll(0, true);

//�����t�@�C��["dm1010.nss"]�g�����[�g
//�����t�@�C��["dm2010.nss"]�m�C�Y���[�g
//�����t�@�C��["dm3010.nss"]�~���N���[�g
//�����t�@�C��["dm4010.nss"]�N���A���[�g
//�����t�@�C��["dm5010.nss"]�@���[�g
//�����t�@�C��["dm0010.nss"]�ی�

}
