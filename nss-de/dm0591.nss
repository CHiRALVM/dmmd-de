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


scene dm0591.nss_MAIN
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
	$GameName = "dm0600.nss";

}


scene dm0591.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm003",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102031_1_���}�O�ʂ�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/bg102031_1_���}�O�ʂ�.jpg");

	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

//==============================================
//���u����}���v��I�񂾏ꍇ
//==============================================


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
There's no way he could've heard my voice from so far away&.

He's just saying that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/9100010a01">
"'s that so? Let's just head over into the shop&. Isn't that what you came here for?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	DeleteSt("C", 0,true);

	FadeDelete("�G��", 300, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
To escape the pressure of Mink's glare&, I grab Clear's 
shoulder and head in the other direction&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm05/9100020a04">
"I see&. I understand&."

{
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm05/9100030a04">
"Now&, please come inside&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	DeleteAllSt(200,true);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

//�����t�@�C��["dm0600.nss"]

}
