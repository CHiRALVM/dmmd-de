//<continuation number="580">
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


scene dm0200_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";


	if($PreGameName=="dm0191_vs.nss"){
	}else if($PreGameName=="dm0192_vs.nss"){
	}else{
	CreateTxtinEffect("�@",4000);
	CreateTxtinEffect("�m�C�Y",4000);
	RMScaningSet();
	RMScaningCSet("���t");
	RMDefaultStatusSet();
	RMDControlSet();
	}


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
	#ev950�@�A���픭��=true;
	#ev950�@�̌��C�\��a=true;
	#ev950�@�o�g���ėp�ːia=true;
	#ev950�@�o�g���ėp�h��a=true;
	#ev960�E�T�M���h�L�퓬�\��=true;
	#ev960�E�T�M���h�L�퓬�ːi=true;
	#ev950�@�o�g���ėp�h��a_����=true;
	#bg201023_0_���C���m�C�Y03=true;


	//���g�p�������o�֘A�̑f�ނ��폜
	RMScaningDelete();
	RMDControlDelete();
	TemptationDelete("�G��");
	EffectTxtinDelete();
	SetLoopPoint("@dm023",1789,93204);
	SetFrequency("@dm006*", 0, 1000, null);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0210.nss";

}


scene dm0200_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
/*
	//CreateColorSP("�G�F��", 0, "000000");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ev/ev950�@�o�g���ėp�ːia.jpg");
	//RMScaningTest();

	CreateTxtinEffectS(2000,"�@","�c");

	while(1){

	WaitKey();

	EffectTxtinS(700,"�@","�c");
	}

	WaitKey();
*/
//==============================================

	SoundPlay("@dm008",0,450,true);//����

	PrintBG("��w�i", 30000);

	//OnBG(10,"bg201021_0_���C���m�C�Y01");
	//FadeBG(0,true);

	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/l/bg201021_0_���C���m�C�Y01_l.jpg");

	FadeDelete("��w�i", 0, null, true);

//==============================================
//���ȍ~�A����
//==============================================

//�ȉ��A���e���d�����Ă�̂ō폜���Ă��������B
//�������u���F�폜���܂���10/6�v

//�������t�������߂��\��

	SetVolumeEX("@dm*", 300, 0, null);

	CreateSE("SE01","se�[��_����_�m�C�Y01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	CreateTextureSPsub("�G������", 100, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������", 0, 1100, 1100, null, true);
	Shake("�G������", 300, 20, 30, 0, 0, 500, null, false);
	Wait(100);
	Delete("�G������");
	SetVolumeEX("SE01", 100, 0, null);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000090a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G�ʏ�", 4900);
	SetShade("�G�ʏ�", MEDIUM);
	CreatePlainSP("�G��", 2000);

//���ǂ���
//�������t�̌�
	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,-435,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",1000,1000);

	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 800, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	TemptationAobaIn("�G��");

	Wait(96);

	Fade("�G�ʏ�", 200, 1000, null, false);
	TemptationAobaOut(200,true);

	CreateSE("SEL01","se�[��_���__�����g01L");
	MusicStart("SEL01",3000,400,0,600,null,true);

	CreateProcessEX("�v���Z�X", "Proc_dm0200_vs_01Act");
	Request("�v���Z�X", Start);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000100a01">
