//<continuation number="10">
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


scene dm0745.nss_MAIN
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
	#ev900���C���ΐ푓�tVS���]1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0750.nss";

}


scene dm0745.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 10000);

	EfRecoIn1(10001,200);

	CreateTextureSP("�G���ʔw�i1050", 1050, -297, -108, "cg/ev/ev900���C���ΐ푓�tVS���]1.jpg");

	OnBG(10,"bg402051_1_��������֎~��无�ʂ�");
	FadeBG(0,true);

	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);

	FadeDelete("��w�i", 0, null, true);

	EfRecoIn2(500);

//===========================================
//�ȉ��A�@���[�g�̏ꍇ�̂ݕ\��
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
After that&, I was pulled into Rhyme again&.&.&.
{
	CreateTextureEX("�G���ʔw�i1051", 1050, 0, -80, "cg/ev/l/ev900���C���ΐ푓�tVS���]1_l.jpg");
	Move("�G���ʔw�i1051", 500, 0, -141, Dxl1, false);
	Fade("�G���ʔw�i1051", 500, 1000, Dxl1, true);
	Delete("�G���ʔw�i1050");
}
Why did Toue come out?

It made no sense&.
We couldn't even lay a hand on them&.

But&, still&, why was Toue&.&.&.?
And he even spoke as if he knew something about me&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);

	Wait(500);

	CreateTextureEX("�G�w�i500", 500, -598, -548, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");
	Move("�G�w�i500", 1000, -827, -548, Dxl1, false);
	Fade("�G�w�i500", 1000, 1000, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Feeling incredibly uneasy&, I look at Mizuki who had fallen face down to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/4500010a01">
"Mizuki&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	CreateTextureSP("�G�w�i501", 501, Center, Middle, "cg/bg/bg402051_1_��������֎~��无�ʂ�.jpg");

	St("LL",710, @0,@5,"st�N���A_�ʏ�}�X�N����_normal");
	St("ML",730, @30,@0,"st�g��_�ʏ�_cool");
	St("MR",730, @-30,@0,"st�~���N_�ʏ�_normal");
	St("RR",710, @-15,@5,"st�m�C�Y_�ʏ�_normal");
	FadeAllSt(0,true);

	FadeDelete("�G��", 1000, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Koujaku&, Noiz&, Mink&, and Clear are all there too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0750.nss"]

}
