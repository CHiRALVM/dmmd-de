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


scene dm3572scr.nss_MAIN
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

	//���΂̕��̋��x�`�F�b�N
	if($dm3572scr_T==true){
	}else{
	$�~���N�̃g���E�}++;
	MinkSparksDropStrengthFade();
	$dm3572scr_T=true;
	}

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($pMINK==3&&$pMINKbad>0){	$GameName = "dm3611.nss";$�~���N�I����8=0;
	}else if($pMINK==3){	$GameName = "dm3620scr.nss";$�~���N�I����8=1;
	}else if($pMINK==2){	$GameName = "dm3580scr.nss";
	}else if($pMINK==1){	$GameName = "dm3590scr.nss";
	}else {		$GameName = "dm3600scr.nss";
	}

}


scene dm3572scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintGO("��w�i", 4900);

//�������Ή�
	Request("@EFWIN/�v���Z�X", Start);
	MusicStart("@EFWIN/SE11",1000,500,0,800,null,true);

	OnBG(10,"bg204011_3_�\�I�~���N�̋���������");
	FadeBG(0,true);
	FadeDelete("��w�i", 0, null, true);

	$�~���N�̃g���E�}++;
	MinkSparksDropStrengthFade();
	$dm3572scr_T=true;

//�����o�F�΂̕�

//===========================================
//�u�����Ȃ��v�̏ꍇ
//===========================================

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/7200010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I can't&.
I have to search for Mink&.

My heart hurting&, I advance towards the door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm3611.nss"]//$pMINK=3&$�~���N�I����>0
//�����t�@�C��["dm3620scr.nss"]//$pMINK=3
//�����t�@�C��["dm3580scr.nss"]//$pMINK=2
//�����t�@�C��["dm3590scr.nss"]//$pMINK=1
//�����t�@�C��["dm3600scr.nss"]//$pMINK=0

}
