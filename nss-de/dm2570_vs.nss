//<continuation number="190">
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


scene dm2570_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";


	CreateTxtinEffect("�@",4000);
	CreateTxtinEffect("�m�C�Y",4000);

	//RMScaningSet();
	//RMScaningCSet("���t");
	//RMScaningCSet("�m�C�Y");
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
	#ev900���C���ΐ푓�tVS�m�C�Y�ʏ�=true;
	#ev950�@�o�g���ėp�U��a=true;


	//���g�p�������o�֘A�̑f�ނ��폜
	//RMScaningDelete();
	RMDControlDelete();
	EffectTxtinDelete();
	TiesMovieDelete();


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2580.nss";

}


scene dm2570_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
/*
	RMDControlLDefault($�m�C�Y���X�g�g�o);//5000
	$���m�C�Y���X�g�g�o=$�m�C�Y���X�g�g�o;
	RMDControlRDefault($���t�g�o);//5000
	$�����t�g�o=$���t�g�o;

	CreateProcessEX("LHP", "TestLHP");
	Request("LHP", Lock);
	Request("LHP", Start);

	CreateProcessEX("RHP", "TestRHP");
	Request("RHP", Lock);
	Request("RHP", Start);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);
	CreateColorSP("�G�F��", 5000, "FFFFFF");

	CreateTextureSP("�G�w�i", 10, Center, 0, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");

	CreateSE("SE00","se�[��_���C��_�����G���J�E���g01");
	MusicStart("SE00",0,700,0,1000,null,false);

	FadeDelete("��w�i", 1000, Axl3, true);
	Wait(1000);

	CreateSE("SE01","se�[��_���C��_�����g01L");
	MusicStart("SE01",4000,700,0,500,null,true);

	TiesMovieSet("�]�����C��a",2000);
	TiesMovieStart();
	Wait(16);
	TiesMovieNEXT();

	Fade("�G�F��", 4000, 0, Dxl3, true);

//�����C����Ԃ֔�ԁB

	Wait(2000);

	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE02","se�[��_���__����01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("�G�F��", 1000, 1000, AxlAuto, true);
	Wait(500);
	TiesMovieDelete();
	FadeDelete("�G�F��", 4000, DxlAuto, false);
	Wait(3500);

	Move("�G�w�i", 5000, @0, -576, DxlAuto, true);

//�����C����ԂőΛ����āA�^���Ȋ�Ō����������Ă��鑓�t�ƃm�C�Y�B

{	Fw("fw���t_�ʏ�_serious");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�����ʒu�̈�ەt���A�m�C�Y�ڐ��ł͂�߂Ă������v

	CreatePlainSP("�G��", 5000);

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G�w�i", 1, Center, -1350, "cg/bg/l/bg201021_0_���C���m�C�Y01_l.jpg");

	CreateTextureSP("�b/�G�������G", 200, 150, 0, "cg/bu/bu�m�C�Y_�ʏ�_cool.png");
	Request("�b/�G�������G", Smoothing);
	Zoom("�b/�G�������G", 0, 800, 800, null, true);

	CreateTextureSP("�b/�G����O���G��", 750, -218, -30, "cg/fu/fu���t_�ʏ�_cranky2h.png");
	SetShade("�b/�G����O���G��", MEDIUM);

	CreateTextureSP("�b/�G����O���G", 750, -218, -30, "cg/fu/fu���t_�ʏ�_cranky2h.png");
	SetShade("�b/�G����O���G", SEMIHEAVY);

	MoveCamera("�b", 0, 512, @0, @0, AxlDxl, true);


	FadeDelete("�G��", 2000, null, false);
	Wait(250);
	Move("�b/�G�������G", 8000, 300, @0, DxlAuto, false);
	MoveCamera("�b", 8000, 0, 0, @0, DxlAuto, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000020a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 10000);

	Position("@�b/�G�������G", $x1, $y1);
	CreateTextureSP("�b/�G�������G", 200, $x1, $y1, "cg/bu/bu�m�C�Y_�ʏ�_smile.png");
	Request("�b/�G�������G", Smoothing);
	Zoom("�b/�G�������G", 0, 800, 800, null, true);

	//FadeDelete("�G��", 200, null, true);

	CreateProcessEX("�v���Z�X", "Proc_dm2570_vs_01Act");
	Request("�v���Z�X", Start);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000030a03">
"&.&.&.It's finally time&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	if($Proc_dm2570_vs_01Act==true){
	}else{
	Request("�v���Z�X", Stop);
	Delete("@�G��");
	$Proc_dm2570_vs_01Act=true;
	}
	Delete("�v���Z�X");

{	Fw("fw���t_�ʏ�_serious");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000040a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�����ʒu�̈�ەt�������܂Łv

	CreateTextureSP("�G�w�i", 0, Center, InBottom, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");
	St("C",0, @0,@0,"st�m�C�Y_�ʏ�_smile");
	FadeSt("C",0,true);

	MoveCamera("�b", 3000, @0, @0, 500, DxlAuto, false);
	Fade("@�b*", 600, 0, null, true);

	PrintGO("��w�i", 10000);
	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_smile");
	FadeSt("C",0,true);
	FadeDelete("��w�i", 0, null, true);

{	Fw("fw���t_�ʏ�_normal2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000050a01">
"There was that whole business with Platinum Jail&, and then your wounds had to heal&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000060a03">
"I thought you were still gonna be half-baked about it&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000070a01">
"Hell no&. I made sure to remember&. We promised&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000080a01">
"But I'll tell you one thing&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000090a03">
"Sure&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000100a01">
"I won't use Scrap on you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_serious");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000110a01">
"I don't even know how to&. Is that okay?"

{	DeleteFw();}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000120a03">
"&.&.&.Yeah&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000130a03">
"I didn't believe at all that I lost&, and planned on
 crushing you completely afterwards&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000140a03">
"But now it's different&. I just want to fight you&.
 Win or lose&, all-out&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal4");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000150a03">
"Rhyme&.&.&. is the only thing that makes me feel alive&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000160a03">
"So&, Aoba&. Fight me&. With all you got&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000170a01">
"&.&.&.Sure&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("�G��", 1100, 1737, 573, "cg/ev/ev900���C���ΐ푓�tVS�m�C�Y�ʏ�.jpg");
	Zoom("�G��", 0, 5000, 5000, null, true);
	SetBlur("�G��", true, 3, 500, 60, false);
	Move("�G��", 1200, 0, 0, DxlAuto, false);
	Zoom("�G��", 1200, 1000, 1000, DxlAuto, false);
	Fade("�G��", 600, 1000, null, true);

	Wait(500);

	CreateSE("SE02","se�[��_���C��_�A���[�g01");
	MusicStart("SE02",0,700,0,1000,null,false);

	SoundPlay("@dm008",0,450,true);//����
	SetStream("@dm008*", 3300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000180a06">
"Aoba&, instructions&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����C���J�n�B
//�����t�搧�B�u���v�Z�b�g�B�@���m�C�Y�Ɍ������Ă������ł��B
//�@�m�C�Y�A�h��̍\�������B

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000190a01">
"&.&.&.Let's go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,600,null,false);

//���@�A�m�C�Y�֌������ă_�b�V���B

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, false);
	Zoom("�G��", 600, 8000, 8000, Axl1, false);
	Move("�G��", 600, -600, 576, Axl1, true);

	Delete("�G��");

//�������u���o�܂Ƃ߁F�@�ːi�v
//��`
	CreateMovieEX("�G������", 2100, Center, Middle, true, true, "dx/mv0003�W����04_��&.ngs");
	Rotate("�G������", 0, @0, @0, -11, null,true);
	DrawTransition("�G������", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	Zoom("�G������", 0, 3000, 3000, null, true);
	Fade("�G������", 0, 500, null, true);

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");
	MoveCamera("�b", 0, @0, @0, 5000, null, true);

	CreateTextureSP("�b/�G���@�ːi�w�i", 0, -1110, -1220, "cg/ev/l/ev950�@�o�g���ėp�ːia_�w�i_l.jpg");
	CreateTextureSP("�b/�G���@�ːi��", 500, 800, -500, "cg/ev/ev950�@�o�g���ėp�ːia_�l���@.png");
	Position("@�b/�G���@�ːi��", $x1, $y1);
	CreateTextureEX("�b/�G���@�ːi�ꍕ", 500, $x1, $y1, "cg/ev/x/ev950�@�o�g���ėp�ːia_�l���@_xb.png");
	Fade("�b/�G���@�ːi�ꍕ", 0, 800, null, true);

	CreateTextureEXadd("�b/�G���@�ːi���", 500, $x1, $y1, "cg/ev/ev950�@�o�g���ėp�ːia_�l���@.png");

	Zoom("�b/�G���@�ːi��*", 0, 10, 10, null, true);

	CreateProcessEX("�v���Z�X", "Proc_dm0200_vs_02Act");

//�J�n
	MoveCamera("�b", 300, @0, @0, 1250, Dxl2, false);
	Move("�b/�G���@�ːi�w�i", 80000, 0, -1450, null, false);
	FadeDelete("�G�F��", 400, null, true);
	Request("�v���Z�X", Start);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fade("�b/�G���@�ːi�ꍕ", 3600, 0, Dxl1, false);
	Position("@�b/�G���@�ːi��", $x1, $y1);
	BezierMove("�b/�G���@�ːi��*", 900, ($x1,$y1){200,-180}{0,-180}(-20, -240), Dxl2, false);
	Zoom("�b/�G���@�ːi��*", 1000, 250, 250, Dxl2, true);

	Wait(300);

//���t��J�b�g�C����`
	CreateTextureEX("�G����", 4990, Center, Middle, "cg/mask/ci�X���b�V��_02_00z.png");
	CreateMaskEX("�G��", 0, Center, Middle, "cg/mask/ci�X���b�V��_02_00.png", false);
	CreateColorSP("�G��/�G�F��", 5000, "FFFFFF");
	CreateTextureSPsub("�G��/�G�����t�w�i", 2100, Center, Middle, "cg/ef/efbg����02.jpg");
	CreateTextureSP("�G��/�G�����t��", 2100, 350, 20, "cg/fu/fu���t_�ʏ�_angry.png");
	SetVertex("�G��/�G�����t��", 460, 260);
	Zoom("�G��/�G�����t��", 0, 1500, 1500, null, true);
	Request("�G��/�G�����t��", Smoothing);
	SetBlur("�G��/�G�����t��", true, 2, 500, 80, false);

	Zoom("�G��", 0, 5000, 0, null, true);
	Rotate("�G��", 0, @0, @0, -270, null,true);
	Zoom("�G����", 0, 5000, 0, null, true);
	Rotate("�G����", 0, @0, @0, -270, null,true);


//���t��J�b�g�C���J�n
	Zoom("�G��", 400, 1000, 600, Dxl3, false);
	Rotate("�G��", 400, @0, @0, 0, Dxl3,false);
	Zoom("�G����", 400, 1000, 600, Dxl3, false);
	Rotate("�G����", 400, @0, @0, 0, Dxl3,false);
	Wait(200);
	Fade("�G����", 200, 1000, null, false);
	Fade("�G��/�G�F��", 200, 0, null, true);

	Wait(100);

//�������u���F�Z���t��ǉ����܂����v
	CreateVOICE("���t","ex06/0000050a01");//���Z�b�g
	$SETime = RemainTime("���t")-100;
	MusicStart("���t",0,1800,0,1000,null,false);

	Zoom("�G��/�G�����t��", 300, 1950, 1950, AxlDxl, true);

	WaitKey($SETime);

	SetVolumeEX("���t", 150, 0, null);

	CreateVOICE("�@","dm55/4000170a06");//����
	$SETime = RemainTime("�@");
	MusicStart("�@",0,1800,0,1000,null,false);
	WaitKey($SETime);
	SetVolumeEX("�@", 150, 0, null);

//���t��J�b�g�C����
	Fade("�G����", 300, 0, null, false);
	Fade("�G��/�G�F��", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("�G����", 200, 1000, 0, AxlDxl, false);
	Zoom("�G��", 200, 1000, 0, AxlDxl, true);
	Delete("�G��*");

//��̓Z�b�g
	EffectTxtinA("�@","��");

	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);

//��͌��ʂɂ��@����
	Fade("�b/�G���@�ːi���", 0, 500, null, true);
	Zoom("�b/�G���@�ːi���", 0, 275, 275, null, true);

	FadeDelete("�G�F��", 70, null, false);

	EffectTxtinB("�@","��");

//�m�C�Y�A�@�̍U�����E�T�M���h�L�̏��Ŗh��B�K�L�[���I

//�m�C�Y�A���������ɏ΂��B


{	Fw("fw�m�C�Y_�ʏ�_pride");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000200a03">
"&.&.&.Yeah&. Come at me full force&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G����", 10000, "BLACK");

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,700,null,false);

//�@�F�ːi�i�s
	Move("�b/�G���@�ːi��*", 400, -200, -200, Axl2, false);
	$�@�g��=1000;
	Zoom("�b/�G���@�ːi��", 400, $�@�g��, $�@�g��, Axl2, false);
	$�@���g�嗦����=$�@�g��*1&.1;
	Zoom("�b/�G���@�ːi���", 400, $�@���g�嗦����, $�@���g�嗦����, Axl2, false);

	Wait(300);

	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�b");
	Delete("�G��*");
	Request("�v���Z�X", Stop);
	Delete("�v���Z�X");

	CreateTextureSP("�G��", 1100, 0, -288, "cg/ev/m/ev920�m�C�Y�ːia_m.jpg");
	Zoom("�G��", 0, 2500, 2500, null, true);
	SetBlur("�G��", true, 3, 500, 60, false);
	BezierMove("�G��", 800, (@0,@0){-310,-90}{-450,-30}(-440,0), Dxl2, false);
	Zoom("�G��", 800, 1000, 1000, Dxl2, false);

	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);
	Fade("�G������", 650, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000210a03">
"LOSS&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�퓬_����_������01");

	CreateColorEX("�G�F��", 5000, "000000");
	Move("�G��", 800, 0, -288, AxlDxl, false);
	Wait(100);
	Fade("�G�F��", 400, 1000, null, true);

	CreateTextureSP("�G��", 1100, -1024, 0, "cg/ev/l/ev960�E�T�M���h�L�퓬�\��_l.jpg");
	Move("�G��", 400, -160, -270, Dxl2, false);

	MusicStart("SE02",0,700,0,1500,null,false);
	DrawDelete("�G�F��", 250, 100, null, "slide_04_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000220c10">
"LOSS Set!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1200,null,false);

	Move("�G��", 300, -512, -450, Dxl2, false);
	Zoom("�G��", 300, 500, 500, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm25/7000230c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���u���v�Z�b�g�B�E�T�M���h�L�����������~�T�C���̂悤�ɂЂ��Ђ����ł���
	EffectTxtinA("�m�C�Y","��");
	EffectTxtinB("�m�C�Y","��");

//�E�T�M���h�L�ȈՓːi
	CreateTextureEX("�G���", 1120, -980, -10, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_������01");
	CreateSE("SE05","se�퓬_����_������01");

	MusicStart("SE01",0,700,0,2000,null,false);
	Fade("�G���", 0, 1000, null, true);
	FadeFFR3("�G���", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE02",0,700,0,2000,null,false);
	Move("�G���", 0, -250, -330, null, true);
	FadeFFR2("�G���", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE03",0,700,0,2000,null,false);
	Move("�G���", 0, -990, -30, null, true);
	FadeFFR("�G���", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE04",0,700,0,2000,null,false);
	Move("�G���", 0, -30, -360, null, true);
	FadeFFR3("�G���", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE05",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, -556, null, true);
	Zoom("�G���", 200, 550, 550, Dxl3, false);
	Move("�G���", 200, -512, -302, Dxl3, false);
	Wait(190);
	FadeFFR("�G���", 0,1000, 150, 0, 0, 20,null, true);

	Delete("�G��");

{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000240a01">
"Ren! Defense!"

{	Fw("fw�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000250a06">
"Understood&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G��", 2110, 0, 0, "cg/ev/m/ev950�@�o�g���ėp�h��a_m.jpg");
	CreateTextureEX("�G����ʏ�", 2110, -753, -322, "cg/ev/m/ev950�@�o�g���ėp�h��a_����_m.jpg");
	SetVertex("�G����ʏ�", 1520, 536);
	Zoom("�G����ʏ�", 0, 1250, 1250, null, false);
	CreateTextureEX("�G�����", 2110, 0, 0, "cg/ev/m/ev950�@�o�g���ėp�h��a_����_m.jpg");


//�@�A�h��V�[���h
	CreateSE("SE51","se�퓬_����_������01");
	MusicStart("SE51",0,700,0,1000,null,false);
	Zoom("�G���", 400, 2000, 2000, Dxl3, false);
	Move("�G���", 600, -2048, -1152, Axl3, false);

	Wait(400);

	Move("�G��", 800, -750, -320, Dxl3, false);
	Fade("�G��", 600, 1000, null, true);



	CreateTxtinEffectS(3900,"�@","��");
	EffectTxtinS(700,"�@","��");

	RMDControlRDefault($���t�g�o);//5000
	$�����t�g�o=$���t�g�o;
	RMDControlInR(0,$�����t�g�o);

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("�G�F��", 4900, "FFFFFF");

	Move("�G��", 0, -750, -320, null, true);
	Position("�G��", $x1, $y1);
	Move("�G�����", 0, $x1, $y1, null, true);
	Fade("�G�����", 0, 1000, null, true);

	FadeDelete("�G�F��", 1000, null, false);

	Fade("�G����ʏ�", 0, 800, null, true);
	SetBlur("�G����ʏ�", true, 3, 500, 250, false);
	Wait(100);
	Zoom("�G����ʏ�", 1000, 1000, 1000, null, false);
	Fade("�G����ʏ�", 800, 0, null, false);

	Wait(900);

	CreateSE("SE11","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE12","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE13","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE14","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE15","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE16","se�퓬_�Ō�_�q�b�g��04");

	CreateMaskEX("��", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("��", 0, 2000, 2000, null, true);

	CreateColorEXadd("�G���]", 5000, "FFFFFF");
	CreateColorEXadd("��/�G�F��", 4890, "FFFFFF");


//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	Position("�G�����", $x1, $y1);//���_���擾

//�����_���q�b�g�G�t�F�N�g00

	MusicStart("SE16",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);
	Wait(30);

	FadeFFR3("�G�����", 0,1000, 200, 0, 0, 30,null, false);
	Fade("��/�G�F��", 170, 0, null, true);

	$�_���[�W�q=150;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	Move("�G�����", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g01
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE11",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("�G�����", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	Move("�G�����", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g02
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=150;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�����", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	Move("�G�����", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g03
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=150;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�����", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	Move("�G�����", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g04
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=150;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�����", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	Move("�G�����", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g05
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE15",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=150;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);

	Wait(30);

	FadeFFR3("�G�����", 0,1000, 100, 0, 0, 30,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	Move("�G�����", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�

//�����_���q�b�g�G�t�F�N�g06
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE16",0,700,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	$�_���[�W�q=150;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);
	RMDControlOutR(1000);

	Wait(30);

	FadeFFR3("�G�����", 0,1000, 100, 0, 0, 30,null, false);
	Fade("�G�����", 400, 0, null, false);
	Fade("��/�G�F��", 100, 0, null, true);

//�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

	CreateSE("SE21","se�l��_����_�ߎC��17");
	MusicStart("SE21",0,700,0,1000,null,false);
	CreateTextureEX("�G���", 2150, -715, -330, "cg/ev/l/ev900���C���ΐ푓�tVS�m�C�Y�ʏ�_l.jpg");
	Move("�G��", 800, -870, -420, Dxl1, false);

	Move("�G���", 800, -740, -370, Dxl1, false);
	Fade("�G���", 600, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000260a01">
"&.&.&.Ren&, GLORY&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000270a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���u�_�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă���
	CreateColorEX("�G�F��", 5000, "000000");

	Move("�G���", 800, -600, @0, AxlAuto, false);
	Fade("�G�F��", 400, 1000, null, true);

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

	Fade("�G�F��", 300, 0, null, true);

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

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000280a03">
"Defense&."

{	Fw("fwAM�E�T�M���h�L_�{�N�T�[_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm25/7000290c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	RMDControlLDefault($�m�C�Y���X�g�g�o);//4000

	CreateColorEX("�G�F��", 3000, "000000");

	MoveCamera("�b", 600, -512, 110, 4000, Dxl3, true);
	MoveCamera("�b", 600, 800, 110, 4000, Axl3, false);

	Wait(500);

	$���m�C�Y���X�g�g�o=$�m�C�Y���X�g�g�o;
	$�_���[�W�k=0;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(0,$���m�C�Y���X�g�g�o);

	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�b");
	Delete("�v���Z�X");
	EffectTxtinSDelete("�@","�_");

	Wait(200);

	SetVolumeEX("SE*", 250, 0, null);

//�E�T�M��J�b�g�C����`�A�Ó]����ǂ�
	CreateTextureEX("�G����", 4990, Center, Middle, "cg/mask/ci���C��_01_00z.png");
	CreateMaskEX("�G��", 0, Center, Middle, "cg/mask/ci���C��_01_00.png", false);
	SetVertex("�G����", center, 212);
	SetVertex("�G��", center, 212);
	CreateColorSP("�G��/�G�F��", 5000, "FFFFFF");
	//CreateTextureSP("�G��/�G���E�T�M�w�i", 4100, Center, Middle, "cg/ef/efbg����02.jpg");
	CreateTextureSP("�G��/�G���E�T�M��", 4100, 150, -260, "cg/ev/l/ev960�E�T�M���h�L�퓬�\��_l.jpg");
	Request("�G��/�G���E�T�M��", Smoothing);
	//SetBlur("�G��/�G���E�T�M��", true, 2, 500, 80, false);

	Zoom("�G��", 0, 5000, 0, null, true);
	Zoom("�G����", 0, 5000, 0, null, true);
//�E�T�M��J�b�g�C����`�A�Ó]����ǂ݂����܂Ł�����

	CreateSE("SE01","se�퓬_�@_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G���@���M", 3190, -302, -330, "cg/ev/ev950�@�o�g���ėp�U��a_���ʌ��M.png");
	Position("@�G���@���M", $x1, $y1);
	FadeFFR("�G���@���M", 0,1000, 200, 0, 0, 20,null, false);
	DrawTransition("�G���@���M", 200, 0, 1000, 100, Dxl3, "cg/data/slide_03_01_0.png", true);
	Request("�G���@���M", AddRender);
	CreateTextureSP("�G���@", 2111, $x1, $y1, "cg/ev/ev950�@�o�g���ėp�U��a_�l���@.png");
	CreateTextureSP("�G���@�w�i", 2110, $x1, $y1, "cg/ev/ev950�@�o�g���ėp�U��a_�w�i.jpg");

	Move("�G���@", 13000, -250, @0, DxlAuto, false);
	Move("�G���@�w�i", 13000, -250, @0, Dxl1, false);

	DrawDelete("�G�F��", 200, 100, null, "slide_08_00_0", true);
	FadeDelete("�G���@���M", 300, null, false);

//�E�T�M���h�L�̃V�[���h�Ŗh��B
//�@�J�E���^�[�����B�i�R�O���̊m���Ŕ�������Ƃ����������^�C�v�j

//�E�T�M��J�b�g�C����`�͏��

//�E�T�M��J�b�g�C���J�n
	Move("�G��/�G���E�T�M��", 600, -150, @0, Dxl2, false);
	Zoom("�G��", 400, 1000, 800, Dxl3, false);
	Zoom("�G����", 400, 1000, 800, Dxl3, false);
	Wait(200);

	Move("�G��/�G���E�T�M��", 10000, -170, @0, null, false);

	Fade("�G����", 200, 1000, null, false);
	Fade("�G��/�G�F��", 200, 0, null, true);

	Wait(100);


	CreateVOICE("�E�T�M���h�L���[�_�[","dm25/7000300c10");//�u�����񂽁[�����I�v
	$SETime = RemainTime("�E�T�M���h�L���[�_�[")-100;
	MusicStart("�E�T�M���h�L���[�_�[",0,1800,0,1000,null,false);

	Zoom("�G��/�G�����t��", 300, 1950, 1950, AxlDxl, true);

	WaitKey($SETime);

	RMDControlOutL(0);

//�E�T�M��J�b�g�C����
	Fade("�G����", 300, 0, null, false);
	Fade("�G��/�G�F��", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("�G����", 200, 1000, 0, AxlDxl, false);
	Zoom("�G��", 200, 1000, 0, AxlDxl, true);
	Delete("�G��*");

	SetVolumeEX("�E�T�M���h�L���[�_�[", 150, 0, null);

/*
{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000300c10">
"Counter attack!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//�E�T�M���h�L���ۂ��ۂ��ۂ����Ƙ@���U���B
//�_���[�W���B

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g����01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreateColorSPadd("�G�F��", 9990, "FFFFFF");
	Fade("�G�F��", 0, 1000, Axl3, true);
	Wait(30);
	Zoom("�G���@", 0, 2000, 2000, null, true);
	Shake("�G���@", 100, 4, 2, 0, 0, 1000, null, false);
	Shake("�G���@�w�i", 100, 4, 2, 0, 0, 1000, null, false);
	Fade("�G�F��", 70, 0, Axl3, true);

	Fade("�G�F��", 0, 1000, Axl3, true);
	Wait(30);
	Shake("�G���@", 100, -4, 2, 0, 0, 1000, null, false);
	Shake("�G���@�w�i", 100, -4, 2, 0, 0, 1000, null, false);
	Fade("�G�F��", 70, 0, Axl3, true);

	Fade("�G�F��", 0, 1000, Axl3, true);
	Wait(30);
	Shake("�G���@", 100, 4, 2, 0, 0, 1000, null, false);
	Shake("�G���@�w�i", 100, 4, 2, 0, 0, 1000, null, false);
	Fade("�G�F��", 70, 0, Axl3, true);

	Fade("�G�F��", 0, 1000, Axl3, true);
	Wait(30);
	Shake("�G���@", 100, -4, 2, 0, 0, 1000, null, false);
	Shake("�G���@�w�i", 100, -4, 2, 0, 0, 1000, null, false);
	Fade("�G�F��", 70, 0, Axl3, true);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("�G�F��", 300, 1000, Axl3, true);

	Delete("�G��*");
	Delete("�G��*");

	$�_���[�W�q=500;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);
	RMDControlOutR(1000);

	CreateSE("SE91","se�퓬_����_������01");
	MusicStart("SE91",0,700,0,300,null,false);

	CreateTextureSP("�G������w�i", 1000, Center, 0, "cg/bg/l/bg201021_0_���C���m�C�Y01_l.jpg");
	SetBlur("�G������w�i", true, 3, 500, 30, false);
	CreateSurfaceEX("�G���ʃT�t", 5000,1000,"@�G������w�i");
	Fade("�G���ʃT�t", 0, 1000, null, true);
	Rotate("�G���ʃT�t", 0, @0, @0, 180, null,true);

	Zoom("�G���ʃT�t", 2800, 2000, 2000, DxlAxl, false);
	Move("�G������w�i", 3000, @0, -1728, DxlAxl, false);
	FadeDelete("�G�F��", 300, null, true);

	Wait(2500);

	SetVolumeEX("SE91", 150, 0, null);
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1500,null,false);
	Rotate("�G���ʃT�t", 300, @0, @0, 0, Dxl3,true);
	Shake("�G���ʃT�t", 200, 0, 60, 0, 0, 1000, null, false);

	Wait(50);

	CreateSE("SE02","se�l��_����_���02");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("�G���ʃT�t", 400, 1000, 1000, AxlDxl, true);
	Shake("�G���ʃT�t", 200, 0, 20, 0, 0, 1000, null, false);

{	Fw("fw�@_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000310a06">
"&.&.&.!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000320a01">
"Counter&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G������", 5110, Center, -300, "cg/ev/l/ev900���C���ΐ푓�tVS�m�C�Y�ʏ�_�A�b�v_l.jpg");
	Move("�G������", 800, @0, -190, Dxl1, false);
	Move("�G������w�i", 800, @0, -1618, Dxl1, false);
	Fade("�G������", 600, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000330a03">
"Usually you can add mods&. Your Allmate is just vanilla&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000340a03">
"In two turns&, DEMOLITION upgrades into DESTRUCTION&."

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000350c10">
"DEMOLITION/DESTRUCTION set!"

{	Fw("fwAM�E�T�M���h�L_�{�N�T�[_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm25/7000360c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���m�C�Y�̍U���A�u���v�u��v�Z�b�g�B
//�u���v�̋��͔ŁB
//�E�T�M���h�L�������~�T�C���ɂȂ��Ĕ��ł���B

//�������u���F�E�T�M�����ːi��`�v
	PrintGO("��w�i", 20000);
	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");
	CreateTextureSP("�b/�G���w�i", -500, Center, Middle, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�w�i.jpg");
	Zoom("�b/�G���w�i", 0, 1650, 1650, null, true);

//�������u���F���������������v
	CreateTextureSP("�b/�G���e�ːi�l��", 0, 360, 50, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��06.png");
	Position("�b/�G���e�ːi�l��", $x4L, $y4L);
	CreateTextureEXadd("�b/�G���e�ːi�l����", 0, $x4L, $y4L, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��06_xw����.png");
//�������u���F���������������v
	CreateTextureSP("�b/�G���e�ːi�l�E", 0, 370, 60, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��07.png");
	Position("�b/�G���e�ːi�l��", $x4R, $y4R);
	CreateTextureEXadd("�b/�G���e�ːi�l�E��", 0, $x4R, $y4R, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��07_xw����.png");

//�������u���F���������������v
	CreateTextureSP("�b/�G���e�ːi�O��", 0, 320, 30, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��04.png");
	Position("�b/�G���e�ːi�O��", $x3L, $y3L);
	CreateTextureEXadd("�b/�G���e�ːi�O����", 0, $x3L, $y3L, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��04_xw����.png");
//�������u���F���������������v
	CreateTextureSP("�b/�G���e�ːi�O�E", 0, 340, 60, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��05.png");
	Position("�b/�G���e�ːi�O�E", $x3R, $y3R);
	CreateTextureEXadd("�b/�G���e�ːi�O�E��", 0, $x3R, $y3R, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��05_xw����.png");

//�������u���F���������������v
	CreateTextureSP("�b/�G���e�ːi��", 0, 300, -40, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��02.png");
	Position("�b/�G���e�ːi��", $x2L, $y2L);
	CreateTextureEXadd("�b/�G���e�ːi�񍶌�", 0, $x2L, $y2L, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��02_xw����.png");
//�������u���F���������������v
	CreateTextureSP("�b/�G���e�ːi��E", 0, 320, 40, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��03.png");
	Position("�b/�G���e�ːi��E", $x2R, $y2R);
	CreateTextureEXadd("�b/�G���e�ːi��E��", 0, $x3R, $y3R, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��03_xw����.png");

//�������u���F���������������v
	CreateTextureSP("�b/�G���e�ːi�ꒆ", 0, 100, -170, "cg/ev/ev960�E�T�M���h�L�퓬�ːi_�l��01.png");
	Request("�b/�G���e�ːi�ꒆ", Smoothing);
	Position("�b/�G���e�ːi�ꒆ", $x1C, $y1C);
	CreateTextureEXadd("�b/�G���e�ːi�ꒆ��", 0, $x1C, $y1C, "cg/ev/x/ev960�E�T�M���h�L�퓬�ːi_�l��01_xw.png");

	Zoom("�b/�G���e�ːi*", 0, 10, 10, null, true);
	MoveCamera("�b", 0, -90, -180, 10000, null, true);

	CreateMaskEX("�G�ʈ�", 0, Center, Middle, "cg/data/zzexslide_01_00_1.png", false);
	CreateMovieSP("�G�ʈ�/�G�����ʐ�", 2990, Center, -72, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G�ʈ�/�G�����ʐ�", 0, 2600, 5000, null, true);

	CreateTxtinEffectS(2000,"�m�C�Y","��");

//�������u���F�E�T�M�����ːi��`�����܂Ł������v

	Delete("��w�i");

//�������u���F�E�T�M�����ːi�J�n�v
//�������u���F�X�M���[���Ɗ��v
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("�b/�G���e�ːi*", 400, 1000, 1000, Dxl2, false);
	Move("�b/�G���e�ːi�l��*", 400, 55, 170, Dxl2, false);
	Move("�b/�G���e�ːi�l�E*", 400, 870, 60, Dxl2, false);
	Move("�b/�G���e�ːi�O��*", 400, 105, 190, Dxl2, false);
	Move("�b/�G���e�ːi�O�E*", 400, 760, 90, Dxl2, false);
	Move("�b/�G���e�ːi��*", 400, 200, 140, Dxl2, false);
	Move("�b/�G���e�ːi��E*", 400, 620, 120, Dxl2, false);
	Move("�b/�G���e�ːi�ꒆ*", 400, 200, -40, Dxl2, false);
	MoveCamera("�b", 1000, 0, 0, 1000, Dxl2, true);

	CreateProcessEX("�v���Z�X", "Proc_dm0200_vs_02Act");
	Request("�v���Z�X", Start);

//�������u���F��͌��ʔ����v
	EffectTxtinS(700,"�m�C�Y","��");


//�������u���F�����ȊO�����̎�ɂȂ�v
	SetBlur("�b/�G���e�ːi�l����", true, 2, 300 120, false);
	SetBlur("�b/�G���e�ːi�l�E��", true, 2, 300, 120, false);
	SetBlur("�b/�G���e�ːi�O����", true, 2, 300, 120, false);
	SetBlur("�b/�G���e�ːi�O�E��", true, 2, 300, 120, false);
	SetBlur("�b/�G���e�ːi�񍶌�", true, 2, 300, 120, false);
	SetBlur("�b/�G���e�ːi��E��", true, 2, 300, 120, false);
	SetBlur("�b/�G���e�ːi�ꒆ��", true, 2, 300, 120, false);

	Zoom("�b/�G���e�ːi�l����", 0, 0, 0, null, true);
	Zoom("�b/�G���e�ːi�l�E��", 0, 0, 0, null, true);
	Zoom("�b/�G���e�ːi�O����", 0, 0, 0, null, true);
	Zoom("�b/�G���e�ːi�O�E��", 0, 0, 0, null, true);
	Zoom("�b/�G���e�ːi�񍶌�", 0, 0, 0, null, true);
	Zoom("�b/�G���e�ːi��E��", 0, 0, 0, null, true);

	CreateSE("SE02","se�[��_����_�͔ėp01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("�b/�G���e�ːi�l����", 300, 1500, 1500, Dxl2, false);
	Zoom("�b/�G���e�ːi�l�E��", 300, 1500, 1500, Dxl2, false);
	Zoom("�b/�G���e�ːi�O����", 300, 1500, 1500, Dxl2, false);
	Zoom("�b/�G���e�ːi�O�E��", 300, 1500, 1500, Dxl2, false);
	Zoom("�b/�G���e�ːi�񍶌�", 300, 1500, 1500, Dxl2, false);
	Zoom("�b/�G���e�ːi��E��", 300, 1500, 1500, Dxl2, false);

	Fade("�b/�G���e�ːi�l����", 300, 600, Dxl2, false);
	Fade("�b/�G���e�ːi�l�E��", 300, 600, Dxl2, false);
	Fade("�b/�G���e�ːi�O����", 300, 600, Dxl2, false);
	Fade("�b/�G���e�ːi�O�E��", 300, 600, Dxl2, false);
	Fade("�b/�G���e�ːi�񍶌�", 300, 600, Dxl2, false);
	Fade("�b/�G���e�ːi��E��", 300, 600, Dxl2, false);
	//Fade("�b/�G���e�ːi�ꒆ��", 0, 850, null, true);

	Proc_dm2570_vs_02all();//���̎����]

	Wait(100);

	Fade("�b/�G���e�ːi�l��", 300, 0, DxlAuto, false);
	Fade("�b/�G���e�ːi�l�E", 300, 0, DxlAuto, false);
	Fade("�b/�G���e�ːi�O��", 300, 0, DxlAuto, false);
	Fade("�b/�G���e�ːi�O�E", 300, 0, DxlAuto, false);
	Fade("�b/�G���e�ːi��", 300, 0, DxlAuto, false);
	Fade("�b/�G���e�ːi��E", 300, 0, DxlAuto, true);

	CreateSE("SE02L","se�퓬_���C��_��͐Z���ėp03");
	MusicStartSet("SE02L",700,0,1500,null,false);
	CreateSE("SE02R","se�퓬_���C��_��͐Z���ėp03");
	MusicStartSet("SE02R",700,0,1500,null,false);
	CreateSE("SE03L","se�퓬_���C��_��͐Z���ėp03");
	MusicStartSet("SE03L",700,0,1500,null,false);
	CreateSE("SE03R","se�퓬_���C��_��͐Z���ėp03");
	MusicStartSet("SE03R",700,0,1500,null,false);
	CreateSE("SE04L","se�퓬_���C��_��͐Z���ėp03");
	MusicStartSet("SE04L",700,0,1500,null,false);
	CreateSE("SE04R","se�퓬_���C��_��͐Z���ėp03");
	MusicStartSet("SE04R",700,0,1500,null,false);

//�������u���F�����ȊO�Ɏ��k���́v
	CreateName("�E�T�M���h�L�w���x�w��x����")
	SetAlias("�E�T�M���h�L�w���x�w��x����","�E�T�M���h�L�w���x�w��x����");

	CreateProcessEX("�E�T�M���h�L�w���x�w��x����/�v���Z�X�Q�k", "Proc_dm2570_vs_03alAct");
	Request("�E�T�M���h�L�w���x�w��x����/�v���Z�X�Q�k", Start);
	Wait(300);
	CreateProcessEX("�E�T�M���h�L�w���x�w��x����/�v���Z�X�Q�q", "Proc_dm2570_vs_03arAct");
	Request("�E�T�M���h�L�w���x�w��x����/�v���Z�X�Q�q", Start);

	Wait(300);

	CreateProcessEX("�E�T�M���h�L�w���x�w��x����/�v���Z�X�R�k", "Proc_dm2570_vs_03blAct");
	Request("�E�T�M���h�L�w���x�w��x����/�v���Z�X�R�k", Start);
	Wait(300);
	CreateProcessEX("�E�T�M���h�L�w���x�w��x����/�v���Z�X�R�q", "Proc_dm2570_vs_03brAct");
	Request("�E�T�M���h�L�w���x�w��x����/�v���Z�X�R�q", Start);

	Wait(300);

	CreateProcessEX("�E�T�M���h�L�w���x�w��x����/�v���Z�X�S�k", "Proc_dm2570_vs_03clAct");
	Request("�E�T�M���h�L�w���x�w��x����/�v���Z�X�S�k", Start);
	Wait(300);
	CreateProcessEX("�E�T�M���h�L�w���x�w��x����/�v���Z�X�S�q", "Proc_dm2570_vs_03crAct");
	Request("�E�T�M���h�L�w���x�w��x����/�v���Z�X�S�q", Start);

	WaitAction("�E�T�M���h�L�w���x�w��x����/�v���Z�X�S�q", null);

//�������u���F���������剻�����v
	CreateSE("SE05A","se�퓬_���C��_��͐Z���ėp03");
	MusicStart("SE05A",0,700,0,500,null,false);
	CreateSE("SE05B","se�[��_����_�͔ėp01");
	MusicStart("SE05B",0,700,0,1000,null,false);
	Zoom("�b/�G���e�ːi�ꒆ*", 800, 4000, 4000, Dxl3, false);
	Fade("�b/�G���e�ːi�ꒆ��", 900, 0, Axl3, true);

{	Fw("fw���t_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000370a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G����", 10000, "BLACK");

	CreateSE("SE01","se����_���]�^���[_�n��01aL");
	MusicStart("SE01",500,1000,0,1000,null,true);
	Move("�b/�G���e�ːi�ꒆ*", 2000, -1500, -1500, null, false);
	Zoom("�b/�G���e�ːi�ꒆ*", 2000, 20000, 20000, null, false);
	Wait(1500);

	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("�G��*");
	Delete("�G��*");
	Delete("�b");
	Delete("�v���Z�X");
	Delete("�E�T�M���h�L�w���x�w��x*");

	CreateTextureSP("�G���w�i", 10, Center, InBottom, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");
	Request("�G���w�i", Smoothing);
	CreateSurfaceEX("�G���ʃT�t", 1000,2000,"@�G���w�i");
	Fade("�G���ʃT�t", 0, 1000, null, true);
	SetBlur("�G���ʃT�t", true, 3, 500, 80, false);

	CreateColorEX("�G�F��", 5000, "FFFFFF");
	CreateTextureSP("�G���@", 1110, -600, 0, "cg/ev/m/ev950�@�o�g���ėp�h��a_m.jpg");

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);
	//RMDControlOutR(1000);

	BezierMove("�G���@", 600, (@0,@0){-900,-310}{-850,-360}(-750,-280), Dxl2, false);
	DrawDelete("�G����", 150, 100, null, "slide_03_01_0", true);
	SetVolumeEX("SE*", 2000, 0, null);

	Wait(750);

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE021","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE022","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE023","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE024","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE025A","se�퓬_�Ռ�_�h�ǌ���01");
	CreateSE("SE025B","se�l��_����_���02");

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Delete("�G���@");
	Fade("�G�F��", 500, 0, null, true);

//���@�A�h�䂷�邪�����B
//�@�K�K�K�K�b�Ƒ̗͍����B�V�[���h����B

	Zoom("�G���ʃT�t", 600, 1000, 1000, Dxl3, false);

	MusicStart("SE021",0,700,0,1200,null,false);
	$�_���[�W�q=125;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(50,$�����t�g�o);
	Shake("�G���ʃT�t", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(6);
	Fade("�G�F��", 70, 0, null, true);

	MusicStart("SE022",0,700,0,1200,null,false);
	$�_���[�W�q=125;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(50,$�����t�g�o);
	Shake("�G���ʃT�t", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(6);
	Fade("�G�F��", 70, 0, null, true);

	MusicStart("SE023",0,700,0,1200,null,false);
	$�_���[�W�q=125;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(50,$�����t�g�o);
	Shake("�G���ʃT�t", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(6);
	Fade("�G�F��", 70, 0, null, true);

	MusicStart("SE024",0,700,0,1200,null,false);
	$�_���[�W�q=125;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(50,$�����t�g�o);
	Shake("�G���ʃT�t", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(6);
	Fade("�G�F��", 70, 0, null, true);

	MusicStart("SE025A",0,1000,0,1000,null,false);
	MusicStart("SE025B",0,500,0,1500,null,false);
	$�_���[�W�q=1500;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);
	Shake("�G���ʃT�t", 1300, 3, 10, 0, 0, 1000, Dxl1, false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(100);
	Fade("�G�F��", 1000, 0, null, true);
	Delete("�G�F��");

{	Fw("fw�@_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000380a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	RMDControlOutR(1000);

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000390c10">
"Enemy's defense shield is at 91% damage!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

{	St("C",1740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000400a03">
"Ren's defense is broken&. The next hit&.&.&. is at you&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000410a01">
"&.&.&.!"

{	St("C",1740, @0,@0,"st�m�C�Y_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000420a03">
"This used to be just a game&, but not now&."

{	St("C",1740, @0,@0,"st�m�C�Y_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000430a03">
"I'll crush you into bits&."

{	St("C",1740, @0,@0,"st�m�C�Y_�ʏ�_pride");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000440a03">
"If you don't want that&.&.&. use your power&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000450a01">
"!"


{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000460a01">
"&.&.&.No&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000470a01">
"I definitely won't&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("�G���w�i", 2110, -380, -200, "cg/ev/m/ev900���C���ΐ푓�tVS�m�C�Y�ʏ�_m.jpg");
	Move("�G���w�i", 500, -410, -240, DxlAuto, false);
	Fade("�G���w�i", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0138]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000480a01">
"Ren! GLORY!"

//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000490a06">
"Understood&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�̍U���B�u�_�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă���
	CreateTxtinEffectS(4000,"�@","�_");
	EffectTxtinS(700,"�@","�_");

	Wait(100);

	CreateTextureEX("�G���@", 2110, -620, -740, "cg/ev/l/ev950�@�o�g���ėp�ːia_l.jpg");
	Zoom("�G���@", 0, 500, 500, null, true);
	SetBlur("�G���@", true, 3, 500, 80, false);

	CreateColorEX("�G����", 10000, "BLACK");

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G���@", 300, -360, -1000, Dxl3, false);
	Zoom("�G���@", 300, 1000, 1000, Dxl3, false);
	Fade("�G���@", 300, 1000, null, false);

	Wait(250);

	RMDControlLDefault($�m�C�Y���X�g�g�o);//5000
	$�_���[�W�k=0;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(0,$���m�C�Y���X�g�g�o);

	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("�G��*");
	Delete("@�G���ʃT�t");
	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/bg201023_0_���C���m�C�Y03.jpg");

	Delete("�G��");
	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);

	CreateTextureEXadd("�G�����ʌ��M��", 2110, Center, Middle, "cg/ef/efx01���M01.jpg");
	CreateTextureEXadd("�G�����ʌ��M��", 2110, Center, Middle, "cg/ef/efx01���M02.jpg");
	Rotate("�G�����ʌ��M��", 0, @0, @0, 180, null,true);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE012","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE022","se�퓬_�Ō�_�q�b�g��04");

	CreatePlainSP("�G��", 90);

	$�_���[�W�k=300;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(50,$���m�C�Y���X�g�g�o);
	MusicStart("SE01",0,700,0,800,null,false);
	MusicStart("SE012",0,700,0,1200,null,false);
	FadeFFR3("�G��", 0,1000, 150, 0, 0, 80,Axl3, false);
	Fade("�G�����ʌ��M��", 0, 1000, null, true);
	DrawTransition("�G�����ʌ��M��", 100, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);
	Fade("�G�����ʌ��M��", 200, 0, null, false);

	Move("�G��", 0, 0, 0, null, true);//���̈ʒu��

	$�_���[�W�k=300;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(50,$���m�C�Y���X�g�g�o);
	MusicStart("SE02",0,700,0,800,null,false);
	MusicStart("SE022",0,700,0,1200,null,false);
	FadeFFR2("�G��", 0,1000, 300, 0, 0, 40,Axl3, false);
	Fade("�G�����ʌ��M��", 0, 1000, null, true);
	DrawTransition("�G�����ʌ��M��", 100, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	Fade("�G�����ʌ��M��", 200, 0, null, false);

	RMDControlOutL(1000);

//�E�T�M���h�L�̃V�[���h�Ŗh�䂷��m�C�Y�B
//�P�^�[���x�݂Ȃ̂ŁA�Ăј@�̃^�[���B

{	Fw("fw���t_�ʏ�_serious");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000500a01">
"Next&, HONOR!"

{	Fw("fw�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000510a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTxtinEffectS(4000,"�@","��");
	CreateTextureEX("�G���w�i����", 1120, 0, 0, "cg/ev/l/ev950�@�A���픭��_l.jpg");

	CreateSE("SE01","se�퓬_�@_�r���퉻02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�����t�̍U���B�u��v�Z�b�g�B�@�̘r���璷���n������яo���A�؂荞�݂ɍs������B
	CreateTextureEX("�G���w�i", 1110, 0, -180, "cg/ev/l/ev950�@�A���픭��_l.jpg");
	Move("�G���w�i", 300, -620, @0, Dxl2, false);
	Fade("�G���w�i", 200, 1000, null, true);

	Position("@�G���w�i", $x1, $y1);
	Move("�G���w�i����", 0, $x1, $y1, null, true);
	Zoom("�G���w�i����", 0, 1100, 1100, null, true);

	Fade("�G���w�i����", 0, 800, null, true);
	Fade("�G���w�i����", 600, 0, null, false);
	SetBlur("�G���w�i����", true, 3, 500, 80, false);
	Zoom("�G���w�i����", 600, 1000, 1000, null, false);
	EffectTxtinS(700,"�@","��");

	Delete("�G��");

	FwMask(-314, 270, "cg/ev/ev920�m�C�Y�ːia.jpg");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000520a03">
"Defense&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("�G���m�C�Y", 2110, -512, -130, "cg/ev/l/ev920�m�C�Y�ːia_l.jpg");
	Zoom("�G���m�C�Y", 0, 800, 800, null, true);

	Zoom("�G���m�C�Y", 800, 1000, 1000, Dxl2, false);
	BezierMove("�G���m�C�Y", 800, (@0,@0){-1024,-100}{-1024,-120}(-620,-140), Dxl2, false);

	Fade("�G���m�C�Y", 300, 1000, Dxl3, true);

//�E�T�M���h�L���V�[���h�ɂȂ�B
//���C���K���K���������Ń_���[�W�B

//�������u���F�E�T�M���h�L�V�[���h�F��`�v
	CreateStencil("�G��",0,20,400,128,"cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm����.png",false);
	SetAlias("�G��","�G��");
	CreateTextureEXover("�G��/�G���͗l", 2191, Center, Middle, "cg/bg/bg201012_0_���C���p�u���b�N�t�B�[���h.jpg");

	CreateTextureEXadd("�G���m�C�Y�o���A��", 2193, 20, 400, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm����.png");
	CreateTextureEX("�G���m�C�Y�o���A", 2190, 20, 400, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm.png");

	$�_���[�W�k=0;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(0,$���m�C�Y���X�g�g�o);

//�������u���F�E�T�M���h�L�V�[���h�F����F�҂傢���Ɣ��ł���L���[�u�v
	Rotate("�G��", 60000, @0, @0, 7200, null,false);
	BezierMove("�G��", 800, (@0,@0){330,-20}{510,-20}(600,70), Dxl1, false);

	Rotate("�G���m�C�Y�o���A*", 60000, @0, @0, 7200, null,false);
	BezierMove("�G���m�C�Y�o���A*", 800, (@0,@0){330,-20}{510,-20}(600,70), Dxl1, false);
	Fade("�G���m�C�Y�o���A", 500, 1000, null, true);

	Wait(500);

//�������u���F�E�T�M���h�L�V�[���h�F����F�L���[�u���g�債�đ傫�ȏ��Ɂv
	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE02",0,700,0,1200,null,false);
	Fade("�G���m�C�Y�o���A��", 200, 1000, Axl3, false);
	Zoom("�G��", 200, 8000, 8000, Dxl3, false);
	Zoom("�G���m�C�Y�o���A*", 200, 8000, 8000, Dxl3, true);
	Delete("�G���m�C�Y�o���A");
	Fade("�G��/�G���͗l", 0, 1000, null, true);
	Fade("�G���m�C�Y�o���A��", 600, 500, null, true);

//�������u���F�E�T�M���h�L�V�[���h�F����F�U�������ɓ�����v
	CreateSE("SE03","se�퓬_�@_����01");
	MusicStart("SE03",0,1000,0,800,null,false);
	CreateSE("SE04","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE04",0,700,0,1250,null,false);

	$�_���[�W�k=680;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(1000,$���m�C�Y���X�g�g�o);

	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Shake("�G���m�C�Y", 200, 10, 2, 0, 0, 1000, Dxl1, false);
	FadeDelete("�G�F��", 70, null, true);

	RMDControlOutL(1000);

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000530c10">
"Defense shield is at 34% damage!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�E�T�M���h�L�V�[���h�F����F�U�������ɖ߂�v
	CreateSE("SE01","se����_�R�C��_�^�[�Q�b�g�W�J");
	MusicStart("SE01",0,1000,0,500,null,false);
	Fade("�G���m�C�Y�o���A��", 200, 1000, null, true);
	Delete("�G��");
	Zoom("�G���m�C�Y�o���A��", 200, @0, 20000, null, true);
	Zoom("�G���m�C�Y�o���A��", 200, 0, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000540a03">
"&.&.&.Now it's my turn&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000550a03">
"This'll end it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G���w�i", 3110, 0, InBottom, "cg/ev/ev900���C���ΐ푓�tVS�m�C�Y�ʏ�.jpg");
	Move("�G���w�i", 600, @0, 0, DxlAuto, false);
	Fade("�G���w�i", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0163]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000560a01">
"&.&.&.!"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000570a03">
"Using two turns&, DEMOLITION and DESTRUCTION&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("�G���e", 3210, Center, Middle, "cg/ev/l/ev960�E�T�M���h�L�퓬�\��_l.jpg");
	Zoom("�G���e", 0, 500, 500, null, true);
	SetBlur("�G���e", true, 2, 500, 30, false);

	Move("�G���e", 300, -130, -260, Dxl1, false);
	Zoom("�G���e", 300, 1000, 1000, Dxl1, false);
	Fade("�G���e", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0165]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000580c10">
"DEMOLITION/DESTRUCTION set!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("�G���e", 300, -512, -380, Dxl1, false);
	Zoom("�G���e", 300, 500, 500, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0166]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm25/7000590c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EffectTxtinSDelete("�m�C�Y","��");

//���m�C�Y�̍U���A�u���v�u��v�Z�b�g�B
	CreateTxtinEffectS(4000,"�m�C�Y","��");
	EffectTxtinS(700,"�m�C�Y","��");

	CreateSE("SE01","se����_���]�^���[_�n��01aL");
	MusicStart("SE01",300,1000,0,1000,null,true);
	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,800,null,true);

//�u���v�̋��͔ŁB
//�E�T�M���h�L�������~�T�C���ɂȂ��Ĕ��ł���B
//�@�̖h�䂪�j�󂳂�Ă�̂ŁA�@��ʉ߂��đ��t���W�I�ɁB�ǁ[��ǁ[��B
	CreateTextureEX("�G���e����", 3220, -850, -440, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Shake("�G���e����", 500, 0, 0, 0, 20, 1000, null, false);
	Zoom("�G���e����", 600, 1500, 1500, null, false);
	FadeFFR("�G���e����", 0,1000, 150, 0, 0, 30,null, true);

	Wait(550);

	CreateColorEX("�G�F��", 5000, "FFFFFF");

	$�_���[�W�q=1300;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

	SetVolumeEX("SE*", 150, 0, null);

	CreateSE("SE03","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE03",0,700,0,1000,null,false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Delete("�G��*");
	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE04","se�l��_�Ռ�_�]�|01");
	MusicStart("SE04",0,700,0,1000,null,false);
	BGPlainShake(100,300,0,20,0,0,1000,null,true);

	RMDControlOutR(1000);

	SetVolumeEX("@dm*", 1000, 0, null);

{	Fw("fw�@_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000600a06">
"Aoba&.&.&.!"

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000610a01">
"Kuh&.&.&. Agh&.&.&.!!"

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000620c10">
"Enemy Durability at 68% damage!"

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000630a01">
"Shit&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0174]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000640a03">
"So you endured it&. But with your Allmate with no defense&,
 the next attack'll be a direct one&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000650a03">
"If you order Ren to use his strongest attack&, half of that damage will recoil&. Your body won't be able to take it&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal4");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000660a03">
"Even if you order a weak attack&, my next hit will be the
 last&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_pride");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000670a03">
"Either way&, it's over&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���F�g�p�ӏ����e���[�g���Ƃ��Ɍ��肵�Ă���Ȃ牺�̋ȂƂ��ŗ��ށv
	SoundPlay("@dm016",0,450,true);//����
	//SoundPlay("@dm023a",0,450,true);

{	Fw("fw���t_�ʏ�_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0178]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000680a01">
"&.&.&.No it's not&, you idiot&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_smile2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000690a03">
"&.&.&.Are you a sore loser?"

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000700a01">
"You just said that this'll be the end of it&. But I haven't lost&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000710a01">
"I wasn't holding out&, I was just going easy on you&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000720a03">
"!"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000730a01">
"&.&.&.Because you know what pain is now&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000740a03">
"&.&.&.!"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000750a01">
"But I won't go easy on you from now on&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000760a01">
"Because compared to real pain&, this is nothing&.&.&.!"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000761a01">
"This next move will be the last&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000762a01">
"Without any defense&, all of our strength will go into the
 attack&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000763a01">
"If you keep defending&, it will be my loss as you say&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G���w�i", 1100, -670, -370, "cg/ev/l/ev900���C���ΐ푓�tVS�m�C�Y�ʏ�_l.jpg");
	Move("�G���w�i", 700, -770, @0, DxlAuto, false);
	Fade("�G���w�i", 700, 1000, null, true);
	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0188]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000764a01">
"&.&.&.Let's go&, Ren&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000780a06">
"&.&.&.&.&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000790a06">
"&.&.&.Understood&."

{	Fw("fw�m�C�Y_�ʏ�_pinch");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000800a03">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EffectTxtinSDelete("�@","�c");

//�����t�̍U���B�u�c�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă��āA�����Ƀr���b�Ɠd��������B
//���@�A�r�����������ēd�C���߁��G�Ɍ������Ęr���J���ĕ��B

//���C��`
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

	CreateMovieEX("�G����", 2000, 120, 170, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G����",0,5000,3000,null,true);

	CloudZoomSmokeSet01("���",200,"cg/ev/x/ev950�@�̌��C�\��_���ʎ��d_x01.png");

	//CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	//SetShade("�G�w�i", HEAVY);
	//Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureEX("�@�U��", 100, -250, Middle, "cg/ev/ev950�@�̌��C�\��a.jpg");
	Request("�@�U��", Smoothing);
	Rotate("�@�U��", 0, @0, @0, @50, null,true);
	Zoom("�@�U��", 0, 1300, 1300, null, true);
	SetBlur("�@�U��", true, 2, 500, 50, false);

	CreateTextureEXadd("��", 100, Center, Middle, "cg/ef/effi�\�I����_ef01.png");
	Move("��", 0, @-250, @50, null, true);
	Zoom("��", 0, 5000, 5000, null, true);

	RotetoLoopOGM02("���v���Z�X","��",1800,-3600);
	RotetoLoopOGM03("���v���Z�X2","EF1",34000,-3600);

	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("��", 10000000, 3, 3, 3, 3, 900, null, false);

	SetVolumeEX("SEL21", 300, 0, null);
	SetVolumeEX("SE22", 300, 0, null);
	FadeDelete("�G�F��", 100, null, false);

	Delete("�G���w�i");

//�@���C�\��
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("�G�w�iEF02", 100, 1000, null, false);
	Fade("�G�w�i", 100, 1000, null, false);
	Zoom("�G�w�i", 650, 2000, 2000, AxlDxl, false);
	//BezierMove("�G�w�i", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
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

	//SetBlur("�@�U��", true, 2, 300, 1000, false);
	Zoom("�@�U��", 300, 1100, 1100, Dxl3, false);
	Fade("�@�U��", 100, 1000, null, false);
	Move("�@�U��", 300, -180, -140, Dxl3, false);
	Rotate("�@�U��", 300, @0, @0, 0, Dxl2,true);
	SetBlur("�@�U��", false, 2, 300, 1000, false);

	WaitAction("@�@�U��", null);
	SetBlur("�@�U��", true, 2, 500, 50, false);

	EffectTxtinA("�@","�c");
	EffectTxtinB("�@","�c");

//�@���C�`���[�W
	MusicStart("SE08",0,600,0,200,null,true);
	Shake("�@�U��", 10000000, 3, 3, 3, 3, 900, null, false);
	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	Fade("�G����", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("��", 3000, 500, null, false);

	Zoom("�@�U��", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@�@�U��",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000810a03">
"&.&.&.Defense!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�E�T�M���h�L�Ŗh�䂷�邪�A
//�@�̓d���C�̐������~�߂���Ȃ��B
//�K���K���K���c�c�h�䂪����Ă��B

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

	Wait(300);


//��ʐ؂�ւ��ăm�C�Y����
	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�G���m�C�Y", 5110, -620, -140, "cg/ev/l/ev920�m�C�Y�ːia_l.jpg");
	Shake_Loop("@�G���m�C�Y","���������U��");

	CreateStencil("�G��", 0, 600, 70, 128, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm����.png", false);
	SetAlias("�G��","�G��");
	CreateTextureEXover("�G��/�G���͗l", 5110, Center, Middle, "cg/bg/bg201012_0_���C���p�u���b�N�t�B�[���h.jpg");
	//CreateTextureEXadd("�G��/�m�C�Y�o���A��", 5120, 600,�@70, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm����.png");
	CreateColorEXadd("�G��/�m�C�Y�o���A��", 5120, "FFFFFF");

	Zoom("�G��/�m�C�Y�o���A��", 0, 8000, 8000, null, true);
	Zoom("�G��", 0, 8000, 8000, null, true);
	Fade("�G��/�G���͗l", 0, 500, null, true);
	Fade("�G��/�m�C�Y�o���A��", 0, 500, null, true);
	Rotate("�G��", 60000, @0, @0, 7200, null,false);
	Rotate("�G���m�C�Y�o���A*", 60000, @0, @0, 7200, null,false);

	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE02",0,700,0,1200,null,false);

	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);

	CreateSEEX("SEL11","se�퓬_�Ռ�_�G�l���M�[驂�����01L");
	MusicStart("SEL11",0,700,0,1000,null,true);

	CreateColorEXadd("�G���F���C��", 8990, "FFFFFF");
	DrawTransition("�G���F���C��", 1, 0, 600, 100, null, "cg/data/circle_10_00_0.png", true);
	FlashQuick("�������C��","@�G���F���C��");

	CreateSE("SE21","se�퓬_�Ռ�_������01");
	CreateSE("SE22","se�퓬_�Ռ�_������01");
	CreateSE("SE23","se�퓬_�Ռ�_������01");
	MusicStart("SE21",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 9000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 300, null, false);
	Wait(100);
	MusicStart("SE22",0,700,-200,1000,null,false);
	Wait(200);
	MusicStart("SE23",0,700,400,1000,null,false);

	$�_���[�W�k=700;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(1000,$���m�C�Y���X�g�g�o);


{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000820c10">
"Using 4 turns&, 5 turns&, 6 turns&.&.&. 7 turns!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	$�_���[�W�k=500;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(1000,$���m�C�Y���X�g�g�o);

	CreateSE("SE21","se�[��_���__�Ђ�01");
	MusicStart("SE21",0,1000,0,1500,null,false);
	CreateColorSP("�G�F��", 9000, "FFFFFF");
	Wait(30);
	Rotate("�G��", 0, @0, @0, 0, null,false);
	Rotate("�G���m�C�Y�o���A*", 0, @0, @0, 0, null,false);
	Rotate("�G��", 60000, @0, @0, 7200, null,false);
	Rotate("�G���m�C�Y�o���A*", 60000, @0, @0, 7200, null,false);
	FadeDelete("�G�F��", 300, null, false);

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000830c10">
"Our defense wall is taking 56%&, 68%&.&.&. it keeps taking
 damage!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000840a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G����", 9990, "BLACK");

//�����ɑ��t�ɂ����`��_���[�W�B
//�̗͍���Ă����B���t�ꂵ���B

	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	Request("���", Stop);
	Request("��*", Stop);
	Shake_LoopDelete();
	FlashQuickDelete(0,0);
	Delete("����*");
	Delete("���*");
	Delete("�@�U��");
	Delete("��*");
	Delete("EF*");

	PrintGO("��w�i", 9999);
	Wait(16);
	RMDControlOutL(0);

	CreateColorSP("�G����", 9990, "BLACK");

	CreateCamera("�b", 1200, 310, 1000);
	SetAlias("�b","�b");
	CreateTextureSP("�b/�G���@���C", 0, 0, 0, "cg/ev/l/ev950�@�̌��C�\��a_�l���@_l.jpg");
	Shake_LoopB("@�b/�G���@���C","���������U��");
	CreateTextureSP("�b/�G���@���C���ʕ���", 0, 0, 0, "cg/ev/l/ev950�@�̌��C�\��a_���ʕ���_l.png");
	SetBlur("�b/�G���@���C���ʕ���", true, 2, 100, 30, false);
	Zoom("�b/�G���@���C���ʕ���", 0, 2000, 2000, null, true);
	SetVertex("�b/�G���@���C���ʕ���", 987, 887);

	RotetoLoopOGM03("���v���Z�X2","�b/�G���@���C���ʕ���",34000,-3600);
	Shake("�b/�G���@���C���ʕ���", 10000000, 3, 3, 3, 3, 900, null, false);

	CreateColorEXadd("�G���F���C��", 1990, "FFFFFF");
	DrawTransition("�G���F���C��", 1, 0, 700, 100, null, "cg/data/circle_11_00_0.png", true);
	FlashQuick("�������C��","@�G���F���C��");

	Delete("��w�i");
	DrawDelete("�G����", 150, 100, null, "slide_01_02_0", true);

	Wait(300);

	$�_���[�W�q=100;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(3000,$�����t�g�o);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000850a01">
"Grgh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/7000860a06">
"Aoba&, danger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	$�_���[�W�q=120;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

//�������u���F���t�̒ɂ݂Ƃ��ăm�C�Y�Ɣ�r���邽�߂ɐԁA�f���n�̃G�t�F�N�g�ɂ��Ă܂��v
	CreateSE("SE21","se�퓬_����_�q�b�g04");
	MusicStart("SE21",0,1200,0,800,null,false);
	CreateColorSP("�G�F��", 9000, "990000");
	Wait(30);
	FadeDelete("�G�F��", 300, null, false);

{	Fw("fw���t_�ʏ�_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0212]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000870a01">
"&.&.&.&.&.!"

{	Fw("fw�m�C�Y_�ʏ�_pinch");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000880a03">
"&.&.&.Hey&, doesn't that hurt!? Stop!"

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000890a01">
"&.&.&.I wont&.&.&. Never&, I'm not going to stop&.&.&.!"

{	Fw("fw�m�C�Y_�ʏ�_shock");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000891a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

/*
{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/7000892a01">
"Ugaaahhhh&.&.&.!!"
*/

	CreateVOICE("���t","dm25/7000892a01");
	MusicStart("���t",0,1500,0,1000,null,false);
	WaitKey(1000);

	FwPro("fw�m�C�Y_�ʏ�_angry3",2500,"fw�m�C�Y_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000893a03">
"&.&.&.&.&.Shit!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	RMDControlOutR(0);

	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	RotetoLoopOGM03Stop();
	Shake_LoopDelete();
	FlashQuickDelete(0,0);
	Delete("�b");
	Delete("�G��*");
	Delete("��*");

	CreateTextureSP("�G���m�C�Y", 5110, -620, -140, "cg/ev/l/ev920�m�C�Y�ːia_l.jpg");
	Shake_Loop("@�G���m�C�Y","���������U��");

	CreateStencil("�G��", 0, 600, 70, 128, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm����.png", false);
	SetAlias("�G��","�G��");
	CreateTextureEXover("�G��/�G���͗l", 5110, Center, Middle, "cg/bg/bg201012_0_���C���p�u���b�N�t�B�[���h.jpg");
	//CreateTextureEXadd("�G��/�m�C�Y�o���A��", 5120, 600,�@70, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm����.png");
	CreateColorEXadd("�G��/�m�C�Y�o���A��", 5120, "FFFFFF");

	Zoom("�G��/�m�C�Y�o���A��", 0, 8000, 8000, null, true);
	Zoom("�G��", 0, 8000, 8000, null, true);
	Fade("�G��/�G���͗l", 0, 500, null, true);
	Fade("�G��/�m�C�Y�o���A��", 0, 500, null, true);
	Rotate("�G��", 60000, @0, @0, 7200, null,false);
	Rotate("�G���m�C�Y�o���A*", 60000, @0, @0, 7200, null,false);

	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);

	CreateColorEXadd("�G���F���C��", 8990, "FFFFFF");
	DrawTransition("�G���F���C��", 1, 0, 600, 100, null, "cg/data/circle_10_00_0.png", true);
	FlashQuick("�������C��","@�G���F���C��");

	$�_���[�W�k=0;
	$���m�C�Y���X�g�g�o=$���m�C�Y���X�g�g�o-$�_���[�W�k;
	RMDControlInL(0,$���m�C�Y���X�g�g�o);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000894a03">
"I'm not into watching you get hurt; I'm not some
 fucking sadist!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("���t", 150, 0, null);

//�m�C�Y�A�h��������B
//�������u���F�S�Ẳ���h������̉��Ɂv
	SetVolumeEX("SE*", 500, 0, null);
	SetVolumeEX("@dm*", 500, 0, null);

	WaitKey(800);

	CreateSE("SE01","se����_�R�C��_�^�[�Q�b�g�W�J");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1500,0,500,null,false);
	Fade("�G��/�m�C�Y�o���A��", 200, 1000, null, true);
	Delete("�G��/�G���͗l");
	Request("���������U��", Stop);
	Delete("���������U��");
	Shake("�G���m�C�Y", 0, 0, 0, 0, 0, 500, null, false);
	FlashQuickDelete(300,0);
	Zoom("�G��", 200, @0, 20000, null, true);
	Zoom("�G��", 200, 0, 0, null, true);
	Delete("�G��");

	WaitKey(1000);

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0222]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm25/7000895c10">
"Cancelling defense!? Really!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G���F���C��", 3000, 1000, null, false);

	Wait(500);

	CreateColorEXadd("�G���]", 20000, "FFFFFF");
	Fade("�G���]", 4000, 1000, Axl3, false);

	Wait(3250);

