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


scene dm0740.nss_MAIN
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
	$GameName = "dm0750.nss";

}


scene dm0740.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);


	EfRecoOut1(0);

	OnBG(10,"bg402051_1_��������֎~��无�ʂ�");
	FadeBG(0,true);

/*
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);

*/

	CreateTextureSP("�G�w�i100", 100, Center, 0, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");
	SetShade("�G�w�i100", MEDIUM);

	CreateTextureSP("�G���G", 740, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal_x02.png");
	CreateTextureSP("�G���G��", 700, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal2_x02.png");

	FadeDelete("��w�i", 0, null, true);

	EfRecoIn2(500);

//===========================================
//�ȉ��A�@���[�g�ȊO�ŕ\��
//===========================================

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/4000010a01">
"Mizuki&.&.&."

{
	DeleteFw();
	Fade("�G���G", 200, 0, null, true);
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm07/4000020b03">
"He's over there&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	Delete("�G���G*");

	CreateTextureSP("�G�w�i500", 500, -598, -548, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");

	Move("�G�w�i500", 1000, -827, -548, Dxl1, false);
	FadeDelete("�G��", 1000, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I follow where Granny points and see Mizuki is lying face  down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
//	CreateTextureSP("�G�w�i501", 501, Center, Middle, "cg/bg/bg402051_1_��������֎~��无�ʂ�.jpg");

	St("LL",710, @0,@5,"st�N���A_�ʏ�}�X�N����_normal");
	St("ML",730, @30,@0,"st�g��_�ʏ�_cool");
	St("MR",730, @-30,@0,"st�~���N_�ʏ�_normal");
	St("RR",710, @-15,@5,"st�m�C�Y_�ʏ�_normal");
	FadeAllSt(0,true);

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Koujaku&, Noiz&, Mink&, and Clear are all there too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0750.nss"]

}
