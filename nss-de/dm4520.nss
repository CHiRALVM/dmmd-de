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


scene dm4520.nss_MAIN
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
	#bg304012_5_���]�^���[�S�i�����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4530h.nss";

	//EFWIN�݂邵�f�ރA�����b�N
	Request("@EFWIN/SE*", UnLock);

}


scene dm4520.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg304022_5_���]�^���[�O�ʂ����");
	FadeBG(0,true);

	CreateTextureSP("���", 100, Center, Middle, "cg/bg/bg304022_5_���]�^���[�O�ʂ����.jpg");
	Request("���", Smoothing);
//	Shake_Loop("@���","shake01");

	Shake_Loop("@���","shake01");
	MoveFTP1("@���",3500,10,2);

	CreateMovieSPsub("���P", 500, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("���P", 0, 5000, 5000, null, true);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We go down the emergency elevator to the first floor and 
burst out of the tower's entrance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE12","se����_���]�^���[_�n��01L");
	MusicStart("SE12",1000,700,0,1000,null,true);

	DrawDelete("�G�F��", 150, 100, null, "slide_01_01_1", true);

	CreateSE("SE02","se����_���]�^���[_����01");
	MusicStart("SE02",0,300,0,1000,null,false);

	BGPlainShake(100,1000,10,0,0,2,1000,null,true);

	CreateSE("SE02","se����_���]�^���[_����01");
	MusicStart("SE02",0,300,0,1000,null,false);
	BGPlainShake(100,1000,30,0,0,2,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Explosions burst from the top of the tower and debris 
falls to the ground down below&. A mass of people are 
huddled around making noise&.

Without stopping or turning around to look at the tower&, I focus on escaping&, putting all of my strength into holding up Clear&.

I hurry in fear of the tower collapsing&, and I want to let Clear rest more than anything&.

The only place I can think of going to is Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/2000010a01">
"&.&.&.Hold on&, Clear&.&.&.!"

//�����o�F�N���A����
{	Fw("fw�N���A_����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/2000020a04">
"Yes&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, 0, 0, "cg/bg/l/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_l.jpg");

	Delete("��*");
	Delete("@���*");
	Delete("�v��*");
	Request("@EFWIN/SE*", UnLock);
	SetVolumeEX("@EFWIN/SE**", 2000, 0, null);

	Shake_LoopDelete();

	Wait(1000);

	DrawDelete("�G����", 250, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Because of Clear's current condition&, some people stare at us as we make our way through the alleys&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ClearFadeAll(500, true);

//�����t�@�C��["dm4530h.nss"]

}
