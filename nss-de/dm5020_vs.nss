//<continuation number="200">
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


scene dm5020_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";

	CreateTxtinEffect("�@",4000);
	CreateTxtinEffect("������",4000);
	//RMScaningSet();
	//RMScaningCSet("������");
	RMDefaultStatusSet();
	RMDControlSet();

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
	#ev900���C���ΐ푓�tVS���Ŏ�=true;

	#bg201031_0_���C�����Ŏ�=true;

	//�����o��̏�����������
	Request("@EFWIN/SE01", UnLock);
	EffectTxtinDelete();
	EffectTxtinSDelete("�@","�_");
	RMDControlDelete();
	TiesMovieDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5030.nss";

}


scene dm5020_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

$TEXTBOX_TYPE="";
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	RMDControlRDefault($���t�g�o);//5000
	RMDControlLDefault($�����҂g�o);//3500
	$�����t�g�o=$���t�g�o;
	$�������҂g�o=$�����҂g�o;
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);
	CreateColorSP("�G�F��", 5000, "000000");
	FadeDelete("��w�i", 0, null, true);

	TiesMovieSet("�]�����C��a",2000);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	if($nextrhymescene=="dm5020_vs.nss"){
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	Request("@EFWIN/SE01", UnLock);
	}else{
	CreateSE("SE01","se�[��_���C��_�����g01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	}

	TiesMovieStart();

	DrawDelete("�G�F��", 500, 100, Axl2, "slide_02_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
This feeling&.&.&.

I've been having it all the time lately&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TiesMovieNEXTPro();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Rhyme&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(1000);
	WaitKey(1000);

	SetVolumeEX("@SE*", 600, 0, null);
	SetVolumeEX("@EFWIN/SE*", 600, 0, null);

	CreateSE("SE02","se�[��_���__����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G�F��", 1000, 1000, AxlAuto, true);

	Wait(1000);
	WaitKey(2000);

	TiesMovieDelete();

//���Ҏa�胉�C���Ɉ���������
//������̃t�B�[���h���c��ł�B���������B

	PrintGO("��w�i", 30000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg201031_0_���C�����Ŏ�");
	FadeBG(0,true);

	CreateColorEX("�G�F��", 100, "000000");
	Fade("�G�F��", 0, 500, null, true);
	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/l/bg201031_0_���C�����Ŏ�_l.jpg");

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("��w�i");
	FadeDelete("�G�F��", 3000, null, true);

$TEXTBOX_TYPE="���C��";

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000030a01">
"Rhyme again&.&.&. What the hell!?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000040a01">
"And this place&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("@�G�w�i", 3000, @0, -288, Dxl3, false);
	Zoom("@�G�w�i", 3000, 500, 500, Dxl3, false);
	Fade("@�G�F��", 3000, 0, Dxl3, true);
	Delete("@�G�F��");
	Delete("@�G�w�i");

{	Fw("fw���t_�ʏ�_sigh");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000050a01">
"It gives off a really bad feeling&.&.&. Some weird feeling
 like you're in someone's house while they're there or
 something&."


{	St("C",740, @0,@0,"bu�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm50/2000060a06">
"Aoba&, watch out&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000070a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//���G�̎p��������B�w���w���������Ŋ��҂ƃI�[�����C�g�̓R�E�����H
//�@�f�ނ�������̃}�Y���Ȃ�Ȃ�ł������ł��B

	CreateSE("SE01","se����_��_�R�E������01");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	CreateTextureEX("�G��", 1110, -550, -500, "cg/ev/l/ev900���C���ΐ푓�tVS���Ŏ�_�A�b�v_l.jpg");
	Move("�G��", 2000, @0, -140, DxlAuto, false);
	Fade("�G��", 2000, 1000, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000080a01">
"He's the drunk from before&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000090a01">
"Which means&, he's the one who brought me here&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm011",0,450,true);//�d�]�o�g���c

//���o�����F�u�X�v�܂��́u�Łv�i���q�j
//���G�̍U���B�u���v�̎��Z�b�g�ŉ΂̋ʂ݂����Ȃ̂����e���ł���B
//���Z�b�g���Ă鎚�͑S�̓I�ɓK���ł��B

	CreateSE("SE01","se�퓬_�Ռ�_�X��01");
	CreateTextureEX("�G�����ōU��", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	CreateTextureEXadd("�G�����ōU����", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	Rotate("�G�����ōU��*", 0, @0, @0, -90, null,true);
	Zoom("�G�����ōU��*", 0, 7000, 7000, null, true);
	SetBlur("�G�����ōU��", true, 3, 500, 60, false);

	CreateMovieEX("�G������", 3990, Center, Middle, true, true, "dx/mv0003�W����01_��.ngs");
	DrawTransition("�G������", 1, 0, 300, 200, null, "cg/data/slide_05_00_0.png", true);
	Rotate("�G������", 0, @0, @0, -15, null,true);
	Zoom("�G������", 0, 3000, 3000, null, true);

	SetVolumeEX("SE*", 150, 0, null);

	EffectTxtinA("������","�X");
	EffectTxtinB("������","�X");

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreateSE("SE02L","se����_���]�^���[_�n��01L");
	CreatePlainSP("�G��", 2000);
	Delete("�G��");
	SetBlur("�G��", true, 3, 500, 60, false);
	Zoom("�G��", 200, 2000, 2000, Axl3, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02L",0,500,0,2000,null,true);
	//MoveFFP1("@�G�����ōU��",110);
	Shake_LoopFree("@�G�����ōU��",4,10,4,10,1000);
	Fade("�G�����ōU��*", 0, 1000, null, true);
	Zoom("�G�����ōU��*", 200, 1100, 2200, Dxl3, false);
	Fade("�G������", 200, 500, null, false);
	Fade("�G��", 100, 0, null, false);
	Wait(200);
	Fade("�G�����ōU����", 200, 0, null, true);
	Delete("�G��");
	Delete("�G�����ōU����");

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0027]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000100a01">
"Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_hard",1700,"fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000110a01">
"Uh&.&.&. Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTxtinEffectS(3000,"�@","��");

	Shake_LoopFreeDelete();

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);
	CreateSE("SE01","se�퓬_����_������01");
	CreateTextureEX("�G���@�w�i", 2110, -512, -190, "cg/ev/ev950�@�o�g���ėp�h��a.jpg");

	CreateTextureEX("�G���@�w�i����", 2110, -230,-140, "cg/ev/ev950�@�o�g���ėp�h��a_����.jpg");
	CreateTextureEXadd("�G���@�w�i���ʌ�", 2110, -230,-140, "cg/ev/ev950�@�o�g���ėp�h��a_����.jpg");
	SetVertex("�G���@�w�i����*", right, middle);
	Zoom("�G���@�w�i����*", 0, 1200, 1200, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("�G�����ōU��", 600, 5500, 5500, Dxl3, false);
	Fade("�G������", 800, 0, DxlAuto, false);

//���@�ɃV�[���h���点�Ėh�䂷��B�΂̋ʂ͒e����đ��̕����֔��ł����B

	BezierMove("�G���@�w�i", 600, (@0,@0){-340,-190}{-250,-180}(-230,-140), Dxl3, false);
	Fade("�G���@�w�i", 600, 1000, null, true);

	Wait(100);

	SetVolumeEX("SE02L", 200, 0, null);
	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se����_�K���X_�����04");
	MusicStart("SE03",0,1000,0,2000,null,false);

	$�_���[�W�q=50;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

	Fade("�G���@�w�i����*", 0, 1000, null, true);
	Zoom("�G���@�w�i����*", 10000, 2000, 2000, null, false);
	Wait(50);
	Fade("�G���@�w�i����", 500, 0, null, false);
	Fade("�G���@�w�i���ʌ�", 500, 0, Dxl3, true);

	RMDControlOutR(0);

	Wait(500);

//�����f�ސ�ǂ�
	CreateColorEX("�G�@�����M��", 4000, "000000");

	//CreateTextureEX("�G�@�����M", 4000, -130, Middle, "cg/ev/ev950�@�o�g���ėp�U��_���ʌ��M.png");
	//CreateTextureEXadd("�G�@�����M��", 4000, -130, Middle, "cg/ev/ev950�@�o�g���ėp�U��_���ʌ��M.png");
	CreateTextureEX("�G�@�����M", 4000, 0, Middle, "cg/data/slide_06_00_0.png");
	CreateTextureEXadd("�G�@�����M��", 4000, 0, Middle, "cg/data/slide_06_00_0.png");
	Zoom("�G�@�����M*", 0, 150, 1200, null, true);


	CreateTextureEX("�G�@�����w�i", 2110, Center, Middle, "cg/ev/ev950�@�o�g���ėp�U��a_�w�i.jpg");
	CreateTextureEX("�G�@����", 2110, Center, Middle, "cg/ev/l/ev950�@�o�g���ėp�U��a_�l���@_l.png");
	CreateColorEX("�G�F������", 5000, "FFFFFF");

//�����f�ސ�ǂ݂����܂Ł�����

	CreateTextureEX("�G���@�ːi", 2210, 687, -1226, "cg/ev/l/ev950�@�o�g���ėp�ːia_l.jpg");
	Zoom("�G���@�ːi", 0, 2000, 2000, null, true);
	SetBlur("�G���@�ːi", true, 3, 500, 60, false);

	$�_���[�W�k=0;
	$�������҂g�o=$�������҂g�o-$�_���[�W�k;
	RMDControlInL(0,$�������҂g�o);

	CreateSE("SE04","se�퓬_����_������02");
	MusicStart("SE04",0,700,0,1000,null,false);
	Move("�G���@�w�i", 300, -1356, 755, Axl3, false);
	Zoom("�G���@�w�i", 300, 5000, 5000, Axl3, true);

	Fade("�G���@�ːi", 200, 1000, null, false);
	Delete("�G���@�w�i*");

	Move("�G���@�ːi", 200, -650, -840, Dxl3, false);
	Zoom("�G���@�ːi", 200, 500, 500, Dxl3, true);

	//SetBlur("�G���@�ːi", false, 3, 500, 60, false);
	MoveFFP1("@�G���@�ːi",900);

	EffectTxtinS(700,"�@","��");

//�����t�̍U���B�u��v�Z�b�g�B�@�̘r���璷���n������яo���A�؂荞�݂ɍs������B�G�I�[�����C�g���������Ŗh��B�K���K���b�ĂȂ��Ę@�̐n�����؂�􂭁B

	CreateColorEX("�G�F��", 3000, "000000");

	MoveFFP1stop();
	SetBlur("�G���@�ːi", true, 3, 500, 60, false);
	Zoom("�G���@�ːi", 400, 5000, 5000, Dxl3, false);
	Fade("�G�F��", 300, 1000, null, true);
	Delete("�G���@�ːi*");

	Zoom("�G�@����", 8000, 800, 800, null, false);

	CreateSE("SE05","se�퓬_�@_����01");
	MusicStart("SE05",0,700,0,1000,null,false);
	Fade("�G�@�����M*", 0, 1000, null, true);
	DrawTransition("�G�@�����M*", 80, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Wait(300);

	CreatePlainSP("�G��", 5000);

	Fade("�G�@����", 0, 1000, null, true);
	Fade("�G�@�����w�i", 0, 1000, null, true);

	CreateSE("SE05a","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE05a",0,700,0,1000,null,false);
	Fade("�G�F������", 0, 1000, null, true);
	Wait(30);
	Delete("�G�@�����M*");
	Fade("�G�@�����M��", 0, 1000, null, true);
	Zoom("�G��", 0, 1100, 1100, null, true);
	FadeFFR3("@�G��", 0,1000, 50, 0, 0, 30,null, true);
	Delete("�G�@�����M��");
	Fade("�G��", 150, 0, null, false);
	Fade("�G�F������", 100, 0, null, false);
	DrawTransition("�G�F��", 100, 900, 800, 10, null, "cg/data/slide_06_00_0.png", true);
	DrawTransition("�G�F��", 6000, 800, 500, 10, null, "cg/data/slide_06_00_0.png", false);

	Wait(1000);

	Delete("�G��");
	CreateSE("SE06","se����_�K���X_�����01");
	MusicStart("SE06",0,700,0,2000,null,false);
	Fade("�G�F������", 300, 1000, Axl3, true);

	$�_���[�W�k=480;
	$�������҂g�o=$�������҂g�o-$�_���[�W�k;
	RMDControlInL(1000,$�������҂g�o);
	RMDControlOutL(1000);

	Wait(500);

	OnBG(10,"bg201031_0_���C�����Ŏ�");
	FadeBG(0,true);

	Delete("�G�F��");
	Delete("�G�@����*");
	Delete("�G������*");
	FadeDelete("�G�F������", 2000, null, true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000120a01">
"Looks like it all worked out&.&.&."

{	Fw("fw���t_�ʏ�_smile");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000130a01">
"Anyway&, wasn't that a little too easy?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���@�����t�̌��ɖ߂��Ă���B
	CreateSE("SE01","se�퓬_����_������01");
	CreateTextureEX("�G��", 1110, -295, 0, "cg/ev/ev900���C���ΐ푓�tVS���Ŏ�.jpg");
	Zoom("�G��", 1, 2000, 2000, null, true);
	SetBlur("�G��", true, 3, 300, 80, false);

	MusicStart("SE01",0,700,0,1500,null,false);
	Zoom("�G��", 500, 1000, 1000, Dxl3, false);
	Move("�G��", 500, 0, 0, Dxl3, false);
	Fade("�G��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm50/2000140a06">
"Aoba&, instructions&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000150a01">
"Next&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G��@��", 1120, -860, -270, "cg/ev/l/ev900���C���ΐ푓�tVS���Ŏ�_l.jpg");
	CreateTextureEXsub("�G��@��", 1120, -860, -270, "cg/ev/l/ev900���C���ΐ푓�tVS���Ŏ�_l.jpg");
	Request("�G��@��", Smoothing);
	Zoom("�G��@��", 0, 800, 800, null, true);
	SetBlur("�G��@��", true, 3, 300, 60, false);

	CreateSE("SE00","se�[��_����_�h��02");
	MusicStart("SE00",0,1200,0,1000,null,false);
	Zoom("�G��@��*", 0, 1500, 1500, Dxl3, false);
	Move("�G��@��*", 0, -910, -134, null, true);
	FadeFF3("�G��@��*", 0,1000, 100, 0, 0,null, true);
	FadeDelete("�G��@��", 200, null, false);

//���ŎҕX���F�O��`
	CreateSE("SE01","se�퓬_�Ռ�_�X��01");
	CreateTextureEX("�G�����ōU��", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	SetBlur("�G�����ōU��", true, 3, 500, 60, false);
	CreateTextureEXadd("�G�����ōU����", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	Zoom("�G�����ōU��*", 0, 2000, 2000, null, true);
	Rotate("�G�����ōU��*", 0, @0, 180, @0, null,true);

	CreateTextureEX("�G���@�h��", 2110, -540, -560, "cg/ev/l/ev950�@�o�g���ėp�h��a_l.jpg");
	Request("�G���@�h��", Smoothing);
	Rotate("�G���@�h��", 0, @0, @0, -110, null,true);
//���ŎҕX���F�O��`�����܂Ł�����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm50/2000160a06">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("�G��@��");
	Delete("�G��");

	CreateSE("SE00","se�퓬_����_����01.ogg");
	MusicStart("SE00",0,700,0,900,null,false);
	Rotate("�G��@��", 600, @0, @0, -30, null,false);
	Move("�G��@��", 200, -1070, -380, Dxl3, false);

	Wait(190);

//���@�������ɋC�t���ĉ��ɔ�т̂��B���A����x���B
//�@�������e�����΂̋ʐ������߂��Ă��Ę@���P���B
//�@�΂̋ʂ̂P�e���@�̑��ɓ�����B

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�����ōU��*", 0, 1000, null, true);
	Zoom("�G�����ōU��*", 200, 1100, 1100, Dxl3, false);
	Fade("�G��", 100, 0, null, false);
	Wait(200);
	Delete("�G��@��");
	Fade("�G�����ōU����", 200, 0, null, true);

	Wait(100);

	$�_���[�W�q=650;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

	CreateSE("SE01b","se�퓬_����_������01");
	MusicStart("SE01b",0,700,0,2000,null,false);
	Move("�G���@�h��", 10000, -660, -660, null, false);
	Fade("�G���@�h��", 200, 1000, null, true);

	Wait(100);

	SetBlur("�G���@�h��", true, 3, 500, 60, false);
	Zoom("�G���@�h��", 300, 5000, 5000, null, false);

	Wait(200);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE02",0,1000,0,1500,null,false);
	CreateColorSP("�G�F��", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	Delete("");
	Delete("�G������*");
	Delete("�G���@�h��");
	BGPlainShake(50,500,0,20,0,0,1000,Dxl3,false);

	FadeDelete("�G�F��", 100, null, true);

//�@�@�A�r���r�����đS�g��Ⴢꂽ�݂����ɂȂ�B
//�@�_���[�W�̂��ɘ@�̏Ռ��̎󂯕����傫�������B�i�o�O������\���ł���Ƃ����ȁ[�j

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000170a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	St("C",740, @0,@0,"st�@_�ʏ�_pain");
	Position($C_��, $x1, $y1);
	CreateStencil("�G�g",0,$x1, $y1,128,"cg/st/st�@_�ʏ�_normal.png",false);
	SetAlias("�G�g","�G�g");
	CreateTextureEXover("�G�g/�G�w�i", 800, -380, -450, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	DrawTransition("@�G�g/�G�w�i", 0, 0, 0, 0, null, "cg/data/mosaic_01_00_0.png", true);

	CreateSE("PSE01","se�[��_����_�Ή�01");
	MusicStartSet("PSE01",1000,0,2000,null,false);

	CreateProcessEX("�v���Z�X", "Procdm2020_vs_02Act");
	Request("�v���Z�X", Start);

	FadeSt("C",200,true);
	St("C",740, @0,@0,"st�@_�ʏ�_normal");
	FadeStPro("C", 2000, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text9999]
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm50/2000180a06">
"&.&.&.I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Request("�v���Z�X", Stop);
	if($Procdm2020_vs_02Act==true){
	}else{
	FadeDelete("�G�g", 100, null, false);
	}
	Delete("�v���Z�X");

//���_���[�W���l���\�������B������Ƃ�������B
	$�_���[�W�q=50;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(2000,$�����t�g�o);
	RMDControlOutR(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000190a01">
"Sorry&, I wasn't paying enough attention&. Let's finish
 it in one blow and get out of here&."

{	DeleteFw();}
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm50/2000200a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���u�_�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă���B
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 200, 1000, null, true);

	Delete("�G��*");
	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");
	SetBlur("�b", true, 3, 500, 200, false);

	CreateTextureSP("�b/�G��@", 0, -800, -150, "cg/ev/l/ev950�@�A���픭��_l.jpg");
	Request("�b/�G��@", Smoothing);
	Position("�b/�G��@", $x1, $y1);
	CreateTextureEXadd("�b/�G��@���ʈ�", 0, $x1, $y1, "cg/ev/x/ev950�@�A���픭��_���ʎ��da.png");
	CreateTextureEXadd("�b/�G��@���ʓ�", 0, $x1, $y1, "cg/ev/x/ev950�@�A���픭��_���ʎ��db.png");
	CreateTextureEXadd("�b/�G��@���ʎO", 0, $x1, $y1, "cg/ev/x/ev950�@�A���픭��_���ʎ��dc.png");

	CreateTxtinEffectS(2000,"�@","�_");

	Move("�b/�G��@*", 600, -590, -150, Dxl2, false);

	Fade("�G�F��", 200, 0, null, true);

	EffectTxtinS(700,"�@","�_");
	Shake("�b/�G��@*", 600000, -1, 1, 0, 0, 1000, null, false);

	CreateSE("SE11","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE11",0,700,0,500,null,false);
	CreateSE("SE11L","se�[��_����_�ѓd02");
	MusicStart("SE11L",1000,700,0,1000,Axl3,true);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	SpiralSparc3("�v���Z�X","@�b/�G��@���ʈ�","@�b/�G��@���ʓ�","@�b/�G��@���ʎO");
	MoveCamera("�b", 600, -50, 110, 550, Dxl3, false);
	FadeDelete("�G�F��", 800, null, true);

	Wait(1000);
	WaitKey(1000);

	CreateColorEX("�G�F��", 10000, "FFFFFF");

	SetVolumeEX("@dm*", 600, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE31","se�퓬_�@_����01");
	MusicStart("SE31",0,1000,0,1200,null,false);
	MoveCamera("�b", 300, -300, @0, 2000, Dxl3, false);
	Fade("�G�F��", 300, 1000, null, true);

	CreateSE("SE32","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE32",0,1000,0,1200,null,false);
	CreateSE("SE33","se�퓬_�Ռ�_�j��01");
	MusicStart("SE33",0,700,0,1000,null,false);

//�@�G�ɓˌ�����@�B�G�I�[�����C�g���������𒣂邪�A�Ȃ�Ȃ����j�B
//�@���t�����̏����B�Q�[���I���B

	Wait(2000);

	RMDControlInL(500,0);
	RMDControlOutL(1000);
	Wait(3000);

//���������E�֖߂��Ă���B

	ClearFadeAll(2000, true);
	Wait(2000);

//�����t�@�C��["dm5030.nss"]

}
