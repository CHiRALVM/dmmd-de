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


scene dm4420.nss_MAIN
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

	//���w�iCG
	#bg304011_5_���]�^���[�S�i=true;
	#bg304021_5_���]�^���[�O�ʂ�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4430.nss";

}


scene dm4420.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm004",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304011_5_���]�^���[�S�i.jpg");
	CreateTextureSP("�G�w�i��", 90, Center, -220, "cg/bg/l/bg304021_5_���]�^���[�O�ʂ�_l.jpg");
	#bg304011_5_���]�^���[�S�i=true;

	Move("�G�w�i��", 0, @0, @100, null, true);
	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

	Move("�G�w�i", 2000, @0, 0, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We walk down the road&, darkened by night&, and stop at the 
brightly lit Oval Tower&.

It's a beautiful sight&.&.&. almost so much that it's eerie&.

We stand in front of the tower&, looking up at it in 
silence&.

And then&, Clear and I rush to go inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i", 1000, @0, @-100, Dxl1, false);
	Move("�G�w�i��", 1000, @0, @-200, Dxl1, false);
	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
There are guards standing at the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm44/2000010e16">
"Please show your invitation to the confirmation monitor&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	//CoilStartSet();
	//CoilStartFade();

	//CoilPictSet(325,50,"cg/ef/ef�R�C�����ҏ�Z�C_BASE02.png");
	//CreateSE("SE01","se����_�R�C��_���쉹02");
	//MusicStart("SE01",0,700,0,1000,null,false);
	//CoilPictFade_Down();
	//Wait(1000);


	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C�����ҏ󓌍]_BASE02.png");

	//���@�R�C�����o�\��
	CoilStartFade();
	//���E�摜�\���P�i�ʏ�\���j
	CoilPictFade();

	//���R�C���҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I pull out the invitation from my Coil and show it to the 
monitor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹03");
	MusicStart("SE01",0,700,0,1000,null,false);

	//�~�E�E�����[�h���[
	CoilPictDelete();

//	Wait(500);

//�e�F�F�؃��j�^�[�̓E�B���h�E����
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm44/2000020e06">
"&.&.&.Confirmed&. Welcome to Oval Tower&. Please come in&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The entrance quietly opens&.

Once we're inside&, we're completely in Toue's hands&.

I exchange looks with Clear&, and we step into the tower&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//�e�F�_���W�����ɓ���̂łȂ�ƂȂ��g�����W�łȂ��t�F�[�h��
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 2000, 1000, null, true);

	Wait(1500);

//�����t�@�C��["dm4430.nss"]

}
