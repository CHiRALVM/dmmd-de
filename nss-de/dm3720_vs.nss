//<continuation number="260">
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


scene dm3720_vs.nss_MAIN
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
	$GameName = "dm3730_vs.nss";

}


scene dm3720_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 600, Center, Middle, "cg/bg/bg304061_5_���]�^���[�K�i.jpg");
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	SetShade("�G�w�i", MEDIUM);
	Fade("�G�w�i", 0, 1000, null, true);

	HyperAkSet(750);

	St("C",740, @0,@0,"fu����_�퓬�n�C�p�[_laugh");
	FadeSt("C",0,true);

	Wait(100);

	Delete("��w�i");
	DrawDelete("�G�F��", 200, 100, null, "slide_01_01_1", true);

	SoundPlay("@dm008",0,450,true);

//����ʐؑց^���t���_

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000010b08">
"Hahahahahahaha!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����P", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�����P",Smoothing);
	Zoom("�G�����P", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);
	HyperAkDelete();

	FadeFR2("�G�����P",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����S", 1100, Center, -50, "cg/ef/efx04�r�[��_���K�CH02_s.jpg");
	Request("�G�����S",Smoothing);
	Rotate("�G�����S", 0, 0, 0, 90, null,true);
	Zoom("�G�����S", 0, 2000, 2000, null, true);

	FadeFR2("�G�����S",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����Q", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�����Q",Smoothing);
	Rotate("�G�����Q", 0, 0, 180, @0, null,true);
	Zoom("�G�����Q", 0, 1500, 1500, null, true);

	FadeFR2("�G�����Q",0,1000,100,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����R", 1100, Center, -104, "cg/ef/efx04�r�[��_���K�CH02_s.jpg");
	Request("�G�����R",Smoothing);
//	Rotate("�G�����R", 0, 0, 180, @0, null,true);
	Zoom("�G�����R", 0, 2000, 2000, null, true);

	Zoom("�G�����R", 150, 1500, 1500, null, false);
	FadeFR2("�G�����R",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����T", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�����T",Smoothing);
	Zoom("�G�����T", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);

	FadeFR2("�G�����T",0,1000,150,0,0,100,null, true);

	Wait(50);

	CreateSE("SE02","se�퓬_�Ռ�_�j��01a");//�������u�r�d�Fse�퓬_�Ռ�_�j��01a�v
	MusicStart("SE02",0,700,0,1000,null,false);
//�F�������\��
	CreateColorSPadd("�G�t���b�V����", 5000, FFFFFF);
	Delete("�G����*");
	Delete("�G�w�i");


	CreateTextureSP("�G���Ǎ۔w�i", 15, -740, -120, "cg/bg/bg304061_5_���]�^���[�K�i.jpg");
	Zoom("�G���Ǎ۔w�i", 0, 1500, 1500, null, true);

	CreateColorSP("�G���F��", 20, "000000");
	DrawTransition("�G���F��", 1, 0, 500, 10, null, "cg/data/slide_01_00_1.png", true);

	Wait(30);
	FadeDelete("�G�t���b�V����", 1000, null, true);

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/2000020e45">
"Uwah! Fuck&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
The beam bounces along the walls&. 

Akushima carefully watches his movements&, and I keep asking
myself what to do next&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/2000030e46">
"Shit&, we need to get down fast or else we're screwed!"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/2000040e45">
"The plan will be ruined&.&.&. We absolutely need to do this
 for Mink-san&.&.&. Uwah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�M�r�[����
	CreateSE("SE01","se�퓬_���K�C_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I guess from their conversation that Mink gave them some 
sort of instruction&.

I need to stop Akushima from moving somehow&.&.&.

There must be a timeframe where Akushima reloads and 
restarts his offensive again&.

We need to destroy him within that time&.

&.&.&.With Scrap&.

I don't know what will happen to me if I keep using Scrap 
with this headache&.

But I can't think of any other way&.
And I don't have the time either&.

It doesn't guarantee success&, but&.&.&.

I have to do it&, sink or swim&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G���w�i��", 9995, Center, Middle, "cg/bg/bg304062_5_���]�^���[�K�i�ʃA���O��.jpg");
	Move("�G���w�i��", 0, @0, @60, null, true);
	Request("�G���w�i��", Smoothing);
	Zoom("�G���w�i��", 0, 1200, 1200, null, true);
	Move("�G���w�i��", 700, @0, @-60, Dxl2, false);
	Fade("�G���w�i��", 700, 1000, null, true);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/2000050a01">
"I'll go and stop Akushima&. So you guys go and head down!"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/2000060e46">
"Huh? What're you saying!? How are you going to stop him!?"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/2000070e45">
"And where is Mink-san!?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/2000080a01">
"He told me to come down here with you guys!"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/2000090e45">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/2000100e46">
"Are you sure he said that!?"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/2000110e45">
"No&.&.&. Mink-san would never say something like that without
 thinking first&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/2000120e46">
"&.&.&."

//�������u���F�n�C�p�[�����Ă����̂ŒǋL���܂���10/30�v
{	Fw("fw����_�퓬�n�C�p�[_normal");}
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000130b08">
"ORAORAORAAAAA! HELL YEAH!!! YOU'RE NEXTTTTT!!!"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/2000140a01">
"Leave this place to me&. You guys&, hurry downstairs!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/2000150e45">
"&.&.&.Got it&. You better hurry down when you're done&, too&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}

//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/2000160e46">
"Shit! You better get your ass down there!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
All of the members nod&, and I yell at Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�G���W���ӂ���02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 10000);
	Delete("�G���w�i��");
	Delete("�G���Ǎ۔w�i");
	Delete("�G���F��");
	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/2000170a01">
"Hey! Over here!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


{	St("C",740, @0,@0,"st����_�ʏ�n�C�p�[_laugh");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000180b08">
"Hehehe&, have a nice&, warm WELLLCOOOOOOOOME!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_���K�C_�\����01");//�������u�r�d�Fse�퓬_���K�C_�\����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
{	St("C",740, @0,@0,"st����_�퓬�n�C�p�[_normal");
	FadeSt("C",200,true);}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
Akushima turns my way&, happily holding up his megaphone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Mink definitely said it&.
That he's a persistent little bitch&.

He's completely filled with "stubbornness"&.

So I&.&.&. will destroy that&.

{//�������u�r�d�Fse�敨_�����o�C�N_�G���W���ӂ���01�v
	CreateSE("SE01","se�敨_�����o�C�N_�G���W���ӂ���01");
	MusicStart("SE01",0,700,0,1000,null,false);}
The bike loudly bellows as if it knows what I'm thinking&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/2000190a01">
"&.&.&.Let's go&."

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/2000200b12">
"Roger&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");//�������u�r�d�Fse�敨_�����o�C�N_�X�s��01�v
	CreateSE("SE02","se�敨_�����o�C�N_�}����01");//�������u�r�d�Fse�敨_�����o�C�N_�}����01�v

	CreateTextureSP("�G�Y�[��1", 2000, -512, -288, "cg/bg/l/bg304061_5_���]�^���[�K�i_l.jpg");
	CreateTextureSP("�G�Y�[��st01", 2001, Center, -312, "cg/st/l/st����_�퓬�n�C�p�[_normal_l.png");
	CreateTextureEX("�G�Y�[��st02", 2001, Center, -105, "cg/st/l/st����_�퓬�n�C�p�[_shock_l.png");
	Request("�G�Y�[��st01",Smoothing);
	Zoom("�G�Y�[��1", 0, 500, 500, null, true);
	Zoom("�G�Y�[��st01", 0, 500, 500, null, true);
	CreateMovie("���[�r�[�P", 2002, Center, Middle, true, true, "dx/mv0003�W����01_��.ngs");
	Fade("���[�r�[�P", 0, 0, null, true);
	Zoom("���[�r�[�P", 0, 3000, 3000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("���[�r�[�P", 0, 1000, null, false);
	Zoom("�G�Y�[��1", 275, 1000, 1000, Dxl1, false);
	Zoom("�G�Y�[��st01", 275, 1000, 1000, Dxl1, false);
	Move("�G�Y�[��1", 300, @0, -74, null, false);
	Move("�G�Y�[��st01", 300, @0, -105, null, true);
	Fade("���[�r�[�P", 100, 0, null, false);
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
We race straight towards Akushima&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�Y�[��st02", 100, 1000, null, true);
	Fade("�G�Y�[��st01", 0, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000210b08">
"Hah!? Hah!? Wh-Whaaa!?!?!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE01", 250, 0, null);
	SetVolumeEX("SE02", 250, 0, null);

//�������u�r�d�Fse�퓬_����_����01�v
	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I nearly crash into the struggling Akushima&, but jump off 
the bike just in time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//��������I�Ƒ��t�����������ɉ���������
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	Delete("�G�Y�[��*");

	CreatePlainSP("�G�ʏՌ�", 20);
	Move("�G�ʏՌ�", 0, 220, -285, null, true);
	Request("�G�ʏՌ�", Smoothing);
	Zoom("�G�ʏՌ�", 0, 2000, 2000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,false);
	FadeDelete("�G�t���b�V����", 100, null, true);

	CreateSE("SE02","se�l��_����_���02");
	MusicStart("SE02",0,700,0,1000,null,false);

{	Fw("fw����_�ʏ�n�C�p�[���K�z���Ȃ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000220b08">
"Oh!?!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
I topple the flustered Akushima over and pin him to the 
ground&, my eyes stuck on his&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSEEF("SEL01","se�l��_�S��_�ۓ�01L");
	SetFrequency("@SEL01*", 0, 800, null);
	MusicStartEF("SEL01",6000,500,0,800,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
I focus as hard as I can&.

I won't&.&.&.<?>
{	Wait(300);}
Fail&.<k>
It will go perfectly&. Perfectly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//SetVolumeEX("@dm*", 0, 350, null);
	SetVolumeEX("@dm008", 0, 350, null);
	SetVolumeEX("SEL01*", 1000, 700, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
For the team members that put their trust in me&.
For the Ren I promised to fix&.

And&.&.&.
{
	SetVolumeEX("@dm008", 0, 250, null);
	//SetVolumeEX("@dm*", 0, 250, null);
	SetVolumeEX("SEL01*", 1000, 900, null);
}
For Mink&, who's reaching for his goal right now&.

It's not anyone's order&.
No one asked me to do this&.

On my own account&.&.&.

&.&.&.I'll use my power&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");
	MusicStart("SE01",0,700,0,1000,null,true);
	CreateColorSPadd("�G�F��", 4000, FFFF99);
	Wait(300);
	FadeDelete("�G�F��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
Akushima points his weapon at me&.
The mouth of the megaphone starts to light up&.

Right now&, there's nothing that could break my 
concentration&.

{
	SetVolumeEX("@dm008", 0, 150, null);
	//SetVolumeEX("@dm*", 0, 150, null);
	SetVolumeEX("SEL01*", 1000, 1100, null);
}
Just a little more&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�퓬�n�C�p�[_laugh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000230b08">
"Ahahahahaha&, you thought that'd work!? How disappointing!
 This is goodbyyyeeeeee!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);
	SetVolumeEX("SE*", 500, 0, null);
	SetVolumeEF("@SEL01",500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
&.&.&.&.&.Now!!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F���t�̗͔����ėp�v
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreateSE("SE01","se�[��_����_�̓N���A01");
	MusicStart("SE01",0,500,0,1500,null,false);
	SetVolumeEX("SE01", 2000, 1200, null);
	SetFrequency("SE01", 2000, 1470, null);
	Fade("�G�F��", 2000, 500, Axl2, true);
	SetVolumeEX("SE01", 600, 0, null);
	Wait(100);
	FadeDelete("�G�F��", 1000, null, true);

	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/2000240a01">
"&.&.&.Don't move&."

{	FwPro("fw����_�퓬�n�C�p�[_laugh",3600,"fw����_�퓬�n�C�p�[_shock");}
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000250b08">
"Ahaahahahahahahaha&.&.&. Ah?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�������̓��̒��֓����Ă���
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	CreateSE("SCRAPINSE01","se�l��_�S��_�ۓ�02L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

	CreatePlainSP("�G��", 5000);
	CreatePlainSP("�G��2", 5000);
	Request("�G��", Smoothing);
	SetBlur("�G��", true, 2, 500, 1000, false);

	Zoom("�G��", 30000, 1500, 1500, null, false);

	Zoom("�G��2", 500, 1100, 1100, Dxl1, false);
	FadeDelete("�G��2", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/2000260b08">
"Ahhhhhhhhhhhhhhhh!?!?!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F���_���E�ցv

	CreateSE("SESCRAPIN11","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SESCRAPIN12","se�[��_��z_�t���b�V���o�b�N01");

	CreateColorEX("�G�\�I���F��", 9920, "000000");
	CreateColorEXadd("�G�\�I���F��", 9910, "FFFFFF");
	CreatePlainSP("�G�\�I����", 9909);

	CreateEffectSP("�G�\�I�����ʈ�", 9900, 0, 0, 1024, 576, "Plain");
	CreateEffectSP("�G�\�I�����ʓ�", 9900, 0, 0, 1024, 576, "Plain");
	CreateEffectSP("�G�\�I�����ʎO", 9900, 0, 0, 1024, 576, "Plain");

	SetVertex("�G�\�I�����ʈ�", center, 144);
	SetVertex("�G�\�I�����ʓ�", center, 144);
	SetVertex("�G�\�I�����ʎO", center, 144);

	MusicStart("SESCRAPIN11",0,700,0,800,null,false);
	MusicStart("SESCRAPIN12",0,700,0,800,null,false);

	Fade("�G�\�I���F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�\�I���F��", 1000, 0, null, true);

	SetBlur("�G�\�I�����ʈ�", true, 4, 500, 300, false);
	SetBlur("�G�\�I�����ʓ�", true, 4, 500, 300, false);
	SetBlur("�G�\�I�����ʎO", true, 4, 500, 300, false);

	Fade("�G�\�I����", 2000, 0, null, false);
	Zoom("�G�\�I�����ʈ�", 4000, 1100, 1100, Axl2, false);
	Zoom("�G�\�I�����ʈ�", 4000, 1400, 1400, Axl2, false);
	Zoom("�G�\�I�����ʈ�", 4000, 1700, 1700, Axl2, false);
	Fade("�G�\�I���F��", 4000, 1000, Axl3, true);

	SetVolumeEX("SCRAPINSE01", 3000, 0, null);
	Wait(2000);

	DeleteAllSt(0,true);
	Delete("�G�\�I������*");
	Delete("�G�\�I����");
	//Delete("�G�\�I���F��");
	//FadeDelete("�G�\�I���F��", 2000, null, true);
	//Fade("�G�\�I���F��", 2000, 0, null, true);

/*
	CreateSE("SE01","se�[��_���__����01");//�������u�r�d�Fse�[��_���__����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 2000, 1000, null, true);
	Wait(1000);
*/

	SetVolumeEX("SCRAPINSE*", 2000, 0, null);
	ClearFadeAll(2000, true);
	Request("@SEL01*",UnLock);Delete("@SEL01*");
	Wait(0);

//�����t�@�C��["dm3730_vs.nss"]

}
