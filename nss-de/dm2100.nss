//<continuation number="0">
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


scene dm2100.nss_MAIN
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
	$GameName = "dm2110.nss";

}


scene dm2100.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F�����n", 10, "000000");

	CreateSE("SE11","se����_���]�^���[_�n��01L");
	MusicStart("SE11",1000,400,0,500,null,true);

	dm2100smoke();

	Wait(500);

	FadeDelete("��w�i", 500, null, true);

//����
//�ȉ��A�����t�̚���
//���������Ɩ��̒��ɂ���悤�ȕ��͋C

//	CreateMaskEX("�G����", 0, 0, 0, "cg/data/effect_01_00_0.png", false);
//	CreateColorEX("�G����/�G��", 5000, "FFFFFF");

//�������u���F���[���A�j��������v���Z�X�����܂��v
/*
	while(1)
	{
	Rotate("�G����", 0, @0, @180, @0, null,true);
	Zoom("�G����", 0, 1000, 1000, null, true);

	Zoom("�G����", 5000, 1500, 1100, null, false);
	Fade("�G����/�G��", 2000, 1000, null, true);
	Wait(750);
	Fade("�G����/�G��", 2250, 0, null, true);
	Wait(500);
	}
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

&.&.&.Deep down&, you know it&, don't you?
Just admit it&.

It'll be easier if you do&.
Everything will be exactly how you want it to be&.

So&, admit it&.
Admit and accept it&.

Then everything will be more fun&.
You know that&, right?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Right&.&.&.

&.&.&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����A�����܂�

	SetVolumeEX("SE*", 2000, 0, null);
	ClearFadeAll(2000, true);
	dm2100smokeDelete();
	Wait(1000);

//�����t�@�C��["dm2110.nss"]

}
