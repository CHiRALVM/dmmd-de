//<continuation number="50">
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


scene dm0770.nss_MAIN
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
	if($DM_ROUTE==5){	$GameName = "dm0775.nss";
	}else {		$GameName = "dm0780.nss";
	}

}


scene dm0770.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm013",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg402051_1_��������֎~��无�ʂ�");
	FadeBG(0,true);

/*
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);
*/

	Delete("��w�i");

//===========================================
//�������獇��
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	CreatePlainSP("�G��", 990);

	CreateTextureSP("�G�w�i", 100, Center, 0, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");
	SetShade("�G�w�i", MEDIUM);
	CreateTextureSP("�G���G", 720, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal_x02.png");
	CreateTextureSP("�G���G��", 710, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal2_x02.png");
	CreateTextureSP("�G���G�Q", 700, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_smile_x02.png");

	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_shock3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/7000010a01">
"Granny&.&.&."

{
	DeleteFw();
	Fade("�G���G", 200, 0, null, true);
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm07/7000020b03">
"What?"

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/7000030a01">
"My head hurts&.&.&."

{
	DeleteFw();
	Fade("�G���G��", 200, 0, null, true);
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm07/7000040b03">
"Take some medicine later&. We're going home&."

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/7000050a01">
"Okay&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.We're going home&.

Of course she'd say that&, but just hearing those words 
makes me very happy&.

We're going home&. To our house&.

I'm so glad&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 990);

	Delete("�G���G*");
	Delete("�G�w�i*");

	CreateTextureSP("�G�w�i201", 201, 150, 200, "cg/bg/l/bg402021_1_��������֎~���H��O��_l.jpg");
	Zoom("�G�w�i201", 0, 1500, 1500, null, true);
	Request("�G�w�i201", Smoothing);

	CreateTextureSP("�G�w�i200", 200, 150, 270, "cg/bg/l/bg402021_1_��������֎~���H��O��_l.jpg");
	Zoom("�G�w�i200", 0, 1500, 1500, null, true);
	SetShade("�G�w�i200", MEDIUM);
	Request("�G�w�i200", Smoothing);

	Move("�G�w�i201", 1500, 150, 270, Dxl1, false);
	FadeDelete("�G��", 1500, null, true);


	SetVolumeEX("@dm*", 5000, 0, null);

	FadeDelete("�G�w�i201", 1500, null, false);
	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1500, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(500);


	DrawTransition("�G����", 2000, 400, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
&.&.&.The power in my body gradually ran out&, and at some 
point or another I lost consciousness&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//�����t�@�C��["dm0775.nss"]�@���[�g�̂ݕ\��
//�����t�@�C��["dm0780.nss"]

	SetVolumeEX("@dm*", 3000, 0, null);
	ClearFadeAll(0, true);
	Wait(6000);

}
