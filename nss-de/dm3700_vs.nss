//<continuation number="400">
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


scene dm3700_vs.nss_MAIN
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
	#bg304051_5_���]�^���[�����G���A�L��01=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3710.nss";

}


scene dm3700_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304062_5_���]�^���[�K�i�ʃA���O��");
	FadeBG(0,true);

	CreateSE("SE01","se�敨_�����o�C�N_�G���W���ӂ���02");//�������u�r�d�Fse�敨_�����o�C�N_�G���W���ӂ���02�v
	MusicStart("SE01",1000,700,0,1000,null,false);

	Wait(1000);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);

	SoundPlay("@dm008",0,450,true);

//����ʐؑց^���t���_

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000010a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�敨_�����o�C�N_���n01");//�������u�r�d�Fse�敨_�����o�C�N_���n01�v
	MusicStart("SE01",1000,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

	CreateSE("SE11","se�敨_�����o�C�N_���s01L");//�������u�r�d�Fse�敨_�����o�C�N_���s01L�v
	MusicStart("SE11",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The force of this bike is going to throw me right off&.&.&.!

I tightly clasp the grip as the shocks from going down the stairs hit me&.

&.&.&.Mink must've already met Toue&.

The thought flickers in the corner of my brain so many 
times&.

Thinking about it as much as I can&, I concentrate on which direction I'm going&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o�C�N�̐����A������Ɗɂ�
//�������u�r�d�Fse�敨_�����o�C�N_�X�s��01�v
	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE11", 300, 0, null);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	SetVolumeEX("SE11", 4000, 0, null);
	SetFrequency("SE11", 2000, 500, null);
	DrawDelete("�G����", 250, 100, null, "slide_02_01_0", true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I ease up the speed when I reach the floor&.
This is definitely the floor the rest of the members were 
on&.

Right now they're even farther down&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�M�r�[����
//�������u�r�d�Fse�퓬_�h�q_����01�v
	CreateSE("SE01","se�퓬_�h�q_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_�h�q01.jpg");
	Zoom("�G������", 0, 1050, 1050, null, true);
	FadeFFR2("�G������", 0,1000, 200, 0, 0, 50,null, true);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000020a01">
"!"

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000030b12">
"Danger!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�}����01");//�������u�r�d�Fse�敨_�����o�C�N_�}����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("�G��*");

	DrawDelete("�G����", 200, 100, null, "slide_01_03_0", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Something flew at me from behind&, and the bike took off to 
avoid it on its own&.

//�������[�ƕǂ��n���鉹
{	CreateSE("SE01","se�[��_��_�������_01");
	MusicStart("SE01",0,500,0,2000,null,false);}
I'm astonished when I turn my head around&.
The walls are melting down&.

What the&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G��", 1100, Center, Middle, "cg/ev/evf03�h�q�`�l�����ӂ�����.jpg");
	Fade("�G��", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
When I look down the stairs&, I see a dog standing there&.

It opens its mouth like it's yawning&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�h�q_�J��01");//�������u�r�d�Fse�퓬_�h�q_�J��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//	CreateTextureSP("�G����", 1080, Center, Middle, "cg/ev/evf03�h�q�`�l�����ӂ�����a.jpg");
	CreateTextureSP("�G���Q", 1090, Center, Middle, "cg/ev/l/evf03�h�q�`�l�����ӂ�����a_�A�b�v_l.jpg");

	Move("�G���Q", 500, @0, 0, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The mouth continues to open as the long barrel of a gun 
begins to reach out of it&.

&.&.&.This is bad&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�M�r�[����
	CreateSE("SE01","se�퓬_�h�q_����01");//�������u�r�d�Fse�퓬_�h�q_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_�h�q01.jpg");
	Rotate("�G������", 0, @0, @180, @0, null,true);
	Zoom("�G������", 0, 1050, 1050, null, true);
	FadeFFR2("�G������", 0,1000, 200, 0, 0, 50,null, true);

	CreateSE("SE02","se�敨_�����o�C�N_�X�s��01");//�������u�r�d�Fse�敨_�����o�C�N_�X�s��01�v
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�G��*");
	OnBG(10,"bg304051_5_���]�^���[�����G���A�L��01");
	Zoom("@OnBG*", 0, 1050, 1050, null, true);
	Rotate("@OnBG*", 0, @0, @180, @0, null,true);
	FadeBG(0,true);

	DrawDelete("�G����", 200, 100, null, "slide_01_03_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I work the bike and barely escape a second time&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000040a01">
"What the hell was that!?"

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000050b12">
"They're specialized defense Allmates&. They're not on the
 market&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000060a01">
"Allmates&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F�~���N�Ƃ̃V�[�����t���b�V���o�b�N�B�F�������Ȃ����x�̑����Łv
	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");

	CreateTextureSP("�G�w�i", 1000, -1024, Middle, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	St("C",1740, @0,@0,"bu�~���N_�ʏ�_serious");
	FadeSt("C",0,true);

	Fade("�G�t���b�V����", 0, 500, null, true);

	Wait(50);
	Fade("�G�t���b�V����", 0, 1000, null, true);
	Delete("�G�w�i");
	DeleteAllSt(0,true);

	FadeDelete("�G�t���b�V����", 50, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Somehow I'm taken aback&.
&.&.&.What?

We were just talking about that&.&.&.

&.&.&.Oh yeah&. Ren&.

The program Mink told me to put into Ren&.

They had specialized Allmates in the tower&, so in order to break that&, we&.&.&.

So that's what it was&.

Which means&, if I was to use that program&, would I be able 
to stop it?

But&, then Ren would be&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�g��_�o�C�N_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000070b12">
"Aoba&, use that blue one&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000080a01">
"But&.&.&."

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000090b12">
"We can't spare any time&. There are even more defense
 Allmates here&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G��", 1100, Center, -1, "cg/ev/l/evf03�h�q�`�l�����ӂ�����b_l.jpg");

	CreateSE("SE01","se����_����_�����h�q���01");
	CreateSE("SE02","se����_����_�����h�q���01");
	CreateSE("SE03","se����_����_�����h�q���01");

	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
	MusicStart("SE02",0,500,0,1000,null,false);
	Fade("�G��", 500, 1000, null, true);
	MusicStart("SE03",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Towards the staircase I see more defense Allmates 
approaching&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G��",200,null,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000100a01">
"&.&.&.&.&."

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000110b12">
"We're Allmates&. We're there to be useful to our partner&.
 We don't need human emotions&."

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000120b12">
"We aren't alive&, but humans are&. If you were to die&, that
 blue Allmate wouldn't have been able to fufill that
 obligation&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000130a01">
"&.&.&.I understand&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I muster enough strength to reply&, go into my bag&, and 
activate Ren&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm37/0000140a06">
"Aoba&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000150a01">
"Ren&.&.&. I'm sorry&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm37/0000160a06">
"Are you going to use the program?"

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000170a01">
"&.&.&.I'm sorry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm37/0000180a06">
"There's nothing for you to apologize for&, Aoba&. This is my duty&. Take it to the network connector for me&."

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000190a01">
"&.&.&.!"

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000200b12">
"I'll take you to where the connector is&. Hold on&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�}����01");//�������u�r�d�Fse�敨_�����o�C�N_�}����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);

	DrawDelete("�G����", 250, 100, null, "slide_01_02_1", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
The bike starts on its own&.

{
	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
}
We go down the stairs and enter a floor&, then stop down a 
hallway&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



{	Fw("fwAM�g��_�o�C�N_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000210b12">
"It's under that wall&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000220a01">
"Got it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I get off the bike and remove the cover off of the 
connector&.

{
	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I take out Ren from my bag and expose his connector on his belly covered in fur&.

Then I open the cover on the network connector and pull 
out the cables&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000221a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@����01");//�������u�r�d�Fse����_����_�@����01�v
	MusicStart("SE01",0,500,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
&.&.&.It fastens to Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm37/0000230a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
His body starts to shake&.

Is it working&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G���O", 1100, Center, -50, "cg/ev/m/evf03�h�q�`�l�����ӂ�����_�A�b�v_m.jpg");
	Move("�G���O", 0, @60, @0, null, true);

	CreateSE("SE00","se�퓬_����_������01");

	Move("@OnBG*", 200, -1024, @0, Axl1, false);

	MusicStart("SE00",0,700,0,1500,null,false);
	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Fade("�G���O", 0, 1000, null, true);

	Move("�G���O", 300, @-60, @0, Dxl1, false);
	DrawDelete("�G����", 150, 100, null, "slide_01_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
I look over my shoulder and see a dog type Allmate 
chasing after us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�퓬_�h�q_�J��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G��", 1100, Center, -50, "cg/ev/m/evf03�h�q�`�l�����ӂ�����a_�A�b�v_m.jpg");
	FadeFFR2("�G��", 0,1000, 200, 0, 0, 40,null, true);
	Move("@OnBG*", 0, 0, @0, Axl1, false);
	Delete("�G���O");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text9999]
They aren't stopping&, and they're firing melting hot beams from their mouths&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Will it work&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000240a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Then&, Ren&.&.&.

I desperately hold in a frustrated cry&.

Shit&.&.&.!

Like this&, we'll have to break out of here with just sheer strength&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�Ђイ��c�c�Ɠd����������悤�ȉ��i�h�q�I�[�����C�g�j
	CreateSE("SE04","se�퓬_�h�q_�_�E��01");//�������u�r�d�Fse�퓬_�h�q_�_�E��01�v

	CreateTextureEX("�G�Y�[��2", 2000, -393, -50, "cg/ev/l/evf03�h�q�`�l�����ӂ�����a_�A�b�v_l.jpg");

	CreateStencil("�}�X�N�P",2100,center,50,128,"cg/ef/effi�\�I����_ef01.png",false);
	CreateColor("�}�X�N�P/�F�P", 2100, 0, 0, 1024, 576, "RED");
	Fade("�}�X�N�P/�F�P", 0, 0, null, true);
	Request("�}�X�N�P/�F�P", MulRender);


	CreateStencil("�}�X�N�Q",2050,center,50,128,"cg/ef/effi�\�I����_ef01.png",false);
	CreateColor("�}�X�N�Q/�F�Q", 2050, 0, 0, 1024, 576, "RED");
	Fade("�}�X�N�Q/�F�Q", 0, 0, null, true);
	Request("�}�X�N�Q/�F�Q", AddRender);
	Zoom("�}�X�N�P", 0, 500, 500, null, true);
	Zoom("�}�X�N�P", 0, 1500, 1500, null, true);


	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");

	Move("�G�Y�[��2", 300, @0, 0, Dxl1, false);
	Fade("�G�Y�[��2",300,1000,null,true);

	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,2000,null,true);
	Fade("�}�X�N�P/�F�P", 0, 1000, null, false);
	Fade("�}�X�N�Q/�F�Q", 0, 750, null, false);

	Rotate("�}�X�N�Q", 5000, @0, @0, -180000, null,false);
	Zoom("�}�X�N�Q", 500, 5000, 5000, Dxl1, false);
	Fade("�}�X�N�Q/�F�Q", 500, 0, Dxl1, false);

	Rotate("�}�X�N�P", 5000, @0, @0, 180000, null,false);
	Zoom("�}�X�N�P", 500, 500, 500, Dxl1, true);
	Delete("@�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
The Allmates' muzzles light up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE01", 600, 0, null);
	SetFrequency("SE01", 600, 0, null);

	Fade("�}�X�N�P/�F�P", 600, 0, null, false);
	Fade("�}�X�N�Q/�F�Q", 600, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0095]
&.&.&.But the light suddenly disappeared&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	FadeDelete("�G�Y�[��2",300,null,true);
	Delete("�G�d�u");
	Delete("�}�X�N�P/�F�P");
	Delete("�}�X�N�Q/�F�Q");
	Delete("�}�X�N�P");
	Delete("�}�X�N�Q");
	Delete("�G�Y�[��2");

	CreateSE("SE02","se�l��_�Ռ�_�]�|03����");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("@dm008", 3000, 10, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0096]
They all stagger over and fall to the ground &, their feet 
unable to hold them up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000250a01">
"&.&.&.It stopped&."

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000260b12">
"Looks like it&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000270a01">
"&.&.&.Ren&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
I hug Ren&, bringing his body to my cheek&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0105]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000280a01">
"&.&.&.I'll definitely fix you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��19");
	MusicStart("SE01",0,700,0,1000,null,false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0109]
I gently place him back into my bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000290a01">
"Let's go&."

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/0000300b12">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�}����01");//�������u�r�d�Fse�敨_�����o�C�N_�}����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	OnBG(10,"bg304062_5_���]�^���[�K�i�ʃA���O��");
	FadeBG(0,true);

	Wait(500);

	CreateSE("SE11","se�敨_�����o�C�N_���s01L");//�������u�r�d�Fse�敨_�����o�C�N_���s01L�v
	MusicStart("SE11",2000,700,0,1000,null,true);

	DrawDelete("�G����", 250, 100, null, "slide_01_03_1", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
We start to descend the stairs once again&.

No matter what&.&.&.
We have to get out of this tower&.

Aboslutely&, I need to do it for Ren&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/0000310b08">
"Fuhahahahahahahahaha!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������p�Ȃ̂ł����\���Ȃ���

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000320a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/0000330b08">
"Fuhuhuhuhuhuhuhuhu&.&.&. Hmmmm&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");//�������u�r�d�Fse�敨_�����o�C�N_�X�s��01�v

	CreatePlainSP("�G�ʉ���", 9900);

	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i��", 1100, -1024, -550, "cg/bg/l/bg304061_5_���]�^���[�K�i_l.jpg");
	SetBlur("�G�w�i��", true, 3, 500, 100, false);

	CreatePlainSP("�G��", 100);
	SetVolumeEX("SE11", 250, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G��", 400, 0, 10, 0, 0, 1000, Dxl1, false);
	Delete("�G�ʉ���");
	Move("�G�w�i��", 800, 0, @0, Dxl3, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
Suddenly&, a laughing voice echos from below and I slam on 
the brakes&.

That back&.&.&.

Akushima!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G�w�i��");
	FadeDelete("�G��", 500, null, true);

	SetVolumeEX("@dm008", 3000, 450, null);

{	St("C",740, @0,@0,"st����_�ʏ�n�C�p�[_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0124]
Akushima&, with his back to me&, turns around&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st����_�ʏ�n�C�p�[_laugh");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0125]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/0000340b08">
"What&, yoouuuuu? Did you come to kill meeee???"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0126]
A disturbingly amused smile spans Akushima's entire face&.

He should be unable to move from when I used Scrap on him 
and the other Scratch members&.&.&.

For whatever reason&, he's acting more odd than usual&.

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
	CreateTextureSP("�G�����G", 1110, Center, -70, "cg/fu/fu����_�ʏ�n�C�p�[_laugh.png");
	Request("�G�����G", Smoothing);
	Zoom("�G�����G", 0, 2000, 2000, null, true);

	CreateTextureSP("�G���w�i", 1100, Center, Middle, "cg/bg/bg304061_5_���]�^���[�K�i.jpg");
	Zoom("�G���w�i", 0, 2000, 2000, null, true);

	DrawTransition("�G�ʏ�", 1, 1000, 600, 100, null, "cg/data/slide_05_01_0.png", true);

	FadeDelete("�G�ʍŏ�i", 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0129]
His eyes aren't focusing&.<ke>
He's looking this way but not at me&.

Oh no&, is he&.&.&.
Broken too?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	CreateTextureEX("�G���w�i��", 9995, Center, Middle, "cg/bg/bg304062_5_���]�^���[�K�i�ʃA���O��.jpg");
	Move("�G���w�i��", 0, @0, @60, null, true);
	Request("�G���w�i��", Smoothing);
	Zoom("�G���w�i��", 0, 1200, 1200, null, true);
	Move("�G���w�i��", 700, @0, @-60, Dxl2, false);
	Fade("�G���w�i��", 700, 1000, null, true);

	CreatePlainSP("�G�ʍŏ�i", 9990);
	Delete("�G�ʏ�");
	Delete("�G�����G");
	Delete("�G���w�i");
	FadeDelete("�G�ʍŏ�i", 0, null, true);
	FadeDelete("�G�F����", 0, Dxl3, false);
	FadeDelete("�G��", 0, Axl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
Behind Akushima are the Scratch members&.

Akushima must have caught up with them on their way out of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/0000350e45">
"! You!?"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/0000360e46">
"What happened to Mink-san!?!?"

{	Fw("fw����_�ʏ�n�C�p�[_laugh");}
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm37/0000370b08">
"I'm gonna kill alllll of yaaaaaaaa!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

{	St("C",740, @0,@0,"st����_�ʏ�n�C�p�[_laugh");
	FadeSt("C",0,true);}

	FadeDelete("�G���w�i��", 0, null, true);

//���r�d�F�����̃��K�z������r�[��
	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01.jpg");
	FadeFR2("�G������",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);
	Wait(50);

	CreateSE("SE02","se�퓬_����_����01");//�������u�r�d�Fse�퓬_����_����01�v
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("�G��*");
	DrawDelete("�G����", 150, 100, null, "slide_01_03_0", true);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/0000380e45">
"Ahhh!"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/0000390e46">
"Watch out!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�퓬_�Ռ�_�j��01");//�������u�r�d�Fse�퓬_�Ռ�_�j��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0142]
Akushima pulls out a weird weapon and starts firing away&. 
Blazing hot beams pierce the wall&, smoke floating above it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

{	St("C",740, @0,@0,"st����_�퓬�n�C�p�[_normal");
	FadeSt("C",200,true);}

	Wait(300);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/0000400a01">
"Oh fuck&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm008", 1000, 0, null);

	ClearFadeAll(1000, true);
	Wait(1500);

//�����t�@�C��["dm3710.nss"]

}
