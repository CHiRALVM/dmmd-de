//<continuation number="100">
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


scene dm5680.nss_MAIN
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
	#�C�x���g�t�@�C����=true;
	#bg301021_5_�v���`�i�W�F�C�����ʂ�Z�C=true;
	#bg301011_5_�v���`�i�W�F�C����ʂ�Z�C=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5690.nss";

//���ɃG�t�F�N�g�p�ϐ�
	$HALevel=0;

}


scene dm5680.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintGO("��w�i", 30000);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");

	CreateTextureSP("�G�d�u200", 200, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");

	CreateTextureSP("�G�d�u100", 100, Center, Middle, "cg/ev/evf10�L���̒��̕��̉e.jpg");

	Delete("��w�i");

	SetVolumeEX("@SE*", 5000, 0, null);

	Wait(3000);

	CreateSE("SE01","se��_���R_�g01L");
	MusicStart("SE01",3000,700,0,1000,null,true);

	FadeDelete("�G�F��", 3000, null, true);

	SetVolumeEX("SE01", 2000, 400, null);

	CreateVOICE("���t","dm56/8000010b01");
	MusicStart("���t",3000,500,0,1000,null,true);

	CreateVOICE("�@","dm56/8000020c03");
	MusicStart("�@",3000,400,0,1000,null,true);

	Wait(1000);

//���ߋ���z

//�����Ə��߂ĉ�����C�ӂ�\���B�Â��Ȕg�̉��B
//���ɉ��͂��Ȃ��B
//�t���ɂȂ��Ă��镃�̉e�B

//��dm0220�Ř^�����������g�p�B
//�����ȉ��͂قƂ�Ǖ������Ȃ����炢�̉��ʂŁASE�Ƃ��ă��[�v�����܂��B
//���̒��ŕ������q�\�q�\�₦�ԂȂ���b���Ă銴���ł��B

//�c���^�r�d�p�f��
//�y�����t�z
//<voice name="�����t" class="�����t" src="voice/dm56/8000010b01">
//�u�_�����B�R�C�c�ɂ͋ߊ��ȁB����ȃ��c��M����ȁB���̌������Ƃ𕷂���B�R�C�c�͊�Ȃ��B����ȃ��c��艴��M����v

//���c���^�r�d�p�f��
//�y�@�i�q���j�z
//<voice name="�@�i�q���j" class="�@�i�q���j" src="voice/dm56/8000020c03">
//�u�ނ�M���āB�ނ͕K�����t�̗͂ɂȂ��Ă����B�ނ̌������ƂɎ����X���āB���v�A��������B�����|�����Ƃ͂Ȃ��B���v������v


//���ȉ��Adm0220�Ř^�����������g�p�B
//�������ł͂͂����蕷������B

	Move("�G�d�u200", 2000, @150, @200, Dxl1, false);
	FadeDelete("�G�d�u200", 2000, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm56/8000030b17">
"I'm not scared&, so come out of your little world&."

//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm56/8000040b17">
"It'll be all right&. You can always destroy it&."

//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm56/8000050b17">
"You can destroy it&, and then make a new one afterwards&.
 There's no end to the possibilities&."

//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm56/8000060b17">
"&.&.&.All right&, I've decided&. I'll give you a chance at
 a new life&."

{
	SetVolumeEX("���t", 3000, 0, null);
	SetVolumeEX("�@", 3000, 0, null);
}
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm56/8000061b17">
"From today on&, your name is Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F�R���̐����d�Ȃ�l�q�𕶎��ł��\��
//�����t�̒��̃q�\�q�\����SE���҂����Ǝ~�܂�B

//������
//�y���t�z
//<voice name="���t" class="���t" src="voice/dm56/8000070a01">
//�u�c�c�����΁v

//������
//�y�����t�z
//<voice name="�����t" class="�����t" src="voice/dm56/8000080b01">
//�u�c�c�����΁v

//������
//�y�@�z
//<voice name="�@" class="�@" src="voice/dm56/8000090a06">
//�u�c�c�����΁v

	CreateTextureEX("�����Ώ�", 200, Center, Middle, "cg/ef/tx������01.png");
	Move("�����Ώ�", 0, @0, @-50, null, true);

	CreateTextureEX("�����Β�", 202, Center, Middle, "cg/ef/tx������01.png");

	CreateTextureEX("�����Ή�", 201, Center, Middle, "cg/ef/tx������01.png");
	Move("�����Ή�", 0, @0, @50, null, true);

	Fade("������*", 1000, 1000, null, true);

	CreateTextureEXadd("�����Β��Q", 203, Center, Middle, "cg/ef/tx������02.png");
	SetShade("�����Β��Q",HEAVY);
	Wait(500);

	Move("�����Ώ�", 500, @0, @50, Dxl1, false);
	Move("�����Ή�", 500, @0, @-50, Dxl1, true);

	Request("@text0010", UnLock);
	Delete("@text0010");

	CreateVOICE("���t","dm56/8000070ex");
	MusicStart("���t",0,1000,0,1000,null,false);
	SetBacklog("�u�c�c�����΁v", "voice/dm56/8000070ex", ���t);

	Fade("�����Β��Q", 1000, 1000, null, true);
	Wait(500);

	FadeDelete("������*", 2000, null, true);

	Wait(1000);
	Delete("���t");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/8000100a01">
"&.&.&.Father&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE01", 5000, 0, null);

	CreateColorEXadd("�G�����Q", 1000, "WHITE");
	Fade("�G�����Q", 3000, 1000, null, true);

//���ߋ���z�����܂�
//�Z�C���j�^�[�����i���q

	SetVolumeEX("@dm*", 1000, 0, null);

	Wait(32);


	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01�Z�C.jpg");
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_���]�^���[�O�ʂ�Z�C.jpg");
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_�v���`�i�W�F�C�����ʂ�Z�C.jpg");#bg301021_5_�v���`�i�W�F�C�����ʂ�Z�C=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_�v���`�i�W�F�C����ʂ�Z�C.jpg");#bg301011_5_�v���`�i�W�F�C����ʂ�Z�C=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreatePlainSP("�G��", 2000);
	Delete("�G�����Q");
	SetBlur("�G��", true, 3, 500, 50, false);
	Fade("back", 0, 1000, null, true);

	Zoom("�G��", 300, 2000, 2000, Axl1, false);
	FadeDelete("�G��", 300, null, false);

	CreateSE("SE01","se�[��_����_�͑��t01");
	CreateSE("SE02","se����_���]�^���[_�n��01aL");
	MusicStart("SE01",0,700,0,200,null,false);
	MusicStart("SE02",4000,700,0,1000,null,true);

	SeiMonitorCreate01();

	Shake("back*", 60000, 0, 1, 0, 30, 1000, null, false);
	Shake("sei*", 60000, 0, 1, 0, 30, 1000, null, false);

	SeiMonitorStart01();

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back2", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back3", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back4", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back5", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 500, 1000, null, true);


	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE11","se����_���]�^���[_�n����01");
	CreateSE("SE12","se����_���]�^���[_�|��01");
	MusicStart("SE11",0,700,0,1000,null,false);

	Wait(1000);

	MusicStart("SE12",0,1000,0,1000,null,false);

	Wait(3000);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(5000);

//�����t�@�C��["dm5690.nss"]

}
