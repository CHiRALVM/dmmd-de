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


scene dm3120.nss_MAIN
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
	#bg301031_5_�v���`�i�W�F�C���ʂ�H�n01=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3130.nss";

}


scene dm3120.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg302011_5_�O���b�^�[����01.jpg");
	Fade("�G�w�i", 0, 1000, null, true);

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�ȉ��A����
//===========================================

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/2000010a06">
"Preparations are complete&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I push Ren into my bag by his muzzle&, his tail wagging&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_smile",1550,"fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/2000020a01">
"Good job! &.&.&.Hey&, Mink!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1200,null,false);
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	FadeDelete("�G�w�i", 0, null, true);

	Wait(500);
	CreateSE("SE01","se����_�O���b�^�[����_���J��01a");
	MusicStart("SE01",0,700,0,1300,null,false);
	DrawDelete("�G����", 500, 100, Dxl1, "slide_01_01_1", true);

//�����o����
//�O���b�^�[�O�ʂ聨���ʂ�u���b�N���H�n�P
//�Ƃ��Łi���q
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I stuff Ren into my bag and run frantically out of the 
room and towards the entryway&.

What an asshole&.&.&.!

I leave while grinding my teeth in anger&, and search 
for his large back through a crowd of people&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F�����w�i�ǂ��w�肷��̂�������Ƃ킩��Ȃ��ł��B
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg301021_5_�v���`�i�W�F�C�����ʂ�3�u���b�N.jpg");

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	Wait(1200);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�G�w�i");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Mink leaves Main Street and walks down a somewhat secluded road&.

There are fewer and fewer people and more sketchy signs
for shops&, bars&, and classy clubs as we go along&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
So this is the kind of place Platinum Jail is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//�����t�@�C��["dm3130.nss"]

}
