//<continuation number="40">
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


scene dm3614ed.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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
	#ev361�~���NBADED=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	SparksDropDelete(0);
	$GameName = "dm9999.nss";

	//���G���h���[��
	PreSetRoll(4);
	TheEND(4);

#BDED3=1;//�~���N�o�b�h�G���h�t���O�擾

}


scene dm3614ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	SparksDrop(0);
	$�~���N�̃g���E�}=2;
	MinkSparksDropStrengthFade();

//	OnBG(10,"bg101011_1_���Z����ʂ�\");
//	FadeBG(0,true);
	CreateColorEX("�G�F��", 15000, "000000");

	CreateTextureSP("�G�d�u�k100", 100, -712, -300, "cg/ev/l/ev361�~���NBADED_l.jpg");
	SetBlur("�G�d�u�k100", true, 2, 200, 200, false);
	MoveFTP1("@�G�d�u�k100",10000,10,8);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev361�~���NBADED.jpg");

	CreateSE("SE01","se�[��_��_�͂˂�01");
	MusicStart("SE01",3000,700,0,500,null,true);
	CreateSE("SE01b","se�[��_��_�͂˂�01");
	MusicStart("SE01b",3000,700,0,733,null,true);

	CreateSE("SE02","se�l��_�S��_�ۓ�01L");
	MusicStart("SE02",3000,400,0,1000,null,true);



	Wait(2500);

	FadeDelete("��w�i", 1500, null, true);
	Wait(500);

	Fade("�G�F��", 1500, 1000, null, true);
	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -100, -500, null, true);
	MoveFTP1("@�G�d�u�k100",10000,10,8);

	Wait(500);

	Fade("�G�F��", 1500, 0, null, true);

	Wait(500);

	Fade("�G�F��", 1500, 1000, null, true);
	MoveFTP1stop();
//	Move("�G�d�u�k100", 0, 0, 0, null, true);
//	MoveFTP1("@�G�d�u�k100",10000,10,8);
	Delete("�G�d�u�k100");
	Fade("�G�d�u100", 0, 1000, null, true);

	Wait(500);


//�����o�F���o�����\��
//�����o�F��ʈÓ]
//���r�d�F�ۂƂ��A�ۂƂ��A�ƌ����H�鉹

//	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1400010a05">
"&.&.&.With this&, I can protect your spirit&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(500);
	Fade("�G�F��", 2000, 0, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010a]

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1400020a05">
"It will be with me for eternity&.&.&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1400030a05">
"Always with me&.&.&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1400040a05">
"Always&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(1500);

	SetVolumeEX("SE*", 4000, 0, null);

	Fade("�G�F��", 4000, 1000, null, true);

	SparksDropDelete(0);

	Wait(1000);

	ClearFadeAll(0, true);

	Wait(3000);
	WaitKey(2000);

	Request("@EFWIN/�~���N�g���E�}",UnLock);
	Delete("@EFWIN/�~���N�g���E�}");

//�����t�@�C��["dm9999.nss"]

}
