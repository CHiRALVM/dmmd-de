//<continuation number="150">
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


scene dm5070.nss_MAIN
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
	#bg305021_5_�v���`�i�W�F�C���Q�[�g�O=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5080.nss";

}


scene dm5070.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg305021_5_�v���`�i�W�F�C���Q�[�g�O");
	FadeBG(0,true);

	CreateColorSP("�G�F��", 4000, "FFFFFF");

	DrawDelete("��w�i", 500, 100, null, "circle_01_00_1", true);

//���Q�[�g�����E�֐Â��ɃX���C�h���ĊJ��
//���ςςςρ[��ƃN���b�J�[�̉��A�t�@���t�@�[��
	CreateSE("SE01","se�[��_����_�t�@���t�@�[��");//�������u�r�d�Fse�[��_����_�t�@���t�@�[���v
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(50);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(50);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(50);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(500);

	Request("�G�F��", AddRender);

	Fade("�G�F��", 1000, 0, null, true);
	Delete("�G�F��");

	SoundPlay("@dm002",0,450,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/7000010a01">
"Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The gate opens and I'm greeted by a showy fanfare and 
the sound of fire crackers around me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm50/7000020e02">
"Welcome to Japan's greatest&, highest class facility of
 love&, dreams&, and comfort&, Platinum Jail!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, -490, -380, "cg/bg/l/bg305021_5_�v���`�i�W�F�C���Q�[�g�O_l.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
A panda comes out from the side and greets me&.

I think he's supposed to be cute&, but I can't say I think 
he really is&.

{Fade("�G�w�i",500,1000,null,true);}
Behind him are five white doors&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm50/7000030e02">
"This is the upper paradise where only the chosen are let
 in! Please enjoy yourself as much as you can!"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/7000040a01">
"Okay&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The panda&, not really concerned about me at all&, goes over to a wall in a rhythmical way and presses a button&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Roulette("�@");

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm50/7000050e02">
"Now&, which entrance will you take? Fun-Fun roulette&,
 start!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F���[���b�g���o�A���e�ɂ���Ă͒n�̕��������v
	RouletteFade();

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm50/7000060e02">
"Ohhh&, your destination is Midnight Blue Coast!
 Now&, this way please!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
The panda stands in front of the middle door and bends his body to the side in an amusing manner&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm50/7000070e02">
"This is an area where the real Platinum Jail shines
 through! If you let go of some things&.&.&. something
 might change&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm50/7000080e02">
"Please&, do go inside! Have a nice trip!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The panda prompts me in high spirits&, and I walk towards 
the door cautiously&.

I stop right at the door and talk to Ren&, who has his 
head popping out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/7000090a01">
"It's pretty likely that this is a trap&, huh?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm50/7000100a06">
"The probability is high&."

{	Fw("fw���t_�ʏ�_think");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/7000110a01">
"But we still have to go&, don't we?"

{	Fw("fwm�p���__�ʏ�_normal");}
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm50/7000120e02">
"Make sure to show your ticket or invitation to the
 confirmation monitor on your way!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/7000130a01">
"Invitation&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");//�������u�r�d�Fse����_�R�C��_���쉹01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I open up the invitation on my Coil and walk closer to the monitor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//	CreateSE("SE01","se����_�R�C��_���쉹03");//�������u�r�d�Fse����_�R�C��_���쉹03�v
//	MusicStart("SE01",0,700,0,1000,null,false);

	//���k���o���N
	CoilBank05a();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm50/7000140e06">
"Platinum ID confirmed&. Aoba-sama&, welcome to Platinum
 Jail&."

//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm50/7000150e06">
"All juristiction belongs to the Platinum ID holder&. Please observe the detailed entry on the subject which is located on your invitation card&. Have an enjoyable time&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���k���o���N
	CoilBank05b();

	ClearFadeAll(2000, true);
	Wait(1000);

//�����t�@�C��["dm5080.nss"]

}