//�������u���F�r���ő̗͌����Ȃ��Ȃ�͉̂��o�v
	$���m�C�Y���X�g�g�o=0;
	RMDControlInL(2000,$���m�C�Y���X�g�g�o);
	RMDControlOutL(0);
	RMDControlOutR(0);

	Wait(2000);

//�������u���F����������������������c�c�A�C�ɂȂ�Ȃ�Ή����܂��v
	CreateVOICE("�m�C�Y","dm25/7000896a03");
	$SETime = RemainTime("�m�C�Y");
	MusicStart("�m�C�Y",0,1500,0,1000,null,false);
	WaitKey($SETime);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/7000896a03">
"&.&.&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/

//�@�̓d���C�A�m�C�Y�ɂԂ�������B�ǁ[��B

	ClearFadeAll(3000, true);
	Wait(2000);

//�����t�@�C��["dm2580.nss"]

}

/*
//�������u���F�Ȃ񂩓�����ʓV������������̂Ń{�c�v
//���u�_�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă���

	CreateColorEX("�G�F��", 5000, "000000");

	Move("�G���", 800, -600, @0, AxlAuto, false);
	Fade("�G�F��", 400, 1000, null, true);

	Delete("�G��*");
	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");
	SetBlur("�b", true, 3, 500, 200, false);

	CreateProcessEX("�v���Z�X", "Proc_dm0200_vs_02Act");
	Request("�v���Z�X", Start);

	CreateTextureSP("�b/�G��@�w�i", 0, -1400, -1280, "cg/ev/l/ev950�@�o�g���ėp�ːia_�w�i_l.jpg");
	Move("�b/�G��@�w�i", 600, -1300, @0, Dxl2, false);
	Shake("�b/�G��@�w�i", 600000, -1, 1, 0, 0, 1000, null, false);

	CreateMovieEX("�G������", 2100, Center, Middle, true, true, "dx/mv0003�W����04_��&.ngs");
	Rotate("�G������", 0, @0, @0, -11, null,true);
	DrawTransition("�G������", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	Zoom("�G������", 0, 3000, 3000, null, true);
	Fade("�G������", 0, 500, null, true);

	Move("�b/�G��@�w�i", 120000, -40, -1460, null, false);
	Fade("�G�F��", 300, 0, null, true);

	CreateTextureSP("�b/�G��@�ːi", 500, 250, -500, "cg/ev/ev950�@�o�g���ėp�ːia_�l���@.png");
	CreateTextureSP("�b/�G��@�ːi�e", 500, 250, -500, "cg/ev/x/ev950�@�o�g���ėp�ːia_�l���@_xb.png");
	Fade("�b/�G��@�ːi�e", 0, 500, null, true);
	Request("�b/�G��@�ːi", Smoothing);
	Zoom("�b/�G��@�ːi*", 0, 300, 300, null, true);

	BezierMove("�b/�G��@�ːi*", 600, (@0,@0){190,-380}{150,-230}{90,-230}(0,-250), DxlAuto, false);
	Wait(500);
	Fade("�b/�G��@�ːi�e", 500, 0, null, false);
*/

