//<continuation number="200">
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


scene dm4070.nss_MAIN
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
	$GameName = "dm4080.nss";

}


scene dm4070.nss
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

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/7000010a01">
"Wha-"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/7000020a04">
"Wah!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
The gate opens&, and we're greeted by a showy fanfare and 
the sound of fire crackers around us&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm40/7000030e02">
"Welcome to the world's greatest amusement facility&,
 Platinum Jail!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, -490, -380, "cg/bg/l/bg305021_5_�v���`�i�W�F�C���Q�[�g�O_l.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
A panda walks up and poses in front of us&. 

I guess he's supposed to be cute&, but I can't say I can 
see him as anything but weird&.

{Fade("�G�w�i",500,1000,null,true);}
Behind the panda are five white doors&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm40/7000040e02">
"This is the upper paradise where only the chosen are let
 in! Please enjoy yourselves as much as you can!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/7000050a01">
"Upper paradise? That sounds really suspicious&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/7000060a04">
"It does&. A dubious&, giant explosion!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
The panda unsteadily walks towards us as I stare at him&, 
unimpressed&, and presses a button on the wall&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Roulette("�N���A");

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm40/7000070e02">
"Now! Which entrance will you two take? Fun-Fun roulette&,
 start!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F���[���b�g���o�A���e�ɂ���Ă͒n�̕��������v
	RouletteFade();

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm40/7000080e02">
"Allll right! You two will be going through Aqua Forest's
 entrance! Please come this way!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
It walks over to the last door to the right&, and makes 
another pose in front of it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm40/7000090e02">
"It's a place that slowly sways&, a refreshing and calming
 sea of water! I'm sure it'll wash your worries away!"

{	Fw("fwm�p���__�ʏ�_normal");}
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm40/7000100e02">
"I hope you enjoy this absolutely charming area!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(21000,77, 313,15,"fw");}
//�y�N���A�z�������F�P���P��
<voice name="�N���A" class="�N���A" src="voice/dm40/7000110a04">
"This is kind of exciting&. Let's go!"

{	ClearComicNexDelete();
	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/7000120a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm40/7000130e02">
"Make sure to show your ticket or invitation to the
 confirmation monitor on your way!"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm40/7000140a01">
"You mean this invitation thing?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");//�������u�r�d�Fse����_�R�C��_���쉹01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I open up the invitation on my Coil and walk closer to the monitor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se����_�R�C��_���쉹03");//�������u�r�d�Fse����_�R�C��_���쉹03�v
//	MusicStart("SE01",0,700,0,1000,null,false);

	//���k���o���N
	CoilBank05a();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm40/7000150e06">
"Platinum ID confirmed&. Aoba-sama and guest&, welcome to
 Platinum Jail&. The admission formalities will now begin&."

//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm40/7000160e06">
"Guest has been granted Guest ID&. Guest&, please show your
 Coil to the monitor&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm40/7000170a04">
"Yeeess!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");//�������u�r�d�Fse����_�R�C��_���쉹01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Clear holds up his Coil to the monitor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm40/7000180e06">
"Confirmed&, Guest ID now being transmitted&. All
 juristiction belongs to the Platinum ID holder&."

//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm40/7000190e06">
"The Guest ID has restricted uses only&, so please practice
 caution&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
}
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm40/7000200e06">
"Please read the detailed support section in the full
 Invitation Card&. Please enjoy&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���k���o���N
	CoilBank05b();

	ClearFadeAll(2000, true);
	Wait(1000);

//�����t�@�C��["dm4080.nss"]

}