"Ngh&.&.&. Ugh&, Ah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ǂ���
//�������t�̌�
	TemptationAobaSet("�G�������t�U�f",1100,-970,-550,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",1500,1500);
	DrawTransition("�G�������t�U�f���B", 1, 0, 700, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("�G�ʏ�", 0, 0, null, true);
	SetShade("�G�ʏ�", SEMIHEAVY);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G��");

	Wait(80);

	Fade("�G�ʏ�", 200, 1000, null, false);
	TemptationAobaOut(200,true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000110a01">
"My&, head&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ǂ���A�ǂ���
//�������t�̌�
	TemptationAobaSet("�G�������t�U�f",1100,-1700,-740,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",3000,3000);
	DrawTransition("�G�������t�U�f���B", 1, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("�G�ʏ�", 0, 0, null, true);
	SetShade("�G�ʏ�", HEAVY);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G��");

	Wait(80);

	Fade("�G�ʏ�", 200, 1000, null, false);
	TemptationAobaOut(200,true);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000120a01">
"&.&.&.Ngh&, &.&.&.Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������t�A�����j�����I��
//���t�A�����������Ă�悤�ȏ�ԂɂȂ�B���S��ԁB
	TemptationAobaSet("�G�������t�U�f",1100,Center,190,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",3000,3000);
	DrawTransition("�G�������t�U�f���B", 1, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("�G�ʏ�", 0, 0, null, true);
	SetShade("�G�ʏ�", EXTRAHEAVY);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G��");

	Wait(112);

	Fade("�G�ʏ�", 200, 1000, null, false);
	TemptationAobaOut(200,true);

	SetVolumeEX("SEL01", 2000, 0, null);
	FadeDelete("�G�ʏ�", 2000, null, true);
	Delete("�G�������t�U�f���B");
	TemptationDelete("�G��");

	Request("�v���Z�X", Stop);
	Delete("�v���Z�X");

	CreateTextureEX("�G����", 1110, -790, -676, "cg/ev/l/ev900���C���ΐ푓�tVS�E�T�M��_l.jpg");
	CreateSE("SE01","se�l��_����_�ߎC��17");

	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G����", 1500, @0, -360, DxlAuto, false);
	Fade("�G����", 1500, 1000, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000130a01">
"Ren&, 'JUBILATION'&, set&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000131a06">
"Aoba?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000132a01">
"Do it already&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�@_�ʏ�_normal");
	FadeSt("C",0,true);}

	Move("�G�w�i", 0, @0, -1450, null, true);
	FadeDelete("�G����", 500, null, true);

	Wait(200);

{	St("C",740, @0,@0,"bu�@_�ʏ�_worry");
	FadeSt("C",400,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000133a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DeleteAllSt(200,true);

//�������u���F�����Ř@�̕\����o���ĂȂ��̂͂킴�Ƃł��v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000140a06">
"&.&.&.Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���m�C�Y���̃t�B�[���h���
//�������ꂽ�Ƃ���ő��t�����Ă���m�C�Y�B

	PrintGO("��w�i", 19000);
	CreateColorSP("�G�F��", 5000, "000000");
	FadeDelete("��w�i", 1000, null, true);

	Wait(500);

	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/bg201022_0_���C���m�C�Y02.jpg");

	FadeDelete("�G�F��", 1000, null, true);

	SoundPlay("@dm010",0,450,true);//�d�]�o�g��

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000150a03">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G��", 1110, -320, 0, "cg/ev/l/ev900���C���ΐ푓�tVS�E�T�M��_l.jpg");
	Fade("�G��", 500, 1000, null, false);
	Move("�G��", 3000, -810, -360, DxlAuto, true);

	Position("@�G�w�i", $x1, $y1);
	RMScaningBG($x1, $y1, "cg/bg/bg201022_0_���C���m�C�Y02.jpg");

	Position("@�G��", $x1, $y1);
	RMScaningTarget($x1, $y1, "cg/ev/l/ev900���C���ΐ푓�tVS�E�T�M��_l.jpg");

	RMScaning(255, 300, "���t", $���t�g�o, $���t�`�o, $���t�c�o);

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000160a03">
"&.&.&.Tch&. You've gotta be kidding me&."

//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000170a03">
"His Allmate is an old model without armor&. &.&.&.Is he
 underestimating me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm02/0000180c09">
"He almost doesn't have anything&, he's completely screwing
 with us!"

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000190a03">
"&.&.&.Let's just finish this quickly&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	RMScaningClose();

	FadeDelete("�G��", 1000, null, true);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�����t", 3740, Center, Middle, "cg/bu/bu���t_�ʏ�_happy.png");
	Position("@�G�����t", $x1, $y1);
	CreateStencil("�G��",0,$x1,$y1,128,"cg/bu/bu���t_�ʏ�_happy.png",false);
	SetAlias("�G��","�G��");
	CreateColorSP("�G��/�G�F��", 3745, "000000");
	DrawTransition("�G��/�G�F��", 1, 0, 250, 100, null, "cg/data/slide_02_00_0.png", true);

	CreateTextureSP("�G�����ʔw�i", 3010, Center, InBottom, "cg/bg/bg201023_0_���C���m�C�Y03.jpg");
	SetShade("�G�����ʔw�i", SEMIHEAVY);


	FadeDelete("�G��", 1000, null, true);
	//�p�b�`�F�N�C�b�N�Z�[�u���i�b�g�c��Ή��i���q
	Fade("@EFWIN/�L��������_*", 0, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000200a01">
"&.&.&.&.&."

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000210a03">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 200, 1000, null, true);

	Delete("�G��*");
	Delete("�G��");

//�����t�̍U���B�u�c�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă��āA�����Ƀr���b�Ɠd��������B
//�������u���o�F�@����B���f�ޒ�`�R�R�J���������v
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreateTextureEX("�G����", 1110, -1024, -300, "cg/ev/l/ev950�@�A���픭��_l.jpg");
	//SetBlur("�G����", true, 2, 300, 90, false);

	CreateTextureEXadd("�G���ʎ��d��", 1120, 0, 0, "cg/ev/x/ev950�@�A���픭��_���ʎ��da.png");
	CreateTextureEXadd("�G���ʎ��d��", 1120, 0, 0, "cg/ev/x/ev950�@�A���픭��_���ʎ��db.png");
	CreateTextureEXadd("�G���ʎ��d�O", 1120, 0, 0, "cg/ev/x/ev950�@�A���픭��_���ʎ��dc.png");

	CreateSurfaceEX("�G���ʃT�t", 2000,1000,"@�G����");
	SetSurface("�G���ʎ��d��","�G���ʃT�t");
	SetSurface("�G���ʎ��d��","�G���ʃT�t");
	SetSurface("�G���ʎ��d�O","�G���ʃT�t");

	Fade("�G���ʃT�t", 0, 1000, null, true);

	CreateProcessEX("�v���Z�X", "SpiralSparc2");

//�������u���o�F�@����B���f�ޒ�`�R�R�}�f�������v

//�������u���F�������瓮���`�v
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,800,null,false);
	BezierMove("�G����", 800, (-1024,-300){-400,-350}{-512,0}(-680,-210), DxlAuto, false);
	Fade("�G����", 0, 1000, null, true);

	FadeDelete("�G�F��", 800, null, true);

	EffectTxtinA("�@","�c");
	EffectTxtinB("�@","�c");

	Position("@�G����", $x1, $y1);
	Move("�G���ʎ��d*", 0, $x1, $y1, null, true);

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,500,null,false);

	CreatePlainEX("�G��", 2100);
	SetVertex("�G��", left, bottom);
	//SetBlur("�G��", true, 2, 300, 300, false);
	Fade("�G��", 200, 500, null, false);
	Zoom("�G��", 400, 1200, 1200, Dxl3, false);
	Wait(300);

	CreateSE("SEL21","se�[��_����_�ѓd02");
	MusicStart("SEL21",0,700,0,800,null,true);
	SetFrequency("SEL21", 5000, 1000, null);
	Request("�v���Z�X", Start);

	Zoom("�G��", 10000, 1300, 1300, Dxl3, false);
	Fade("�G��", 600, 0, null, true);

	Move("�G���ʎ��d*", 2000, -320, -20, DxlAuto, false);
	Move("�G����", 2000, -320, -20, DxlAuto, true);

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000220a03">
"&.&.&.What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���@�A�r�����������ēd�C���߁��G�Ɍ������Ęr���J���ĕ��B
	CreateSEEX("SE22","se�퓬_�@_�r���퉻01L");//�������u�r�d�F�_�~�[���m�F�v
	MusicStart("SE22",0,700,0,1000,null,true);
	Zoom("�G���ʃT�t", 4000, 2000, 2000, DxlAuto, false);

	Move("�G���ʃT�t", 4000, 300, @0, DxlAuto, false);
	Move("�G���ʎ��d*", 4000, 0, -200, DxlAuto, false);
	Move("�G����", 4000, 0, -200, DxlAuto, false);

	Wait(1000);
	Fade("�G�F��", 2000, 1000, Axl3, true);

	Delete("�G���ʎ��d*");
	Delete("�G����");
	Delete("�G�w�i");
	Delete("�G���ʃT�t");
	Delete("�G��");
	Request("�v���Z�X", Stop);

//�@���C�f�ޒ�`
	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/x/ev950�@�̌��C�\��_���ʕ���_x01.png");
	SetVertex("EF1", 514, 435);
	Zoom("EF1", 0, 2300, 2300, null, true);

	CreateTextureEXadd("EF2", 1000, -212, 27, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("EF2", 0, 1800, 1800, null, true);

	CreateColorEXadd("EF3", 5000, "FFFFFF");
	DrawTransition("EF3", 0, 500, 500, 100, null, "cg/data/beam_03_00_0.png", true);
	Fade("EF3", 0, 0, null, true);

	CreateColorEXadd("EF4", 5000, "FFFFFF");

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_�n�ʂɎh��01");
	CreateSE("SE05","se�[��_���__�Ђ�02");
	CreateSE("SE06","se�[��_���__�E�o01");
	CreateSE("SE07","se�퓬_�Ռ�_�j��01a");
	CreateSEEX("SE08","se�퓬_���K�C_�`���[�W01");

	CreateMovieEX("�G����", 2000, 120, 170, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G����",0,5000,3000,null,true);

	CloudZoomSmokeSet01("���",200,"cg/ev/x/ev950�@�̌��C�\��_���ʎ��d_x01.png");

	//CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	//SetShade("�G�w�i", HEAVY);
	//Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureEX("�@�U��", 100, -250, Middle, "cg/ev/ev950�@�̌��C�\��a.jpg");
	Rotate("�@�U��", 1, @0, @0, @50, null,false);
	Zoom("�@�U��", 0, 1300, 1300, null, true);
	SetBlur("�@�U��", true, 2, 500, 50, false);

	CreateTextureEXadd("��", 100, Center, Middle, "cg/ef/effi�\�I����_ef01.png");
	Move("��", 0, @-250, @50, null, true);
	Zoom("��", 0, 5000, 5000, null, true);

	RotetoLoopOGM02("���v���Z�X","��",1800,-3600);
	RotetoLoopOGM03("���v���Z�X2","EF1",34000,-3600);

	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("��", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("�@�U��", 10000000, 3, 3, 3, 3, 900, null, false);

	SetVolumeEX("SEL21", 300, 0, null);
	SetVolumeEX("SE22", 300, 0, null);
	FadeDelete("�G�F��", 100, null, false);

//�@���C�\��
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("�G�w�iEF02", 100, 1000, null, false);
	Fade("�G�w�i", 100, 1000, null, false);
	Zoom("�G�w�i", 650, 2000, 2000, AxlDxl, false);
	BezierMove("�G�w�i", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
	BezierMove("�G�w�iEF02", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@150,@-150), null, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�iEF01", 0, 1000, null, true);
	Move("�G�w�iEF01", 400, -200, 0, Dxl2, false);
	FadeDelete("�G�w�iEF01", 200, Axl2, false);

	//Wait(100);

	FadeDelete("�G�w�iEF02", 200, Axl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);

	//Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE08",0,600,0,200,null,true);

	Rotate("�@�U��", 300, @0, @0, 0, Dxl2,false);
	Zoom("�@�U��", 300, 1100, 1100, Dxl3, false);
	Fade("�@�U��", 100, 1000, null, false);
	Move("�@�U��", 300, -180, -140, Dxl3, true);
	SetBlur("�@�U��", false, 2, 300, 1000, false);

//�@���C�`���[�W
	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	SetBlur("�@�U��", true, 2, 500, 50, false);
	Fade("�G����", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("��", 3000, 500, null, false);

	Zoom("�@�U��", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@�@�U��",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000230a03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ǁ[��B�E�T�M���h�L�����̂������B
//�@���C����
	Shake("EF2", 1000, 10, 21, 0, 0, 1000, null, false);
	Fade("EF2", 0, 1000, null, true);
	Wait(50);

	MoveFTP1stop();
	MoveFTP2stop();

	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",0,700,0,1000,null,false);
	SetVolumeEX("SE08", 1000, 0, null);

	SetBlur("�@�ːi", true, 2, 300, 50, false);
	Move("�@�U��", 200, -20, -200, Dxl2, false);
	Fade("EF3", 50, 1000, null, true);

	Shake("�@�U��", 1000, 10, 3, 12, 7, 900, null, false);

	Wait(50);

	Fade("EF4", 200, 1000, Axl1, true);

	MusicStart("SE07",0,1000,0,1000,null,false);

	RMDControlLDefault($�m�C�Y�g�o);//4000
	//SetFont("�l�r ����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("Dt1", 15000, 50, 20, 700, 500, $�m�C�Y�g�o);

	$���m�C�Y�g�o=$�m�C�Y�g�o;
	//CreateText("Dt2", 15000, 50, 40, 700, 500, $���m�C�Y�g�o);

	$�_���[�W=1200;
	//CreateText("Dt3", 15000, 50, 40, 700, 500, $�_���[�W);

	$���m�C�Y�g�o=$���m�C�Y�g�o-$�_���[�W;
	//CreateText("Dt2", 15000, 50, 60, 700, 500, $���m�C�Y�g�o);

	RMDControlInL(1000,$���m�C�Y�g�o);
	RMDControlOutL(2000);

	PrintGO("��w�i", 9990);
	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/bg201022_0_���C���m�C�Y02.jpg");

	Delete("���*");
	Delete("�@�U��");
	Delete("��*");
	Delete("�v���Z�X");
	Delete("EF*");
	FadeDelete("��w�i", 1000, null, true);

{	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm02/0000240c09">
"P!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ռ�_������01");
	CreateSE("SE02","se�퓬_�Ռ�_������01");
	CreateSE("SE03","se�퓬_�Ռ�_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 300, null, false);
	Wait(100);
	MusicStart("SE02",0,700,-200,1000,null,false);
	Wait(200);
	MusicStart("SE03",0,700,400,1000,null,false);

	WaitAction("@�G�F��", null);

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000250c10">
"Confirmed enemy attack! 3 Losses! Durability decreased by
 12!"

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000260a03">
"&.&.&.Damn that guy&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 600, 0, null);
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1500,null,false);

//�����t���_
	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("�G�w�i50", 100, Center, InBottom, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");

	DrawDelete("�G����", 150, 100, null, "slide_01_01_0", true);

	SoundPlay("@dm023",0,1,true);//�����Q
	SetStream("@dm023", 44700);
	SetVolumeEX("@dm023", 0, 450, null);
	SetLoopPoint("@dm023",44700,93264);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000270a01">
"&.&.&.!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000280a01">
"Just now&.&.&. What did I&.&.&.?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000290a01">
"Ren&, what was that&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

{	St("C",740, @0,@0,"st�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000300a06">
"You gave me instructions to attack&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000310a01">
"Attack? How could I do that? I don't know any attacks&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000320a01">
"But a little while ago&.&.&. it felt like my mouth was moving on its own&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000330a06">
"Aoba&, he's coming again&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000340a06">
"Instructions&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000350a01">
"Even if you ask&, I&.&.&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000360a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000370a01">
"But if I don't&, we'd be in trouble&, right&.&.&.?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000380a01">
"Just have to do it like earlier&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//SetVolumeEX("@dm*", 500, 200, null);
	SetVolumeEX("@dm023", 500, 200, null);

//���ڂ���鑓�t�B�ӎ����W���B
//���ǂ���
	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 600, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	Wait(500);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000390a01">
"&.&.&.gh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

//���ǂ���
//�������t�̌�
	CreateColorSP("�G�F����", 2009, "000000");
	TemptationNoizSet("�G�������t�U�f������",2102);
	TemptationAobaSet("�G�������t�U�f",2100,Center,Middle,"cg/ev/ev900�����P�l�̑��t.jpg",1500,1500);

	CreateColorSP("�G�������t�U�f���B", 2110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 650, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_�S��_�ۓ�02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	TemptationAobaIn("�G����");
	TemptationAobaOut(200,false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000400a01">
"&.&.&.Nngh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",2100,Center,-120,"cg/ev/ev900�����P�l�̑��t.jpg",2000,2000);

//���ǂ���
//�������t�̌�
	CreateSE("SE01","se�l��_�S��_�ۓ�02");

	MusicStart("SE01",0,1500,0,1000,null,false);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G����");
	TemptationAobaOut(200,true);

	SetVolumeEX("@dm023", 2000, 450, null);

	Wait(300);

	Delete("@�G�������t�U�f���B");
	TemptationDelete("�G����");
	Wait(16);
	DrawTransition("�G�F����", 1000, 1000, 0, 100, null, "cg/data/slide_02_00_0.png", true);
	Delete("�G�F����");

{	Fw("fw���t_�ʏ�_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000410a01">
"&.&.&.Ren&.&.&. Defense&."

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000420a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�����t�A�@�ɓ����ȏ��𔭐������ăK�[�h�B
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,850,null,false);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�G�w�i");

	$�G����="�G����";
	CreateTextureSP($�G����, 1110, -230, -300, "cg/ev/l/ev960�E�T�M���h�L�퓬�\��_l.jpg");
	SetVertex($�G����, 465, 485);

	CreateTxtinEffectS(2000,"�m�C�Y","��");

	Delete("�G�w�i50");
	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000430c10">
"'DEMOLISH' set!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm02/0000440c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EffectTxtinS(700,"�m�C�Y","��");

//���ǂ�I�ƏՌ��g�݂����ȉ�
//���m�C�Y�̍U���A�u���v�Z�b�g�B�E�T�M���h�L�������~�T�C���ɂȂ��Ĕ��ł���B

//�E�T�M���ːi�f�ސ���

	CreateColorSP("�G�F��", 0, "000000");
	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");

	CreateMaskEX("�G�ʈ�", 0, Center, Middle, "cg/data/zzexslide_01_00_1.png", false);
	CreateMovieEX("�G�ʈ�/�G�����ʐ�", 2990, Center, -72, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G�ʈ�/�G�����ʐ�", 0, 2600, 5000, null, true);

	CreateProcessEX("�v���Z�X", "Proc_dm0200_vs_02Act");
	Request("�v���Z�X", Start);

	$�G���e�˔w�i="�b/�G���e�˔w�i";
	CreateTextureEX($�G���e�˔w�i, 0, Center, Middle, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�w�i.jpg");
	SetVertex($�G���e�˔w�i, 400, 110);
	Zoom($�G���e�˔w�i, 0, 10000, 10000, null, true);

//��������������
	$�G���e�ˈ�="�b/�G���e�ˈ�";
	CreateTextureEX($�G���e�ˈ�, 304, 30, -150, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��01.png");
	Request($�G���e�ˈ�, Smoothing);
	Zoom($�G���e�ˈ�, 0, 0, 0, null, true);
	SetBlur($�G���e�ˈ�, true, 2, 500, 80, true);
	$�G���e�ˈ��=$�G���e�ˈ�+"��";
	Position($�G���e�ˈ�, $x1C, $y1C);
	CreateTextureEXadd($�G���e�ˈ��, 304, $x1C, $y1C, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��01_xw.png");
	Request($�G���e�ˈ��, Smoothing);
	Zoom($�G���e�ˈ��, 0, 0, 0, null, true);
	SetBlur($�G���e�ˈ��, true, 2, 500, 150, true);

//��������������
	$�G���e�˓�="�b/�G���e�˓�";
	CreateTextureEX($�G���e�˓�, 203, 253, -10, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��02.png");
	Request($�G���e�˓�, Smoothing);
	Zoom($�G���e�˓�, 0, 0, 0, null, true);
	SetBlur($�G���e�˓�, true, 2, 500, 80, true);
	$�G���e�˓񍶌�=$�G���e�˓�+"��";
	Position($�G���e�˓�, $x2L, $y2L);
	CreateTextureEXadd($�G���e�˓񍶌�, 203, $x2L, $y2L, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��02_xw.png");
	Request($�G���e�˓񍶌�, Smoothing);
	Zoom($�G���e�˓񍶌�, 0, 0, 0, null, true);
	SetBlur($�G���e�˓񍶌�, true, 2, 500, 150, true);
//��������������
	$�G���e�˓�E="�b/�G���e�˓�E";
	CreateTextureEX($�G���e�˓�E, 203, 350, 50, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��03.png");
	Request($�G���e�˓�E, Smoothing);
	Zoom($�G���e�˓�E, 0, 0, 0, null, true);
	SetBlur($�G���e�˓�E, true, 2, 500, 80, true);
	$�G���e�˓�E��=$�G���e�˓�E+"��";
	Position($�G���e�˓�E, $x2R, $y2R);
	CreateTextureEXadd($�G���e�˓�E��, 203, $x2R, $y2R, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��03_xw.png");
	Request($�G���e�˓�E��, Smoothing);
	Zoom($�G���e�˓�E��, 0, 0, 0, null, true);
	SetBlur($�G���e�˓�E��, true, 2, 500, 150, true);


//��������������
	$�G���e�ˎO��="�b/�G���e�ˎO��";
	CreateTextureEX($�G���e�ˎO��, 102, 300, 50, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��04.png");
	Request($�G���e�ˎO��, Smoothing);
	Zoom($�G���e�ˎO��, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎO��, true, 2, 500, 80, true);
	$�G���e�ˎO����=$�G���e�ˎO��+"��";
	Position($�G���e�ˎO��, $x3L, $y3L);
	CreateTextureEXadd($�G���e�ˎO����, 102, $x3L, $y3L, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��04_xw.png");
	Request($�G���e�ˎO����, Smoothing);
	Zoom($�G���e�ˎO����, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎO����, true, 2, 500, 150, true);
//��������������
	$�G���e�ˎO�E="�b/�G���e�ˎO�E";
	CreateTextureEX($�G���e�ˎO�E, 102, 370, 60, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��05.png");
	Request($�G���e�ˎO�E, Smoothing);
	Zoom($�G���e�ˎO�E, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎO�E, true, 2, 500, 80, true);
	$�G���e�ˎO�E��=$�G���e�ˎO�E+"��";
	Position($�G���e�ˎO�E, $x3R, $y3R);
	CreateTextureEXadd($�G���e�ˎO�E��, 102, $x3R, $y3R, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��05_xw.png");
	Request($�G���e�ˎO�E��, Smoothing);
	Zoom($�G���e�ˎO�E��, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎO�E��, true, 2, 500, 150, true);


//��������������
	$�G���e�ˎl��="�b/�G���e�ˎl��";
	CreateTextureEX($�G���e�ˎl��, 1, 340, 80, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��06.png");
	Request($�G���e�ˎl��, Smoothing);
	Zoom($�G���e�ˎl��, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎl��, true, 2, 500, 80, true);
	$�G���e�ˎl����=$�G���e�ˎl��+"��";
	Position($�G���e�ˎl��, $x4L, $y4L);
	CreateTextureEXadd($�G���e�ˎl����, 1, $x4L, $y4L, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��06_xw.png");
	Request($�G���e�ˎl����, Smoothing);
	Zoom($�G���e�ˎl����, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎl����, true, 2, 500, 150, true);
//��������������
	$�G���e�ˎl�E="�b/�G���e�ˎl�E";
	CreateTextureEX($�G���e�ˎl�E, 1, 390, 80, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��07.png");
	Request($�G���e�ˎl�E, Smoothing);
	Zoom($�G���e�ˎl�E, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎl�E, true, 2, 500, 80, true);
	$�G���e�ˎl�E��=$�G���e�ˎl�E+"��";
	Position($�G���e�ˎl�E, $x4R, $y4R);
	CreateTextureEXadd($�G���e�ˎl�E��, 1, $x4R, $y4R, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��07_xw.png");
	Request($�G���e�ˎl�E��, Smoothing);
	Zoom($�G���e�ˎl�E��, 0, 0, 0, null, true);
	SetBlur($�G���e�ˎl�E��, true, 2, 500, 150, true);

//�E�T�M���ːi�f�ސ��������܂Ł�����

//��ʐ؂�ւ�
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,750,null,false);
	Zoom($�G����, 900, 100, 100, Dxl1, false);
	Fade($�G����, 300, 0, null, true);
	Delete($�G����);

	Wait(300);

//��ʂɓːi
	CreateSE("SE021","se�퓬_����_������01");
	CreateSE("SE022L","se�퓬_����_������01");
	CreateSE("SE022R","se�퓬_����_������01");
	CreateSE("SE023L","se�퓬_����_������01");
	CreateSE("SE023R","se�퓬_����_������01");
	CreateSE("SE024L","se�퓬_����_������01");
	CreateSE("SE024R","se�퓬_����_������01");

	Fade("�G�ʈ�/�G�����ʐ�", 500, 1000, null, false);
	Zoom($�G���e�˔w�i, 1200, 1100, 1100, Dxl3, false);
	Fade($�G���e�˔w�i, 500, 1000, null, true);
	Zoom($�G���e�˔w�i, 10000, 1100, 1100, null, false);


	MusicStart("SE021",0,900,0,1800,null,false);
	Move($�G���e�ˈ�, 0, @0, @0, null, true);
	Fade($�G���e�ˈ�, 0, 1000, null, false);
	Move($�G���e�ˈ�, 500, 220, 20, Axl3, false);
	Zoom($�G���e�ˈ�, 500, 1000, 1000, Axl3, false);

	Wait(700);

	MusicStart("SE022L",0,900,-250,1800,null,false);
	Move($�G���e�˓�, 0, @0, @0, null, true);
	Fade($�G���e�˓�, 0, 1000, null, false);
	Move($�G���e�˓�, 500, 190, 180, Axl3, false);
	Zoom($�G���e�˓�, 500, 1000, 1000, Axl3, false);
	Wait(150);
	MusicStart("SE022R",0,900,250,1800,null,false);
	Move($�G���e�˓�E, 0, @0, @0, null, true);
	Fade($�G���e�˓�E, 0, 1000, null, false);
	Move($�G���e�˓�E, 500, 610, 160, Axl3, false);
	Zoom($�G���e�˓�E, 500, 1000, 1000, Axl3, false);

	Wait(300);

	MusicStart("SE023L",0,900,-500,1800,null,false);
	Move($�G���e�ˎO��, 0, @0, @0, null, true);
	Fade($�G���e�ˎO��, 0, 1000, null, false);
	Move($�G���e�ˎO��, 500, 75, 220, Axl3, false);
	Zoom($�G���e�ˎO��, 500, 1000, 1000, Axl3, false);
	Wait(150);
	MusicStart("SE023R",0,900,500,1800,null,false);
	Move($�G���e�ˎO�E, 0, @0, @0, null, true);
	Fade($�G���e�ˎO�E, 0, 1000, null, false);
	Move($�G���e�ˎO�E, 500, 760, 120, Axl3, false);
	Zoom($�G���e�ˎO�E, 500, 1000, 1000, Axl3, false);

	Wait(300);

	MusicStart("SE024L",0,900,-700,1800,null,false);
	Move($�G���e�ˎl��, 0, @0, @0, null, true);
	Fade($�G���e�ˎl��, 0, 1000, null, false);
	Move($�G���e�ˎl��, 500, 20, 200, Axl3, false);
	Zoom($�G���e�ˎl��, 500, 1000, 1000, Axl3, false);
	Wait(150);
	MusicStart("SE024R",0,900,700,1800,null,false);
	Move($�G���e�ˎl�E, 0, @0, @0, null, true);
	Fade($�G���e�ˎl�E, 0, 1000, null, false);
	Move($�G���e�ˎl�E, 500, 890, 80, Axl3, false);
	Zoom($�G���e�ˎl�E, 500, 1000, 1000, Axl3, false);

	Wait(500);

{	Fw("fw�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/0000450a06">
"&.&.&.Ngh&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/0000460a01">
"&.&.&.! Hrgh&, this is bad!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�E�T�M�������̂�
	CreateSE("SE03","se�퓬_�E�T�M_���ːi����");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);

	Fade($�G���e�ˈ�, 0, 0, null, true);
	Fade($�G���e�˓�, 0, 0, null, true);
	Fade($�G���e�˓�E, 0, 0, null, true);
	Fade($�G���e�ˎO��, 0, 0, null, true);
	Fade($�G���e�ˎO�E, 0, 0, null, true);
	Fade($�G���e�ˎl��, 0, 0, null, true);
	Fade($�G���e�ˎl�E, 0, 0, null, true);

	$���o�����Ώ�=$�G���e�ˈ�;
	Position($���o�����Ώ�, $x1C, $y1C);
	$���o����=$�G���e�ˈ��;
	Move($���o����, 0, $x1C, $y1C, null, true);
	Fade($���o����, 0, 1000, null, true);
	Zoom($���o����, 0, 1000, 1000, null, true);


	$���o�����Ώ�=$�G���e�˓�;
	Position($���o�����Ώ�, $x2L, $y2L);
	$���o����=$�G���e�˓񍶌�;
	Move($���o����, 0, $x2L, $y2L, null, true);
	Fade($���o����, 0, 1000, null, true);
	Zoom($���o����, 0, 1000, 1000, null, true);
	$���o�����Ώ�=$�G���e�˓�E;
	Position($���o�����Ώ�, $x2R, $y2R);
	$���o����=$�G���e�˓�E��;
	Move($���o����, 0, $x2R, $y2R, null, true);
	Fade($���o����, 0, 1000, null, true);
	Zoom($���o����, 0, 1000, 1000, null, true);

	$���o�����Ώ�=$�G���e�ˎO��;
	Position($���o�����Ώ�, $x3L, $y3L);
	$���o����=$�G���e�ˎO����;
	Wait(1);
	Move($���o����, 0, $x3L, $y3L, null, true);
	Fade($���o����, 0, 1000, null, true);
	Zoom($���o����, 0, 1000, 1000, null, true);
	$���o�����Ώ�=$�G���e�ˎO�E;
	Position($���o�����Ώ�, $x3R, $y3R);
	$���o����=$�G���e�ˎO�E��;
	Move($���o����, 0, $x3R, $y3R, null, true);
	Fade($���o����, 0, 1000, null, true);
	Zoom($���o����, 0, 1000, 1000, null, true);


	$���o�����Ώ�=$�G���e�ˎl��;
	Position($���o�����Ώ�, $x4L, $y4L);
	$���o����=$�G���e�ˎl����;
	Move($���o����, 0, $x4L, $y4L, null, true);
	Fade($���o����, 0, 1000, null, true);
	Zoom($���o����, 0, 1000, 1000, null, true);
	$���o�����Ώ�=$�G���e�ˎl�E;
	Position($���o�����Ώ�, $x4R, $y4R);
	$���o����=$�G���e�ˎl�E��;
	Move($���o����, 0, $x4R, $y4R, null, true);
	Fade($���o����, 0, 1000, null, true);
	Zoom($���o����, 0, 1000, 1000, null, true);

	FadeDelete("�G�F��", 500, null, true);

	Wait(500);

//���ːi
	//CreateSE("SE041","se�퓬_�E�T�M_���ːi01");
	//CreateSE("SE042L","se�퓬_�E�T�M_���ːi01");
	//CreateSE("SE042R","se�퓬_�E�T�M_���ːi01");
	CreateSE("SE043L","se�퓬_�E�T�M_���ːi01");
	CreateSE("SE043R","se�퓬_�E�T�M_���ːi01");
	//CreateSE("SE044L","se�퓬_�E�T�M_���ːi01");
	//CreateSE("SE044R","se�퓬_�E�T�M_���ːi01");
	Fade($�G���e�˔w�i, 100, 0, null, false);

	Request("�v���Z�X", Stop);
	MoveCamera("�b", 600, @0, 288, 250, Dxl3, false);
	Rotate("�b", 600, @0, 0, 360, Dxl3,false);

	Wait(100);

	MusicStart("SE044L",0,700,-600,1500,null,false);
	$���o����=$�G���e�ˎl����;
	Move($���o����, 400, -6380, 2600, Axl2, false);
	Zoom($���o����, 400, 2000, 2000, Axl2, false);
	MusicStart("SE044R",0,700,600,1500,null,false);
	$���o����=$�G���e�ˎl�E��;
	Move($���o����, 400, 10890, 80, Axl2, false);
	Zoom($���o����, 400, 2000, 2000, Axl2, false);

	Wait(40);

	MusicStart("SE043L",0,700,-400,1500,null,false);
	$���o����=$�G���e�ˎO����;
	Move($���o����, 400, -4425, 3620, Axl2, false);
	Zoom($���o����, 400, 2000, 2000, Axl2, false);
	MusicStart("SE043R",0,700,400,1500,null,false);
	$���o����=$�G���e�ˎO�E��;
	Move($���o����, 400, 8560, 1320, Axl2, false);
	Zoom($���o����, 400, 2000, 2000, Axl2, false);

	Wait(40);

	MusicStart("SE042L",0,700,-200,1500,null,false);
	$���o����=$�G���e�˓񍶌�;
	Move($���o����, 400, -1070, 3980, Axl2, false);
	Zoom($���o����, 400, 2000, 2000, Axl2, false);
	MusicStart("SE042R",0,700,200,1500,null,false);
	$���o����=$�G���e�˓�E��;
	Move($���o����, 400, 5810, 2360, Axl2, false);
	Zoom($���o����, 400, 2000, 2000, Axl2, false);

	Wait(40);

	MusicStart("SE041",0,700,0,1500,null,false);
	$���o����=$�G���e�ˈ��;
	Move($���o����, 400, 4020, 3420, Axl2, false);
	Zoom($���o����, 400, 2000, 2000, Axl2, false);

	Wait(800);

	Fade("�G�ʈ�/�G�����ʐ�", 600, 0, null, true);

//�����t�A�@�ɓ����ȏ��𔭐������ăK�[�h���邪�e����΂����B

	CreateTxtinEffectS(3900,"�@","��");

	CreateTextureEX("�G�ꉺ", 3110, -210, -120, "cg/ev/ev950�@�o�g���ėp�h��a_����.jpg");

	CreateTextureEX("�G��w�i����", 3120, -2000, -440, "cg/ev/l/ev950�@�o�g���ėp�h��a_����_l.jpg");
	SetVertex("�G��w�i����", 1453, 830);
	Zoom("�G��w�i����", 0, 1100, 1110, null, true);

	CreateTextureEX("�G��w�i", 3110, -2000, -440, "cg/ev/l/ev950�@�o�g���ėp�h��a_l.jpg");
	Zoom("�G��w�i", 0, 1500, 1500, null, true);

	CreateSE("SE51","se�퓬_����_������01");
	MusicStart("SE51",0,700,0,800,null,false);

	Position("@�G��w�i", $x1, $y1);
	Zoom("�G��w�i", 800, 1000, 1000, Dxl3, false);
	BezierMove("�G��w�i", 800, ($x1,$y1){-1920,-380}{-1650,-370}(-1170,-490), Dxl3, false);
	Fade("�G��w�i", 600, 1000, null, false);

	Wait(600);

	EffectTxtinS(700,"�@","��");

	$�����t�g�o=$���t�g�o;
	RMDControlRDefault($���t�g�o);//5000
//�������u���F�I�����t�߂ňꌂ������Ă�̂Ń_���[�W��Ԃ���v
	$�����t�g�o=$���t�g�o-300;
	RMDControlInR(0,$�����t�g�o);//4700

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("�G�F��", 4900, "FFFFFF");
	FadeDelete("�G�F��", 1000, null, false);

	Fade("�G�ꉺ", 0, 1000, null, true);

	Position("@�G��w�i", $x1, $y1);
	Move("�G��w�i����", 0, $x1, $y1, null, true);
	Fade("�G��w�i����", 0, 1000, null, true);
	SetBlur("�G��w�i����", true, 3, 500, 250, false);
	Wait(100);
	Zoom("�G��w�i����", 1000, 1000, 1000, null, false);
	Fade("�G��w�i����", 800, 0, null, false);
	Wait(500);
	Fade("�G��w�i", 800, 0, null, true);

	CreateSE("SE11","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE12","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE13","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE14","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE15","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE16","se�퓬_�Ռ�_�h�ǌ���01");

	CreateMaskEX("��", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("��", 0, 2000, 2000, null, true);

	CreateColorEXadd("�G���]", 5000, "FFFFFF");
	CreateColorEXadd("��/�G�F��", 4890, "FFFFFF");

	Fade("��/�G�F��", 0, 1000, null, true);
	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 200, 0, 0, 30,null, false);
	Fade("��/�G�F��", 170, 0, null, true);

	$�_���[�W�q=500;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Position("�G�ꉺ", $x1, $y1);//���_���擾

//�����_���q�b�g�G�t�F�N�g01
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE11",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);


	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g02
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=500;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);


	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g03
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=500;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);


	Move("�G�ꉺ", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g04
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=500;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�ꉺ", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);


//���ǂ��[��I
//����ʂ������Ȃ�
	MusicStart("SE15",0,700,0,1000,null,false);
	MusicStart("SE16",0,1000,0,1000,null,false);
	Fade("�G���]", 0, 1000, null, true);

	$�_���[�W�q=2700;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(500,$�����t�g�o);

	Wait(500);


/*
	RMDControlRDefault($���t�g�o);//5000

	//SetFont("�l�r ����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("DtR1", 15000, 900, 20, 700, 500, $���t�g�o);

	$�����t�g�o=$���t�g�o;
	//CreateText("DtR2", 15000, 900, 40, 700, 500, $�����t�g�o);

	$�_���[�W�q=5000;
	//CreateText("DtR3", 15000, 900, 60, 700, 500, $�_���[�W�q);

	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

	//CreateText("DtR2", 15000, 900, 40, 700, 500, $�����t�g�o);

	RMDControlOutR(1000);
*/
	RMDControlOutR(1000);

	Wait(800);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(200);

//���m�C�Y�̃t�B�[���h���
	PrintGO("��w�i", 9900);
	CreateColorSP("�G�F��", 5000, "000000");

	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/bg201022_0_���C���m�C�Y02.jpg");

	Delete("��");
	Delete("@�b");
	Delete("�v���Z�X");

	SetVolumeEX("@dm*", 1500, 0, null);
	FadeDelete("��w�i", 1000, null, true);
	Wait(500);
	FadeDelete("�G�F��", 1000, null, true);

	Wait(300);

	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000470c10">
"Main body of enemy's defense wall&, 100% damage!"

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000480a03">
"&.&.&.I guess it was useless to expect more&."

//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000490a03">
"Let's go&."

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000500c10">
"Withdrawal! Withdrawal!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0134]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000510c10">
"&.&.&.No it's not! Wait!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/bg201023_0_���C���m�C�Y03.jpg");
	CreateColorSP("�G�F������", 50, "000000");
	Fade("�G�F������", 0, 750, null, true);


	CreateMovieSPsub("�G������", 2990, Center, -380, true, true, "dx/mvk100.ngs");//��
	Zoom("�G������", 0, 2800, 8000, null, true);

	FadeDelete("�G��", 1000, null, true);

//�������u���F�������A�n�}��Ȃ��c�c�B�_�b�o���̂a�f�l�͖����̂��I�H�v
	SoundPlayEF("@dm006",0,450,true);
	SetStream("@dm006*", 3000);
	SetFrequency("@dm006*", 0, 600, null);//�����ő��x�ς��Ă܂��A�܂���������a���ĂˁI

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000520c10">
"Main body of enemy's defense wall&, recovering at amazing
 speed!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	//SetFont("�l�r ����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("DtR1", 15000, 900, 20, 700, 500, $���t�g�o);

	//$�����t�g�o=$���t�g�o;
	//CreateText("DtR2", 15000, 900, 40, 700, 500, $�����t�g�o);

	$�_���[�W�q=4500;
	//CreateText("DtR3", 15000, 900, 60, 700, 500, $�_���[�W�q);

	$�����t�g�o=$�����t�g�o+$�_���[�W�q;
	RMDControlInR(5000,$�����t�g�o);

	//CreateText("DtR2", 15000, 900, 40, 700, 500, $�����t�g�o);

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000530c10">
"40&, 50&.&.&. 70&, 90!"

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000540a03">
"&.&.&.What's going on?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	RMDControlOutR(0);

	CreateTextureEX("�G��", 1110, Center, -200, "cg/ev/ev900�����t��.jpg");

//�����o�����t�A�猩���Ȃ����x�ɕ\���H
	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�G��", 0, 1000, null, true);
	$SETime = RemainTime("SE01")/3;
	Fade("�G��", $SETime, 0, null, true);
	Delete("�G��");

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0143]
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000550a03">
"&.&.&.&.&.!"

//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000560a03">
"What happened&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����ʂɃU�U�b�A�U�U�b�ƃe���r�m�C�Y������
	CreateSE("SE01","se�[��_����_�m�C�Y01L");
	CreateTextureEX("�G������", 3110, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������", 0, 1200, 1200, null, true);

	CreateMaskEX("��", 0, Center, Middle, "cg/data/slide_08_00_0.png", false);
	CreateTextureEXsub("��/�G�w�i", 3120, 0, 0, "cg/ev/l/ev900�̂̍r��Ă����t_l.jpg");
	Zoom("��/�G�w�i", 0, 1100, 1100, null, true);


	MusicStart("SE01",0,1000,0,1000,null,true);
	Shake("�G������", 200, 40, 20, 0, 0, 1000, Dxl3, false);
	Fade("�G������", 0, 1000, null, true);
	Wait(30);
	Fade("�G������", 70, 0, null, true);
	SetVolumeEX("SE01", 1, 1, null);

	Wait(300);

	SetVolumeEX("SE01", 1, 1000, null);
	Shake("�G������", 200, -40, 20, 0, 0, 1000, Dxl3, false);
	Fade("�G������", 0, 1000, null, true);
	FadeFFR("��/�G�w�i", 0,500, 200, 0, 0, 50,null, false);
	Wait(10);
	Fade("��/�G�w�i", 0, 0, null, true);
	Fade("�G������", 70, 0, null, true);
	SetVolumeEX("SE01", 1, 1, null);

	Wait(6);

	SetVolumeEX("SE01", 1, 1000, null);
	Shake("�G������", 200, 40, 20, 0, 0, 1000, Dxl3, false);
	Fade("�G������", 0, 1000, null, true);
	Wait(30);
	Fade("�G������", 70, 0, null, true);
	SetVolumeEX("SE01", 1, 1, null);


{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm02/0000570c10">
"Alert! Alert! Danger! Danger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//������Ȍ����m�C�Y���P��
	CreateSE("SE01","se�[��_����_�͔ėp01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("�G�w�i������", 100, Center, InBottom, "cg/bg/bg201023_0_���C���m�C�Y03.jpg");

	Fade("�G�w�i������", 0, 250, null, true);
	Wait(30);
	Fade("�G�w�i������", 300, 0, null, true);

{	Fw("fw�E�T�M��_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//���E�T�M���̊�\��
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm02/0000580a03">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F���I", 20000, "FFFFFF");
	Fade("�G�F���I", 600, 1000, Axl3, true);

	SetVolumeEF("@dm006",1000);

	Wait(2000);

//���ǁ[��I�Ƃ��̂������Ռ���
//����ʂ������Ȃ�
//���Ó]

	ClearFadeAll(3000, true);
	Wait(2000);

//�����t�@�C��["dm0210.nss"]

}

/*
while(1){

//�������u���o�F�T���v���X�N���v�g�A�������ʓo�ꉉ�o�y�j�Łz�v
//�������ʓo�ꉉ�o�y�j�Łz

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ev/ev960�E�T�M���h�L�퓬�\��.jpg");

	CreateTextureEXmul("�G�����ʍ���", 1100, Center, Middle, "cg/ef/efv��������_�m�C�Y_��_�O��01a.png");
	SetVertex("�G�����ʍ���", 401, 378);
	CreateTextureEXmul("�G�����ʍ�", 1100, Center, Middle, "cg/ef/efv��������_�m�C�Y_��_�O��01b.png");
	SetVertex("�G�����ʍ�", 336, 593);
	CreateTextureEXmul("�G�����ʉ�", 1100, Center, Middle, "cg/ef/efv��������_�m�C�Y_��_�O��01c.png");
	SetVertex("�G�����ʉ�", 508, 723);
	CreateTextureEXmul("�G�����ʉE", 1100, Center, Middle, "cg/ef/efv��������_�m�C�Y_��_�O��01d.png");
	SetVertex("�G�����ʉE", 696, 596);
	CreateTextureEXmul("�G�����ʉE��", 1100, Center, Middle, "cg/ef/efv��������_�m�C�Y_��_�O��01e.png");
	SetVertex("�G�����ʉE��", 634, 391);
	Zoom("�G������*", 0, 1150, 1150, null, true);


	WaitKey();

	Move("�G�����ʍ���", 0, @173, @-100, null, false);
	Move("�G�����ʍ�", 0, @-100, @-173, null, false);
	Move("�G�����ʉ�", 0, @-100, @0, null, false);
	Move("�G�����ʉE", 0, @-100, @173, null, false);
	Move("�G�����ʉE��", 0, @173, @100, null, false);


	$MoveTimeAll=300;
	Fade("�G�����ʍ���", $MoveTimeAll, 1000, DxlAuto, false);
	Move("�G�����ʍ���", $MoveTimeAll, @-173, @100, DxlAuto, false);
	Zoom("�G�����ʍ���", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("�G�����ʍ�", $MoveTimeAll, 1000, DxlAuto, false);
	Move("�G�����ʍ�", $MoveTimeAll, @100, @173, DxlAuto, false);
	Zoom("�G�����ʍ�", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("�G�����ʉ�", $MoveTimeAll, 1000, DxlAuto, false);
	Move("�G�����ʉ�", $MoveTimeAll, @100, @0, DxlAuto, false);
	Zoom("�G�����ʉ�", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("�G�����ʉE", $MoveTimeAll, 1000, DxlAuto, false);
	Move("�G�����ʉE", $MoveTimeAll, @100, @-173, DxlAuto, false);
	Zoom("�G�����ʉE", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("�G�����ʉE��", $MoveTimeAll, 1000, DxlAuto, false);
	Move("�G�����ʉE��", $MoveTimeAll, @-173, @-100, DxlAuto, false);
	Zoom("�G�����ʉE��", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);

	//Zoom("�G������*", 1000, 500, 500, null, true);

	WaitKey();

	Wait(200);

//�������ʔ������o

	CreateTextureSPadd("�G�����ʈ�", 1120, Center, Middle, "cg/ef/efv��������_�m�C�Y_��b_s.png");//�k���f�ޔ�
	Request("�G�����ʈ�", Smoothing);
	//Zoom("�G�����ʈ�", 0, 1150, 1150, null, true);//�ʏ�T�C�Y
	Zoom("�G�����ʈ�", 0, 2300, 2300, null, true);//�k���f�ޔ�

	CreateTextureSPmul("�G�����ʓ�", 1100, Center, Middle, "cg/ef/efv��������_�m�C�Y_��a.png");
	Request("�G�����ʓ�", AddRender);
	SetBlur("�G�����ʓ�", false);
	//Zoom("�G�����ʓ�", 0, 2000, 2000, null, true);//�ʏ�T�C�Y

	Delete("�G�����ʍ���");
	Delete("�G�����ʍ�");
	Delete("�G�����ʉ�");
	Delete("�G�����ʉE");
	Delete("�G�����ʉE��");

	CreateTextureEX("�G�����ʓ����", 1100, Center, Middle, "cg/ef/efv��������_�m�C�Y_��a_s.png");//�k���f�ޔ�
	Request("�G�����ʓ����", Smoothing);
	DrawEffect("�G�����ʓ����", 0, "Ripple", 0, 250, null);
	Zoom("�G�����ʓ����", 0, 2000, 2000, null, true);//�k���f�ޔ�

	Wait(80);

	Request("�G�����ʓ�", NormalRender);
	Fade("�G�����ʈ�", 500, 0, AxlAuto, false);
	Zoom("�G�����ʈ�", 500, 5000, 5000, Dxl3, false);//�k���f�ޔ�
	//Zoom("�G�����ʈ�", 500, 3000, 3000, Dxl3, false);//�ʏ�T�C�Y
	Wait(300);
	FadeDelete("�G�����ʈ�", 400, null, false);
	Wait(100);

	Zoom("�G�����ʈ�", 10000, 2500, 2500, Dxl2, false);//�k���f�ޔ�
	//Zoom("�G�����ʈ�", 10000, 2500, 2500, Dxl2, false);//�ʏ�T�C�Y

	Wait(400);

	DrawEffect("�G�����ʓ����", 150, "Ripple", 0, 400, null);
	Fade("�G�����ʓ����", 150, 1000, Dxl3, false);
	FadeDelete("�G�����ʓ�", 150, null, true);
	Wait(100);
	Zoom("�G�����ʓ����", 2000, 1200, 1200, null, false);//�k���f�ޔ�
	//Zoom("�G�����ʓ����", 2000, 800, 800, null, false);//�ʏ�T�C�Y
	FadeDelete("�G�����ʓ����", 1000, null, true);

	Wait(100);

	WaitKey();

}
*/
