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


scene dm5402.nss_MAIN
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
	if($�E�C�g���I����>1){	$GameName = "dm5411.nss";
	}else {		$GameName = "dm5420.nss";
	}

}


scene dm5402.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304041_5_���]�^���[�����G���A������");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, 0, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");

	St("L",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_normal");
	St("R",700, @0,@0,"bu�g���b�v_�ʏ�o�b�a_normal");
	FadeAllSt(0,true);

	Move("�G�w�i", 0, @0, @-20, null, true);
	Move("@StNameL/L*", 0, @0, @-40, null, true);
	Move("@StNameR/R*", 0, @0, @-40, null, true);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 0, 400, null, true);

//===========================================
//�u����ł����߂Ȃ��v�̏ꍇ
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	SetVolumeEX("@dm*", 300, 0, null);
	Wait(300);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,800,null,false);
	Move("�G�w�i", 500, @0, @20, Dxl1, false);
	Move("@StNameL/L*", 500, @0, @40, Dxl1, false);
	Move("@StNameR/R*", 500, @0, @40, Dxl1, false);
	FadeDelete("��w�i", 500, null, true);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,800,null,false);
	BGPlainShake(1000,300,0,8,0,0,1000,Dxl1,true);

	Fw("fw���t_�ʏ�_hard2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/0200010a01">
"&.&.This- isn't funny&.&.&. Doing- this&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I muster my strength and bring myself up with my shivering arms&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_shock");
	FadeSt("L",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/0200020b04">
"You really don't give up&. Just as I'd expect of you&,
 Aoba-san&."

{	St("R",700, @0,@0,"bu�g���b�v_�ʏ�o�b�a_smile");
	FadeSt("R",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm54/0200030b09">
"You're right&."

{	St("L",720, @0,@0,"bu�E�C���X_�ʏ�o�b�a_normal");
	FadeSt("L",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm54/0200040b04">
"We'll make sure of how long you can keep holding on&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorEX("�G�F����", 5000, "000000");
	Move("�G�w�i", 1500, @0, @-20, null, false);
	Move("@StNameL/L*", 1500, @0, @-40, null, false);
	Move("@StNameR/R*", 1500, @0, @-40, null, false);
	Fade("�G�F����", 1500, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
&.&.&.Shit&.
Is this really the end of it&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

	ClearFadeAll(1000, true);
	DeleteAllSt(0,true);

//�����t�@�C��["dm5411.nss"]
//�����t�@�C��["dm5420.nss"]

}
