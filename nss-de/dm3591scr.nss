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


scene dm3591scr.nss_MAIN
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
	if($dm3591scr_T==true){
	}else{
	$�~���N�̃g���E�}--;
	MinkSparksDropStrengthFade();
	$dm3591scr_T=true;
	}

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3611.nss";

}


scene dm3591scr.nss
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
	$dm3591scr_T=true;

//�����o�F�΂̕�

//===========================================
//�u������v�̏ꍇ
//===========================================

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/9100010a01">
"Stop!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Unable to look away&, I jump over to the soldier and 
deliver a kick&.

He disappears like smoke&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//������
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm35/9100020b03">
"I'm indebted to you&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The old woman bowed her head multiple times and ran away&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(300);

	CreateSoundAkk("@EFWIN/�����̏�","voice/dm35/9100030e30");
	SoundEffect("@EFWIN/�����̏�","Echo",100,50,300,350);
	MusicStart("@EFWIN/�����̏�",0,1500,0,1200,null,true);

	$SETime = RemainTime("@EFWIN/�����̏�");
	WaitKey($SETime);
	SetVolumeEX("@EFWIN/�����̏�", 150, 0, null);
	Wait(150);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text9990]
//���r�d����
//�y�����̏��z
<voice name="�����̏�" class="�����̏�" src="voice/dm35/9100030e30">
"Fufufufufu&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//�����t�@�C��["dm3611.nss"]

}
