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


scene dm1070.nss_MAIN
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
	$GameName = "dm1080.nss";

}


scene dm1070.nss
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
<voice name="���t" class="���t" src="voice/dm10/7000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The gate opens&, and we're greeted by a showy fanfare and 
the sound of fire crackers around us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm10/7000020a02">
"What the&.&.&.?"

{	Fw("fwm�p���__�ʏ�_normal");}
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm10/7000030e02">
"Welcome to the world's greatest place for love&, dreams&,
 and amusement to take all those worries away&, Platinum
 Jail!"

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

{	Fw("fwm�p���__�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm10/7000040e02">
"This is the upper paradise where only the chosen are let
 in! Please enjoy yourselves as much as you can!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm10/7000050a01">
"Upper paradise&.&.&.?"

{	Fw("fw�g��_�ʏ�_worry2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm10/7000060a02">
"He's a little too happy to see us&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Without paying much attention to us in particular&, the 
panda dances and presses a button on a wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Roulette("�g��");

{	Fw("fwm�p���__�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm10/7000070e02">
"Now&, which entrance will you two take? Fun-Fun Roulette&,
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
[text0030]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm10/7000080e02">
"Indeed&, indeed&, you're heading through the Flame Willow
 entrance! Now&, please come this way!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
To the left of the panda the door opens&, and it begins to 
wave its arms around and dance once again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�p���__�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm10/7000090e02">
"This is the area for people with a will and a passion for
 intense pleasure! Surely your hearts are already beating
 in excitement!"

{	Fw("fwm�p���__�ʏ�_normal");}
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm10/7000100e02">
"Hold onto that expectation&, and have a great time!"

{	St("C",740, @0,@0,"st�g��_�ʏ�_worry");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm10/7000110a02">
"Huh? I have no idea what the hell that panda's going on
 about&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm10/7000120a02">
"We better stay on guard once we head through that
 entrance&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm10/7000130a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
It's plenty possible that this is a trap&. But we can't go 
back now after coming this far&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�p���__�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm10/7000140e02">
"Across the door&, there's a confirmation monitor that you
 must show your ticket or invitation to!"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm10/7000150a01">
"You mean this thing?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");//�������u�r�d�Fse����_�R�C��_���쉹01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
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
[text0045]
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm10/7000160e06">
"Platinum ID confirmed&. Aoba-sama and guest&, welcome to
 Platinum Jail&. The admission formalities will now begin&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm10/7000170e06">
"Guest has been granted Guest ID&. Guest&, please show your
 Coil to the monitor&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");//�������u�r�d�Fse����_�R�C��_���쉹01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Koujaku puts his Coil to the monitor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹03");//�������u�r�d�Fse����_�R�C��_���쉹03�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm10/7000180e06">
"Confirmed&, Guest ID now being transmitted&. All
 jurisdiction belongs to the Platinum ID holder&."

//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm10/7000190e06">
"The Guest ID has restricted uses only&, so please practice
 caution&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
}
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm10/7000200e06">
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

//�����t�@�C��["dm1080.nss"]

}