/*
//�������u���F�e���|���������̂Ń{�c�v
//�����t�̍U���B�u�_�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă���
	CreateTxtinEffectS(4000,"�@","�_");
	EffectTxtinS(700,"�@","�_");

	CreateTextureEX("�G�@�ːi�w�i", 3010, -180, -370, "cg/ev/ev950�@�o�g���ėp�ːia_�w�i.jpg");
	Move("�G���w�i", 600, -310, @0, Dxl1, false);
	Move("�G�@�ːi�w�i", 600, -80, @0, Dxl1, false);
	Fade("�G�@�ːi�w�i", 250, 1000, null, true);

	CreateWindowEX("�G��", 0, 0, 1212, 1026, true);
	CreateTextureSP("�G��/�G���@", 3110, 0, 0, "cg/ev/ev950�@�o�g���ėp�ːia_�l���@.png");
	Request("�G��/�G���@", Smoothing);
	CreateTextureSPadd("�G��/�G���@�O���d", 3120, 0, 0, "cg/ev/ev950�@�o�g���ėp�ːia_���ʎ��d��.png");
	Request("�G��/�G���@�O���d", Smoothing);
	CreateTextureSPadd("�G��/�G���@�����d", 3100, 0, 0, "cg/ev/ev950�@�o�g���ėp�ːia_���ʎ��d�E.png");
	Request("�G��/�G���@�����d", Smoothing);

	CreateColorEX("�G����", 10000, "BLACK");

	Zoom("�G��/�G���@*", 0, 800, 800, null, true);

	Move("�G��", 0, 600, -600, null, true);
	Zoom("�G��", 0, 0, 0, null, true);

	SetBlur("�G��/�G���@�O���d", true, 3, 500, 120, true);
	SetBlur("�G��/�G���@�����d", true, 3, 500, 120, true);

	CreateSE("SE01","se�퓬_����_������01");

	Zoom("�G��", 1200, 1800, 1800, Axl2, false);
	BezierMove("�G��", 1200, (@0,@0){450,-200}{390,-120}(220,-360), Axl2, false);

	Wait(700);
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(490);

	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�G��*");
	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201023_0_���C���m�C�Y03.jpg");

	Delete("�G��");
	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);
*/