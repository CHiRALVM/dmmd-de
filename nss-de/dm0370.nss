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


scene dm0370.nss_MAIN
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
	$GameName = "dm0380.nss";

}


scene dm0370.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//==============================================
//���ȍ~�A����
//==============================================

	PrintGO("��w�i", 30000);

	CreateSE("SE01","se����_���t�����_���J������01");//�������u�r�d�Fse����_�t�����_���J������01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�w�i", 10, -1024, -350, "cg/bg/l/bg104031_5_���t��������r�炵_l.jpg");
	CreateTextureSP("�G���G1", 700, 50, Middle, "cg/fu/x/fw�^�G_�ʏ�_normal_x01.png");
	CreateTextureEX("�G���G2", 700, 50, Middle, "cg/fu/x/fw�^�G_�ʏ�_shout_x01.png");

	CreateMovieSP("�G����", 1000, 270, 40, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G����",0,2800,2750,null,true);Request("�G����",Smoothing);
	Zoom("�G���G*",0,800,800,Dxl2,true);Request("�G���G1",Smoothing);

	FadeDelete("��w�i", 0, null, true);

	Fade("�G���G1", 200, 0,Axl3, false);

	Zoom("�G���G*",300,1000,1000,Dxl2,false);
	Fade("�G���G2", 200, 1000, Dxl2, false);

	FadeFR2("�G*",0,1000,300,0,0,20,null, false);

	FadeDelete("�G����", 300, null, false);

	SetVolumeEX("@dm*", 1000, 0, null);
	SetVolumeEX("@SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/7000010b03">
"You brats are too noisy! Give me a break!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The door opens violently and Granny's angry voice echoes 
throughout the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	Delete("�G���G*");
	Delete("�G����");

	OnBG(10,"bg104031_5_���t��������r�炵");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal2");
	St("LL",730, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	St("RR",730, @-40,@0,"bu�N���A_�ʏ�}�X�N����_normal");
	FadeAllSt(0,true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Koujaku&, the man in green&, gas mask guy and I all stop 
moving and turn to look at Granny as if we were little 
chicks&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/7000020b03">
"You youngsters&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
A very visible blood vessel appears on her forehead&, and 
she looks at us with eyes burning with anger&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/7000030b03">
"Everyone&, downstairs! Right now!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_�R�~�J��_������01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�������u���o�F�M���O���߂Ȃ̂ŃR�~�J���ɏ�ʓ]���v

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 10, null, "cg/data/turn_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm0380.nss"]

}
