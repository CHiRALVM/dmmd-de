//<continuation number="60">
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


scene dm3611.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";

	MinkSparksDropCheck();

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

	#bg204031_0_�\�I�~���N�q�Ɍ�=true;
	#bg204021_0_�\�I�~���N�q�ɓV��=true;

	//���O�̂��߃A�����b�N
	SparksDropDelete(0);
	Request("@EFWIN/SE*", UnLock);
	Request("@EFWIN/�v���Z�X", UnLock);
	Request("@EFWIN/�~���N�g���E�}", UnLock);
	Request("@EFWIN/�G*", UnLock);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	SparksDropDelete(0);
	$GameName = "dm3612.nss";

}


scene dm3611.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���o�F�A�������A�S�̓I�ɒ����v

/*
	PrintBG("��w�i", 30000);

	OnBG(10,"bg204021_0_�\�I�~���N�q�ɓV��");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i����", 100, Center, Middle, "cg/bg/bg204021_0_�\�I�~���N�q�ɓV��.jpg");
	Fade("�G�w�i����", 0, 500, null, true);
	SetBlur("�G�w�i����", true, 3, 200, 200, false);

	Zoom("�G�w�i����", 0, 1500, 1500, null, true);

//	MoveFTP1("@�G�w�i����",3000,10,7);

//�����o�F�΂̕�
//���r�d�F�΂̕�
//�����݁F�O�V�[������ꏊ���ς���ĉ΂̕��͏����Ă�Ǝv���B���q�Ɋm�F�ς�
	SparksDropDelete(0);

	CreateSE("SE01","se�[��_���__����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("�G�w�i����", 3500, 1000, 1000, Dxl1, false);
	FadeDelete("��w�i", 2000, null, true);

	Wait(500);

	Fade("�G�w�i����", 1500, 0, Axl1, true);

//	MoveFTP1stop();
	Delete("�G�w�i����");
*/

	PrintGO("��w�i", 4900);

//�������Ή�
	Request("@EFWIN/�v���Z�X", Start);
	MusicStart("@EFWIN/SE11",1000,500,0,800,null,true);

	OnBG(10,"bg204011_3_�\�I�~���N�̋���������");
	FadeBG(0,true);
	FadeDelete("��w�i", 0, null, true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1100010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@EFWIN/SE*", 2500, 0, null);
	CreateColorEX("�G�F�Ó]��", 19900, "000000");
	Fade("�G�F�Ó]��", 2000, 1000, null, true);

	PrintGO("��w�i", 20000);
	CreateColorSP("�G�F�Ó]", 1000, "000000");

	OnBG(10,"bg204021_0_�\�I�~���N�q�ɓV��");
	FadeBG(0,true);

	SparksDropDelete(0);
	Request("@EFWIN/�v���Z�X", UnLock);
	Request("@EFWIN/�~���N�g���E�}", UnLock);
	Request("@EFWIN/�G*", UnLock);
	Delete("@EFWIN/�v���Z�X");
	Delete("@EFWIN/�~���N�g���E�}");
	Delete("@EFWIN/�G*");
	FadeDelete("��w�i", 2000, null, true);

	Wait(500);

	CreateSE("SEL01","se�l��_����_����07L");
	SoundEffect("SEL01","HANGAR");
	MusicStart("SEL01",3000,400,0,500,null,true);

	CreateSE("SEL02","se����_��_���h���01L");
	SoundEffect("SEL02","HANGAR");
	MusicStart("SEL02",5000,400,0,800,null,true);

	CreateSE("SEL03","se�[��_��_�͂˂�01");
	SoundEffect("SEL03","HANGAR");
	MusicStartSet("SEL03",400,0,1000,null,false);

	FadeDelete("�G�F�Ó]��", 1000, null, true);

	Wait(3000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I somehow endured the pain and continued on&, and 
eventually&, the scenery changed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SEL*", 2000, 700, null);
	FadeDelete("�G�F�Ó]", 1000, null, true);

	CreateProcessEX("�v���Z�X", "Proc_dm3630scr_01Act");
	Request("�v���Z�X", Start);

	SetVolumeEX("SEL01", 3000, 700, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
At some point I walked into the warehouse&.

The inside of it is dark and wraught with the smell of 
rust&.

Large chains hang from the ceiling&, and below them lay 
fallen iron bars scattered on the floor&.

On the other side of the seemingly endless room was a wall and an old-looking door&.

Is Mink behind that door?

I slowly inch closer to it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SEL*", 150, 0, null);

//���r�d�F�h�A���J����
	CreateSE("SE01","se����_�h�A�S_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	OnBG(10,"bg204031_0_�\�I�~���N�q�Ɍ�");
	FadeBG(500,true);

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
By the door are small&, square rooms&, and the figure of a 
back that I know all too well&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1100020a01">
"Mink&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
I finally found him&.&.&.!

{	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);}

I run up to him&, and Mink silently turns his head&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(300);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",300,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1100030a05">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1100040a01">
"Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1100050a05">
"We're getting out of here&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1100060a01">
"Yeah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030a]
That's great&. He's fine&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 2000, 1000, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I close my eyes and concentrate on drawing the image of 
the outside world&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F�������Ȃ������ɖ߂�

	Wait(300);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	DrawTransition("�G�F��", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Wait(4500);

//�����t�@�C��["dm3612.nss"]

}
