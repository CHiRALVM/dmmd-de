//<continuation number="30">
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


scene dm0750.nss_MAIN
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
	if($DM_ROUTE==5){	$GameName = "dm0765.nss";
	}else {		$GameName = "dm0760.nss";
	}

}


scene dm0750.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg402051_1_��������֎~��无�ʂ�");
	FadeBG(0,true);

/*
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);
*/

	St("LL",710, @0,@5,"st�N���A_�ʏ�}�X�N����_normal");
	St("ML",730, @30,@0,"st�g��_�ʏ�_cool");
	St("MR",730, @-30,@0,"st�~���N_�ʏ�_normal");
	St("RR",710, @-15,@5,"st�m�C�Y_�ʏ�_normal");
	FadeAllSt(0,true);

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�������獇��
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_sad");
	FadeSt("C",180,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm07/5000010a02">
"Are you okay&, Aoba?"

{	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",180,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm07/5000020a04">
"Master!"

{
	SoundPlay("@dm013",0,450,true);

	DeleteAllSt(200,true);
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/5000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0765.nss"]�@���[�g�̂ݕ\��
//�����t�@�C��["dm0760.nss"]



	//ClearFadeAll(1000, true);

}
