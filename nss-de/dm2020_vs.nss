//<continuation number="240">
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


scene dm2020_vs.nss_MAIN
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

	//�����o������������
	Request("@EFWIN/SE01", UnLock);
	EffectTxtinDelete();
	TiesMovieDelete();
	RMDControlDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2030.nss";

}


scene dm2020_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


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

	if($nextrhymescene=="dm2020_vs.nss"){
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	Request("@EFWIN/SE01", UnLock);
	}else{
	CreateSE("SE01","se�[��_���C��_�����g01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	}

	TiesMovieStart();

	DrawDelete("�G�F��", 500, 100, Axl2, "slide_02_01_1", true);

	Wait(500);
	WaitKey(1000);
	TiesMovieNEXT();
	Wait(500);
	WaitKey(1000);

	SetVolumeEX("@EFWIN/SE*", 600, 0, null);
	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE02","se�[��_���__����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G�F��", 1000, 1000, AxlAuto, true);

	Wait(650);
	WaitKey(1350);

	TiesMovieDelete();

$TEXTBOX_TYPE="���C��";

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

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000010a01">
"This feeling I'm getting&.&.&. Is this Rhyme?"

{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/2000020a03">
"Sure is&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000030a01">
"Not again&.&.&.! Besides&, now it's both of us at the
 same time&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw�m�C�Y_�ʏ�_normal4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/2000040a03">
"This is a Drive-By&. And Usui's not here so there's
 no one enforcing the rules&. It's a free-for-all here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateProcessEX("�v���Z�X", "Procdm2020_vs_01Act");
	Request("�v���Z�X", Start);

{	Fw("fw���t_�ʏ�_worry2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000050a01">
"And&.&.&. doesn't this field make you feel sick at all?
 It feels a little off&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DeleteFw();

	Request("�v���Z�X", Stop);
	if($Procdm2020_vs_01Act==true){
	}else{
	CreatePlainSP("�G��", 5000);
	Delete("@�G�F��");
	Delete("@�G�w�i");
	FadeDelete("�G��", 300, null, true);
	}

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text9999]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/2000060a03">
"It's twisted from doing too much Rhyme&. There've been lots of crazy Rhyme addicts lately&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000070a01">
"&.&.&.&.&."

{	Fw("fw�@_�ʏ�_normal");}
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/2000080a06">
"Aoba&, it's coming&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm011",0,450,true);//�d�]�o�g���c

//���G�̎p��������B�w���w���������Ŋ��҂ƃI�[�����C�g�̓R�E�����H�f�ނ�������̃}�Y���Ȃ�Ȃ�ł������ł��B
	CreateSE("SE01","se����_��_�R�E������01");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	CreateTextureEX("�G��", 1110, -550, -500, "cg/ev/l/ev900���C���ΐ푓�tVS���Ŏ�_�A�b�v_l.jpg");
	Move("�G��", 2000, @0, -140, DxlAuto, false);
	Fade("�G��", 2000, 1000, null, true);

	DeleteAllSt(0,true);

	CreateSE("SE01","se�퓬_�Ռ�_�X��01");
	CreateTextureEX("�G�����ōU��", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	SetBlur("�G�����ōU��", true, 3, 500, 60, false);
	CreateTextureEXadd("�G�����ōU����", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	Zoom("�G�����ōU��*", 0, 2000, 2000, null, true);

	SetVolumeEX("SE*", 150, 0, null);

	EffectTxtinA("������","�X");
	EffectTxtinB("������","�X");

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("�G��", 2000);
	Delete("�G��");
	SetBlur("�G��", true, 3, 500, 60, false);
	Zoom("�G��", 200, 5000, 5000, Axl3, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�����ōU��*", 0, 1000, null, true);
	Zoom("�G�����ōU��*", 200, 1100, 1100, Dxl3, false);
	Fade("�G��", 100, 0, null, false);
	Wait(200);
	Fade("�G�����ōU����", 200, 0, null, true);
	Delete("�G��");

//���o�����F�u�X�v���u�Łv�i���q�j
//���G�̍U���B�u���v�̎��Z�b�g�ŉ΂̋ʂ݂����Ȃ̂����e���ł���B
//���Z�b�g���Ă鎚�͑S�̓I�ɓK���ł��B

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000090a01">
"Uh&, Ren&, defense&, please!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTxtinEffectS(3000,"�@","��");

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
	Zoom("�G�����ōU��", 600, 5000, 5000, Dxl3, false);
	Move("�G�����ōU��", 600, 1024, @0, Axl3, false);

//���@�ɃV�[���h���点�Ėh�䂷��B�΂̋ʂ͒e����đ��̕����֔��ł����B

	BezierMove("�G���@�w�i", 600, (@0,@0){-340,-190}{-250,-180}(-230,-140), Dxl3, false);
	Fade("�G���@�w�i", 600, 1000, null, true);

	Wait(100);

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

	Move("�G���@�ːi", 200, -610, -840, Dxl3, false);
	Zoom("�G���@�ːi", 200, 500, 500, Dxl3, true);
	MoveFFP1("@�G���@�ːi",900);

	EffectTxtinS(700,"�@","��");

//�����t�̍U���B�u��v�Z�b�g�B�@�̘r���璷���n������яo���A�؂荞�݂ɍs������B�G�I�[�����C�g���������Ŗh��B�K���K���b�ĂȂ��Ę@�̐n�����؂�􂭁B

	CreateColorEX("�G�F��", 3000, "000000");

	MoveFFP1stop();
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

//�@����̃I�[�����C�g�Ƀr���b�Ɠd���������ă_���[�W�𕉂킹��B

	Fw("fw�m�C�Y_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/2000100a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000110a01">
"Hey&, why're you just standing there?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/2000120a03">
"You attacked first&, so you do it&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000130a01">
"Whaa!? What the hell!?"

{	Fw("fw�@_�ʏ�_normal");}
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/2000140a06">
"Aoba&, instructions&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000150a01">
"Well then&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ռ�_�X��01");
	CreateTextureEX("�G�����ōU��", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	SetBlur("�G�����ōU��", true, 3, 500, 60, false);
	CreateTextureEXadd("�G�����ōU����", 1120, Center, Middle, "cg/ef/efx05���R_�X�̊�01.jpg");
	Zoom("�G�����ōU��*", 0, 2000, 2000, null, true);
	Rotate("�G�����ōU��*", 0, @0, 180, @0, null,true);

	CreateTextureEX("�G���@�h��", 2110, -540, -560, "cg/ev/l/ev950�@�o�g���ėp�h��a_l.jpg");
	Request("�G���@�h��", Smoothing);
	Rotate("�G���@�h��", 0, @0, @0, -110, null,true);

	Fw("fw�@_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/2000160a06">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���@�������ɋC�t���ĉ��ɔ�т̂��B���A����x���B
//�@�������e�����΂̋ʐ������߂��Ă��Ę@���P���B
//�@�΂̋ʂ̂P�e���@�̑��ɓ�����B

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�����ōU��*", 0, 1000, null, true);
	Zoom("�G�����ōU��*", 200, 1100, 1100, Dxl3, false);
	Fade("�G��", 100, 0, null, false);
	Wait(200);
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
	Delete("�G������*");
	Delete("�G���@�h��");
	BGPlainShake(50,500,0,20,0,0,1000,Dxl3,false);

	FadeDelete("�G�F��", 100, null, true);

//�@�@�A�r���r�����đS�g��Ⴢꂽ�݂����ɂȂ�B
//�@�_���[�W�̂��ɘ@�̏Ռ��̎󂯕����傫�������B�i�o�O������\���ł���Ƃ����ȁ[�j

{	Fw("fw���t_�ʏ�_shout2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000170a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�_pain");
	Position($C_��, $x1, $y1);
	CreateStencil("�G�g",0,$x1, $y1,128,"cg/st/st�@_�ʏ�_normal.png",false);
	SetAlias("�G�g","�G�g");
	CreateTextureEXover("�G�g/�G�w�i", 800, -380, -450, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	DrawTransition("@�G�g/�G�w�i", 0, 0, 0, 0, null, "cg/data/mosaic_01_00_0.png", true);

	CreateSE("PSE01","se�[��_����_�Ή�01");
	MusicStartSet("PSE01",700,0,2000,null,false);

	CreateProcessEX("�v���Z�X", "Procdm2020_vs_02Act");
	Request("�v���Z�X", Start);

	FadeSt("C",200,true);
	St("C",740, @0,@0,"st�@_�ʏ�_normal");
	FadeStPro("C", 2000, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/2000180a06">
"&.&.&.I'm okay&."

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
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000190a01">
"It was my fault&, sorry&."

{	St("C",740, @0,@0,"st�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//���l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/2000200a06">
"Don't mind it&. At any rate&, give your instructions&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/2000210a01">
"&.&.&.Right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	FwPro("fw�m�C�Y_�ʏ�_normal",3000,"fw�m�C�Y_�ʏ�_normal3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/2000220a03">
"&.&.&.I see&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�E�T�M��J�b�g�C����`
	CreateTextureEX("�G����", 4990, Center, Middle, "cg/mask/ci���C��_01_00z.png");
	CreateMaskEX("�G��", 0, Center, Middle, "cg/mask/ci���C��_01_00.png", false);
	SetVertex("�G����", center, 212);
	SetVertex("�G��", center, 212);
	CreateColorSP("�G��/�G�F��", 5000, "FFFFFF");
	//CreateTextureSP("�G��/�G���E�T�M�w�i", 4100, Center, Middle, "cg/ef/efbg����02.jpg");
	CreateTextureSP("�G��/�G���E�T�M��", 4100, 330, -40, "cg/ev/l/ev960�E�T�M���h�L�퓬�\��_l.jpg");
	Zoom("�G��/�G���E�T�M��", 0, 2000, 2000, null, true);
	Request("�G��/�G���E�T�M��", Smoothing);

	Zoom("�G��", 0, 5000, 0, null, true);
	Zoom("�G����", 0, 5000, 0, null, true);
//�E�T�M��J�b�g�C����`�����܂Ł�����

//���m�C�Y�A�L���[�u��̃E�T�M���h�L���`�F�[�����炢�����͂����ċ󒆂ɕ���B
//�@�L���[�u�����E�T�M���h�L�ɕϐg�B�m�C�Y�A�u�j�v�Z�b�g�B

	CreateSE("SE01","se�퓬_����_������01");
	CreateTextureEX("�G����", 1110, -512, -288, "cg/ev/m/ev920�m�C�Y�ːia_m.jpg");
	Rotate("�G����", 0, @0, 180, @0, null,true);
	SetBlur("�G����", true, 3, 500, 60, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G����", 300, -110, -60, Dxl2, false);
	Fade("�G����", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/2000230a03">
"Go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete

//�E�T�M��J�b�g�C���J�n
	Move("�G��/�G���E�T�M��", 600, -150, @0, Dxl2, false);
	Zoom("�G��", 400, 1000, 800, Dxl3, false);
	Zoom("�G����", 400, 1000, 800, Dxl3, false);

	Wait(200);

	Move("�G��/�G���E�T�M��", 10000, -170, @0, null, false);

	Fade("�G����", 200, 1000, null, false);
	Fade("�G��/�G�F��", 200, 0, null, true);

	Wait(50);

	CreateVOICE("�E�T�M���h�L","dm20/2000240c09");//�u�����[�J�C�I�v
	$SETime = RemainTime("�E�T�M���h�L")-100;
	MusicStart("�E�T�M���h�L",0,1800,0,1000,null,false);

	WaitKey($SETime);

//�E�T�M��J�b�g�C����
	Fade("�G����", 300, 0, null, false);
	Fade("�G��/�G�F��", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("�G����", 200, 1000, 0, AxlDxl, false);
	Zoom("�G��", 200, 1000, 0, AxlDxl, true);
	Delete("�G��*");

	SetVolumeEX("�E�T�M���h�L", 150, 0, null);


/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm20/2000240c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/

//���E�T�M���h�L�������e�ۂ̂悤�ɔ�яo���A��ĂɃ��C�����Ŏ҂̃I�[�����C�g�֏P���|����B
//�@�I�[�����C�g�ꔭ�j�n�B�Q�[���I���A�����B
	CreateTextureEX("�G���e�ːi", 2110, 512, 520, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Rotate("�G���e�ːi", 0, @0, 180, @0, null,true);
	Zoom("�G���e�ːi", 0, 2000, 2000, null, true);
	//SetBlur("�G���e�ːi", true, 3, 300, 30, false);
	CreateSE("SE01a","se�퓬_����_������01");
	MusicStart("SE01a",0,700,0,1800,null,false);
	FadeFFR2("@�G���e�ːi", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01b","se�퓬_����_������01");
	MusicStart("SE01b",0,700,0,1800,null,false);
	Move("�G���e�ːi", 0, -1404, -330, null, true);
	FadeFFR2("@�G���e�ːi", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01c","se�퓬_����_������01");
	MusicStart("SE01c",0,700,0,1800,null,false);
	Move("�G���e�ːi", 0, -1964, -240, null, true);
	FadeFFR2("@�G���e�ːi", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01d","se�퓬_����_������01");
	MusicStart("SE01d",0,700,0,1800,null,false);
	Move("�G���e�ːi", 0, 318, -264, null, true);
	FadeFFR2("@�G���e�ːi", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01e","se�퓬_����_������01");
	MusicStart("SE01e",0,700,0,1800,null,false);
	Zoom("�G���e�ːi", 0, 600, 600, null, true);
	Move("�G���e�ːi", 0, -512, -238, null, true);
	FadeFFR2("@�G���e�ːi", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01f","se�퓬_����_������01");
	MusicStart("SE01f",0,700,0,1800,null,false);
	Zoom("�G���e�ːi", 200, 5000, 5000, Axl3, false);

	Wait(180);

	SetVolumeEX("@dm*", 300, 0, null);
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE02",0,1000,0,1200,null,false);
	CreateSE("SE03","se�퓬_�Ռ�_�j��01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 600, 1000, null, true);
	Wait(300);

	RMDControlInL(500,0);
	RMDControlOutL(1000);

	Wait(3000);

//���������E�֖߂��Ă���B

	ClearFadeAll(2000, true);
	Wait(2000);

//�����t�@�C��["dm2030.nss"]

}

/*
while(1){

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");

	WaitKey();

//�������u���o�F�T���v���X�N���v�g�A�������ʓo�ꉉ�o�y�����z�v
//�������ʓo�ꉉ�o�y�����z

	CreateTextureEXsub("�G�����ʎ���", 1100, Center, Middle, "cg/ef/efv��������_������_�X_�O��01a.png");
	SetVertex("�G�����ʎ���", 456, 274);
	CreateTextureEXsub("�G�����ʎ�����", 1100, Center, Middle, "cg/ef/efv��������_������_�X_�O��01b.png");
	SetVertex("�G�����ʎ�����", 339, 415);
	CreateTextureEXsub("�G�����ʎ��E��", 1100, Center, Middle, "cg/ef/efv��������_������_�X_�O��01c.png");
	SetVertex("�G�����ʎ��E��", 661, 363);
	CreateTextureEXsub("�G�����ʎ�����", 1100, Center, Middle, "cg/ef/efv��������_������_�X_�O��01d.png");
	SetVertex("�G�����ʎ�����", 635, 591);
	CreateTextureEXsub("�G�����ʎ��E��", 1100, Center, Middle, "cg/ef/efv��������_������_�X_�O��01e.png");
	SetVertex("�G�����ʎ��E��", 336, 678);
	CreateTextureEXsub("�G�����ʎ���", 1100, Center, Middle, "cg/ef/efv��������_������_�X_�O��01f.png");
	SetVertex("�G�����ʎ���", 587, 718);
	//Zoom("�G�����ʎ�*", 0, 1500, 1500, null, true);

	Fade("�G�����ʎ���", 0, 1000, null, true);
	FadeFFR2("�G�����ʎ���", 0,1000, 200, 0, 0, 30,Dxl1, false);
	Wait(500);
	Fade("�G�����ʎ�����", 0, 1000, null, true);
	FadeFFR("�G�����ʎ�����", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait(80);
	Fade("�G�����ʎ��E��", 0, 1000, null, true);
	FadeFFR3("�G�����ʎ��E��", 0,1000, 200, 0, 0, 25,Dxl1, false);
	Wait(80);
	Fade("�G�����ʎ�����", 0, 1000, null, true);
	FadeFFR4("�G�����ʎ�����", 0,1000, 200, 0, 0, 30,Dxl1, false);
	Wait(80);
	Fade("�G�����ʎ���", 0, 1000, null, true);
	FadeFFR2("�G�����ʎ���", 0,1000, 200, 0, 0, 35,Dxl1, false);
	Wait(80);
	Fade("�G�����ʎ��E��", 0, 1000, null, true);
	FadeFFR("�G�����ʎ��E��", 0,1000, 200, 0, 0, 40,Dxl1, false);

	WaitKey(50);

	//WaitKey();

	CreateTextureEXsub("�G�����ʊO��", 1100, Center, Middle, "cg/ef/efv��������_������_�X_�O��01.png");
	Zoom("�G�����ʊO��", 0, 500, 500, null, true);

	$Ef02TimeBase=500;
	$Ef02TimeZoom=$Ef02TimeBase*2.5;
	$Ef02TimeDrawEF=$Ef02TimeBase*4;
	$Ef02TimeDrawTR=$Ef02TimeBase*3;
	Zoom("�G�����ʊO��", $Ef02TimeZoom, 1000, 1000, DxlAuto, false);
	DrawEffect("�G�����ʊO��", $Ef02TimeDrawEF, "HighWave", 150, 0, Dxl2);
	Fade("�G�����ʊO��", $Ef02TimeBase, 1000, null, false);
	DrawTransition("�G�����ʊO��", $Ef02TimeDrawTR, 0, 1000, 50, null, "cg/data/zzex_turn_01_00_1 .png", true);

	$EF02TimeActionWait=$Ef02TimeDrawEF-$Ef02TimeDrawTR-200;
	Wait($EF02TimeActionWait);

	FadeFFR2("�G�x�[�X", 0,1000, 200, 0, 0, 20,DxlAuto, false);

	//WaitKey();

//�������ʔ������o

	CreateTextureSPadd("�G�����ʈ�", 1120, Center, Middle, "cg/ef/efv��������_������_�Xb_s.png");//�k���f�ޔ�
	Request("�G�����ʈ�", Smoothing);
	//Zoom("�G�����ʈ�", 0, 1150, 1150, null, true);//�ʏ�T�C�Y
	Zoom("�G�����ʈ�", 0, 2300, 2300, null, true);//�k���f�ޔ�

	CreateTextureSPmul("�G�����ʓ�", 1100, Center, Middle, "cg/ef/efv��������_������_�Xa.png");
	Request("�G�����ʓ�", AddRender);
	SetBlur("�G�����ʓ�", false);
	//Zoom("�G�����ʓ�", 0, 2000, 2000, null, true);//�ʏ�T�C�Y

	Delete("�G�����ʎ�����");
	Delete("�G�����ʎ��E��");
	Delete("�G�����ʎ�����");
	Delete("�G�����ʎ��E��");
	Delete("�G�����ʎ���");
	Delete("�G�����ʎ���");
	Delete("�G�����ʊO��");

	CreateTextureEX("�G�����ʓ����", 1100, Center, Middle, "cg/ef/efv��������_������_�Xa_s.png");//�k���f�ޔ�
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
