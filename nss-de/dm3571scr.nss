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


scene dm3571scr.nss_MAIN
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
	if($dm3571scr_T==true){
	}else{
	$�~���N�̃g���E�}--;
	MinkSparksDropStrengthFade();
	$dm3571scr_T=true;
	}

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($pMINK==3){	$GameName = "dm3611.nss";
	}else if($pMINK==2){	$GameName = "dm3580scr.nss";
	}else if($pMINK==1){	$GameName = "dm3590scr.nss";
	}else {		$GameName = "dm3600scr.nss";
	}

}


scene dm3571scr.nss
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

	$�~���N�̃g���E�}--;
	MinkSparksDropStrengthFade();
	$dm3571scr_T=true;

//�����o�F�΂̕�

//===========================================
//�u������v�̏ꍇ
//===========================================

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/7100010a01">
"Shit!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Without being able to leave it alone&, I run towards the 
voice&.

A soldier has a man squirming on the floor with his gun 
pointed right at him&, pressing down on the trigger&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/7100020a01">
"Stop it!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I kick the soldier&, and his gun goes flying&.

He disappears like smoke&, and the man runs away while 
thanking me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(300);

	CreateSoundAkk("@EFWIN/�����̏�","voice/dm35/6100030e30");
	SoundEffect("@EFWIN/�����̏�","Echo",100,50,300,350);
	MusicStart("@EFWIN/�����̏�",0,1500,0,1200,null,true);

	$SETime = RemainTime("@EFWIN/�����̏�");
	WaitKey($SETime);
	SetVolumeEX("@EFWIN/�����̏�", 150, 0, null);
	Wait(150);

//�����t�@�C��["dm3611.nss"]//$pMINK=3
//�����t�@�C��["dm3580scr.nss"]//$pMINK=2
//�����t�@�C��["dm3590scr.nss"]//$pMINK=1
//�����t�@�C��["dm3600scr.nss"]//$pMINK=0

}
