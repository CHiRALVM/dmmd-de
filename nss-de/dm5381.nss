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


scene dm5381.nss_MAIN
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
	$GameName = "dm5390.nss";

}


scene dm5381.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304041_5_���]�^���[�����G���A������");
	FadeBG(0,true);

	DeleteAllSt(0,true);

	FadeDelete("��w�i", 300, null, true);

//===========================================
//�u�������v�̏ꍇ
//===========================================

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 100);
	Shake("�G��", 300, 20, 0, 0, 0, 1000, Dxl1, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8100010a01">
"&.&.&.That's not funny&, don't fuck with me!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I raise my voice&, violently struggling to get my arms free&.

They think of this as fun and amusing&.
What these two are saying is insane&.

I didn't think they were that kind of people&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	St("C",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_serious");
	FadeSt("C",200,true);
	FadeStPro("C", 5550, 180);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8100020b04">
"You're quite persistent&. Could you stay quiet for us?
 &.&.&.Do it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteSt("C", 200,true);
	SetVolumeEX("@dm*", 100, 0, null);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");
	Shake("�G�w�i", 300, 50, 50, 0, 0, 500, null, false);

	Fade("�G�F��", 200, 0, null, true);

	Wait(300);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 200, 0, null, true);

	SoundPlay("@dm007a",0,450,true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/8100030a01">
"Guh-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm53/8100040b04">
"Just enough so he doesn't die&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5390.nss"]

}
