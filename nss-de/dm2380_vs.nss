//<continuation number="180">
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


scene dm2380_vs.nss_MAIN
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
	#ev900���C���ΐ푓�tVS�m�C�Y���]=true;
	#ev900���C���ΐ푓�tVS�m�C�Y���]_�A�b�v=true;

	#bg201021_0_���C���m�C�Y01���]=true;
	#bg201022_0_���C���m�C�Y02���]=true;
	#bg201023_0_���C���m�C�Y03���]=true;

	//�����o������������
	TiesMovieDelete();
	RMDControlDelete();
	Request("@EFWIN/SE01", UnLock);
	EffectTxtinDelete();
	EffectAllDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2390_vs.nss";

}


scene dm2380_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	RMDControlRDefault($���t�g�o);//5000
	RMDControlLDefault($�m�C�Y�g�o);//3500
	$�����t�g�o=$���t�g�o;
	$���m�C�Y�g�o=$�m�C�Y�g�o;
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);
	CreateColorSP("�G�F��", 5000, "000000");
	FadeDelete("��w�i", 0, null, true);

	TiesMovieSet("�]�����C��a",2000);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	if($nextrhymescene=="dm2380_vs.nss"){
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


	PrintGO("��w�i", 30000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");

	CreateTextureSP("�G�w�i", 10, Center, 0, "cg/bg/bg201021_0_���C���m�C�Y01���].jpg");

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i", 8000, @0, -576, DxlAuto, false);

	Delete("��w�i");
	FadeDelete("�G�F��", 3000, null, true);

	WaitAction("@�G�w�i", null);

//�����C���J�n

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000010a01">
"&.&.&.Rhyme?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G���G��", 1110, -650, -510, "cg/ev/l/ev900���C���ΐ푓�tVS�m�C�Y���]_�A�b�v_l.jpg");
	Move("�G���G��", 10000, -580, -180, null, false);
	Fade("�G���G��", 1000, 1000, null, true);

{	Fw("fw���t_�ʏ�_worry4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000020a01">
"What's happened to him?"

{	Fw("fw�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/8000030a06">
"The details are unknown&, but it's possible that he's being controlled by someone&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000040a01">
"Controlled&.&.&. But by who!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G���Η�", 1210, -1024, -350, "cg/ev/l/ev900���C���ΐ푓�tVS�m�C�Y���]_l.jpg");
	Move("�G���Η�", 200, -660, @0, Dxl2, false);
	Fade("�G���Η�", 200, 1000, null, true);
	Delete("�G���G��");

	SoundPlay("@dm011",0,450,true);//�d�]�o�g���c

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/8000050a06">
"Aoba&, he's coming&."

</PRE>
	SetText();	
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetBlur("�G���Η�", true, 3, 500, 200, false);

	CreateTextureEX("�G�G���e�w�i", 2110, Center, Middle, "cg/ef/efbg����03.jpg");
	CreateTextureEX("�G�G���e", 2120, -1024, -883, "cg/ev/x/ev960�E�T�M���h�L�퓬�\��_x01.png");
	CreateColorEXover("�G�G���e�w�i�F����", 2110, "430B38");

	CreateMovieEX("�G������", 4000, Center, Middle, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G������", 0, 3000, 2000, null, true);

//�@�h��\���O��`

	CreateTextureEX("�G�@�h��O", 3210, -330, -330, "cg/ev/m/ev950�@�o�g���ėp�h��a_m.jpg");
	Zoom("�G�@�h��O", 0, 3000, 3000, null, true);
	CreateTextureEX("�G�@�h��", 3210, -330, -330, "cg/ev/m/ev950�@�o�g���ėp�h��a_����_m.jpg");
	CreateTextureEXadd("�G�@�h���", 3210, -330, -330, "cg/ev/m/ev950�@�o�g���ėp�h��a_����_m.jpg");
	SetVertex("�G�@�h���", 1090, 620);
	Zoom("�G�@�h���", 0, 1200, 1200, null, true);
	SetBlur("�G�@�h���", true, 3, 300, 100, false);

	CreateColorEX("�G�@�F�h�䔒", 5000, "FFFFFF");

	CreateMovieEX("�G���@����", 4000, Center, Middle, true, true, "dx/mv0003�W����04_��&.ngs");
	DrawTransition("�G���@����", 1, 0, 450, 100, null, "cg/data/slide_05_01_0.png", true);
	Zoom("�G���@����", 0, 3000, 2000, null, true);


//�@�h��\���O��`�F�����܂Ł�����

//���m�C�Y�̍U���F�u���v�Z�b�g�B�E�T�M���h�L�����������~�T�C���̂悤�ɂЂ��Ђ����ł���
	Fade("�G�G���e�w�i�F����", 300, 1000, null, false);
	Fade("�G�G���e�w�i", 300, 1000, null, false);
	Fade("�G���Η�", 300, 0, null, false);
	Move("�G���Η�", 300, -300, 0, Dxl3, false);
	Move("�G�G���e", 300, -200, -300, Dxl3, false);
	Fade("�G�G���e", 300, 1000, null, true);

	EffectTxtinA("�m�C�Y","��");
	EffectTxtinB("�m�C�Y","��");

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_������01");
	CreateSE("SE05","se�퓬_����_������01");

	Delete("�G��");

	Fade("�G������", 0, 1000, null, true);
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("�G���", 2120, -980, -10, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Delete("�G�G���e�w�i");
	Delete("�G�G���e");
	Delete("�G�G���e�w�i�F����");
	Wait(80);
	MusicStart("SE02",0,700,0,2000,null,false);
	Move("�G���", 0, -250, -330, null, true);
	Wait(80);
	MusicStart("SE03",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, 0, null, true);
	Wait(80);
	MusicStart("SE04",0,700,0,2000,null,false);
	Move("�G���", 0, 0, -360, null, true);
	Wait(80);
	MusicStart("SE05",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, -576, null, true);
	Zoom("�G���", 200, 550, 550, Dxl3, false);
	Move("�G���", 200, -512, -302, Dxl3, true);
	FadeFFR("�G���", 0,1000, 100, 0, 0, 20,null, true);


//�����t�A�@�ɓ����ȏ��𔭐������ăK�[�h���邪�A�K�K�K�K�b�ƏՌ����傫���B

	CreateSE("SE00","se�퓬_����_������01");
	MusicStart("SE00",0,700,0,2000,null,false);
	Move("�G���", 300, -1590, -700, Dxl3, false);
	Zoom("�G���", 300, 5000, 5000, Dxl3, false);
	FadeDelete("�G������", 300, Dxl3, false);
	Wait(100);
	Fade("�G���@����", 600, 1000, Axl3, false);
	Zoom("�G�@�h��O", 300, 1000, 1000, Dxl3, false);
	Move("�G�@�h��*", 340, -700, @0, Dxl3, false);
	Fade("�G�@�h��O", 300, 1000, Dxl3, true);
	Move("�G�@�h��*", 8000, -720, @0, null, false);

	Wait(200);

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�@�F�h�䔒", 0, 1000, null, true);

	Move("�G�@�h��*", 0, -720, @0, null, false);
	Fade("�G�@�h��O", 0, 0, null, true);
	Fade("�G�@�h��", 0, 1000, null, true);
	Fade("�G�@�h���", 0, 500, null, true);
	Fade("�G�@�h���", 1000, 0, null, false);
	Zoom("�G�@�h���", 10000, 1100, 1100, null, false);

	Wait(50);
	Fade("�G�@�F�h�䔒", 100, 0, null, false);


//�q�b�g�G�t�F�N�g����
	CreateSE("SE21","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE22","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE23","se�퓬_�Ō�_�q�b�g��04");

	CreateTextureEXadd("�G�����ʉΉ�", 4900, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	CreateMaskEX("��", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("��", 0, 2000, 2000, null, true);
	CreateColorEXadd("��/�G�F��", 4890, "FFFFFF");

	Position("@�G�@�h��O", $x1, $y1);//���_���擾

//�����_���q�b�g�G�t�F�N�g01��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$�_���[�W�q=190;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);
	MusicStart("SE21",0,600,0,1200,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("�G�@�h��", 0,1000, 100, 0, 0, 60,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�@�h��", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�
//�����_���q�b�g�G�t�F�N�g02��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$�_���[�W�q=190;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);
	MusicStart("SE22",0,600,0,1200,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("�G�@�h��", 0,1000, 100, 0, 0, 60,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�@�h��", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�
//�����_���q�b�g�G�t�F�N�g03��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$�_���[�W�q=190;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);
	MusicStart("SE23",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	CreateVOICE("�@","dm07/2500140a06");
	MusicStart("�@",0,1500,0,1000,null,false);

	Wait(30);

	FadeFFR3("�G�@�h��", 0,1000, 100, 0, 0, 60,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�@�h��", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�
//�����_���q�b�g�G�t�F�N�g04��������������������������������������������������
	Zoom("�G�����ʉΉ�", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("�G�����ʉΉ�", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("�G�����ʉΉ�", 0, 300, null, true);
	Fade("�G�����ʉΉ�", 200, 0, null, false);
	Zoom("�G�����ʉΉ�", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("��", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$�_���[�W�q=190;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);
	MusicStart("SE24",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	CreateVOICE("�@","dm07/2500140a06");
	MusicStart("�@",0,1500,0,1000,null,false);

	Wait(30);

	FadeFFR3("�G�@�h��", 0,1000, 100, 0, 0, 60,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�@�h��", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�
//�����_���q�b�g�G�t�F�N�g05��������������������������������������������������
//�z���C�g�A�E�g
	Fade("�G�@�F�h�䔒", 200, 1000, Axl3, true);
	Wait(500);

	$�_���[�W�q=190;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(10,$�����t�g�o);
	RMDControlOutR(3000);

	Delete("�G���");
	Delete("�G�@�h��*");
	Delete("�G������*");
	Delete("��*");
	Delete("�G���Η�*");
	Delete("�G������");
	Delete("�G���@����");

	CreateTextureSP("�G�w�i��", 10, Center, InBottom, "cg/bg/bg201022_0_���C���m�C�Y02���].jpg");
	Rotate("�G�w�i��", 0, @0, 180, @0, null,true);
	Zoom("�G�w�i��", 0, 1010, 1010, null, true);

	FadeDelete("�G�@�F�h�䔒", 1000, null, true);

	CreateSE("SE01","se�l��_����_���02");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000060a01">
"Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureEX("�G���Η�", 1110, -30, InBottom, "cg/ev/ev900���C���ΐ푓�tVS�m�C�Y���].jpg");
	Move("�G���Η�", 600, 0, 0, Dxl1, false);
	Fade("�G���Η�", 500, 1000, null, true);
	Delete("�G�w�i��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/8000070a06">
"Aoba&, instructions&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000080a01">
"&.&.&.Fuck!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�A�@�ɍU�����w������B�u���v�Z�b�g�B�@���m�C�Y�֌������Ă������ł����B
//���m�C�Y�A�E�T�M���h�L�����ɕό`�����ăK�[�h�B�@�A���t�̌��ɖ߂�B
//�������u���F�����Ŏ���o���͈̂Ⴄ�C������c�c�v

{	St("C",740, @0,@0,"st�m�C�Y_���ʐ��]_normal");
	FadeSt("C",0,true);}

	FadeDelete("�G���Η�", 200, null, true);

	FwPro("fw���t_�ʏ�_rage",3000,"fw���t_�ʏ�_shout");
//	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000090a01">
"Being controlled&.&.&. That can't be true&. Noiz&, wake up!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTxtinEffectS(4000,"�m�C�Y","��");

	CreateTextureEX("�G���G���e", 1120, Center, Middle, "cg/ev/ev960�E�T�M���h�L�퓬�ːi.jpg");
	CreateTextureEXadd("�G���G���e��", 1120, Center, Middle, "cg/ev/ev960�E�T�M���h�L�퓬�ːi.jpg");
	Zoom("�G���G���e*", 0, 7000, 7000, null, true);
	SetBlur("�G���G���e", true, 3, 300, 60, false);

	CreateTextureEX("�G���G��", 1110, 0, InBottom, "cg/ev/l/ev920�m�C�Y�ːia_l.jpg");
	SetBlur("�G���G��", true, 3, 300, 90, false);


//���m�C�Y�̍U���A�u���v�Z�b�g�B�E�T�M���h�L�������~�T�C���ɂȂ��Ĕ��ł���B
//�����t�A�@�ɓ����ȏ��𔭐������ăK�[�h�����邪�A���Ȃ�̃_���[�W�B

	Move("�G���G��", 300, -857, -290, Dxl2, false);
	Fade("�G���G��", 300, 1000, null, true);

	EffectTxtinS(700,"�m�C�Y","��");

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("�G��", 2000);
	Delete("�G���G��");
	SetBlur("�G��", true, 3, 500, 80, false);
	Zoom("�G��", 200, 2000, 2000, Axl3, false);
	Wait(194);
	Fade("�G���G���e*", 0, 1000, null, true);
	Zoom("�G���G���e*", 200, 1100, 1100, Dxl3, false);
	Fade("�G��", 100, 0, null, false);
	Wait(200);
	Fade("�G���G���e��", 200, 0, null, true);
	Delete("�G��");
	Delete("�G���K���e�U����");

	Zoom("�G���G���e*", 200, 3000, 3000, Dxl3, false);

	CreateColorEX("�G�F��", 5000, "FFFFFF");

	$�_���[�W�q=300;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

	CreateSE("SE010","se�l��_����_���02");
	MusicStart("SE010",0,1000,0,800,null,false);
	Fade("�G�F��", 200, 1000, Axl3, true);
	Wait(200);
	Delete("�G���G��*");
	DeleteAllSt(0,true);

	CreatePlainSP("�G��", 100);
	Zoom("�G��", 0, 2500, 2500, null, true);
	SetBlur("�G��", true, 3, 300, 30, false);
	Shake("�G��", 600, 0, 20, 0, 0, 1000, null, false);

	Zoom("�G��", 600, 1000, 1000, Dxl3, false);

	FadeDelete("�G�F��", 1000, null, true);
	RMDControlOutR(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000100a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G���G��", 1110, -650, -240, "cg/ev/l/ev900���C���ΐ푓�tVS�m�C�Y���]_�A�b�v_l.jpg");
	Move("�G���G��", 300, -580, -180, AxlDxl, false);
	Fade("�G���G��", 300, 1000, null, true);

{	Fw("fw���t_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000110a01">
"Noiz! Get it together! Hey!"

{	Fw("fw�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/8000120a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("�G���G���e", 1210, Center, Middle, "cg/ev/m/ev960�E�T�M���h�L�퓬�ːi_m.jpg");
	Zoom("�G���G���e", 0, 670, 670, null, true);

	EffectZoomDXadd(1220, 200, 200, "FFFFFF", "cg/ef/ef�N���A���̉̐�.jpg", false);
	Zoom("�G���G���e", 200, 1000, 1000, Dxl3, false);
	FadeFFR3("�G���G���e", 0,1000, 200, 0, 0, 60,null, true);

{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000130a01">
"! Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("�G��");

//�@�h��O��`
	EffectTxtinSDelete("�@","��");
	CreateTxtinEffectS(4000,"�@","��");

	CreateTextureEX("�G�@�h��O", 2110, -300, -190, "cg/ev/ev950�@�o�g���ėp�h��a.jpg");
	CreateTextureEX("�G�@�h��", 2110, -300, -190, "cg/ev/ev950�@�o�g���ėp�h��a_����.jpg");
	Zoom("�G�@�h��", 0, 1200, 1200, null, true);
	SetBlur("�G�@�h��", true, 3, 500, 60, false);
	CreateTextureEXadd("�G�@�h��Ή�", 2115, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("�G�@�h��Ή�", 0, 1500, 1500, null, true);

	CreateColorEX("�G�F�h�䔒", 4000, "FFFFFF");

//�@�h��O��`�F�����܂Ł�����

	EffectTxtinSDelete("�m�C�Y","��");
	CreateTxtinEffectS(4000,"�m�C�Y","��");

	CreateTextureEXadd("�G���G���e�M��", 3990, Center, Middle, "cg/data/slide_05_00_0.png");
	Zoom("�G���G���e�M��", 0, 1000, 800, null, true);

	CreatePlainEXadd("�G��", 5000);
	Zoom("�G��", 0, 1600, 1600, null, true);
	SetBlur("�G��", true, 3, 300, 60, false);

//���Ăуm�C�Y�̍U���A�u���v�Z�b�g�B�E�T�M���h�L�������~�T�C���ɂȂ��Ĕ��ł���B
//�����t�A�@�ɓ����ȏ��𔭐������ăK�[�h���邪�e����΂����B��_���[�W�B

	Fade("�G��", 0, 1000, null, true);
	Fade("�G��", 1000, 0, null, false);
	Zoom("�G��", 10000, 1000, 1000, null, false);

	EffectTxtinS(700,"�m�C�Y","��");

	CreateSE("SE00","se�퓬_�E�T�M_���ːi����");
	MusicStart("SE00",0,700,0,1000,null,false);
	Zoom("�G���G���e", 300, 2000, 2000, Dxl3, false);
	FadeFFR3("�G���G���e", 0,1000, 300, 0, 0, 60,null, false);
	Wait(150);

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);

	Fade("�G�@�h��O", 200, 1000, null, true);

	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�@�h��", 0, 500, null, true);
	Zoom("�G�@�h��", 3000, 1000, 1000, null, false);

	EffectTxtinS(700,"�@","��");

	//Wait(100);

	CreateSE("SE03","se�퓬_�E�T�M_���ːi01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("�G���G���e�M��", 0, 1000, null, true);
	Zoom("�G���G���e�M��", 1000, 1000, 300, null, false);
	Fade("�G���G���e�M��", 1000, 0, Axl3, false);

	$�_���[�W�q=1800;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(500,$�����t�g�o);

	FadeFFR3("@�G�@�h��O", 0,1000, 200, 0, 0, 80,null, false);

	CreateSE("SE02","se�퓬_�Ռ�_�h�ǌ���01");
	MusicStart("SE02",0,1000,0,1200,null,false);
	Fade("�G�@�h��Ή�", 0, 1000, null, true);
	Fade("�G�@�h��Ή�", 1000, 0, null, false);
	Zoom("�G�@�h��Ή�", 10000, 3000, 3000, null, false);

	Fade("�G�@�h��", 300, 0, null, false);
	DrawTransition("�G�@�h��", 300, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", false);

	Fade("�G�F�h�䔒", 200, 1000, Axl1, true);
	Delete("�G�@*");
	Delete("�G���G��*");
	Wait(500);

	CreateTextureSP("�G�w�i��", 10, Center, InBottom, "cg/bg/bg201023_0_���C���m�C�Y03���].jpg");

	FadeDelete("�G�F�h�䔒", 1000, null, true);
	RMDControlOutR(1000);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000140a01">
"Whoa!"

{	Fw("fw�@_�ʏ�_pain");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/8000150a06">
"Aoba&, an attack!"

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000160a01">
"God damnit!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�̍U���B�u�c�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă��āA�����Ƀr���b�Ɠd��������B
//�r�����������ēd�C���߁����]�Ɍ������Ęr���J���ĕ��B

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

	CreateSEEX("SE11","se�퓬_�Ռ�_�G�l���M�[驂�����01L");
	MusicStart("SE11",0,1000,0,1000,null,true);

	Fade("EF4", 200, 1000, Axl1, true);
	MusicStart("SE07",0,1000,0,1000,null,false);

	Wait(300);

	SetVolumeEX("SE11", 6000, 200, null);
	SetFrequency("SE11", 6000, 300, null);

//���m�C�Y�A�E�T�M���h�L�����ɕό`�����ăK�[�h�B�@�A���t�̌��ɖ߂�B
	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Request("���", Stop);
	Request("��*", Stop);
	Shake_LoopDelete();
	FlashQuickDelete(0,0);
	Delete("����*");
	Delete("���*");
	Delete("�@�U��");
	Delete("��*");
	Delete("EF*");

	CreateMovieEX("�G������", 4000, Center, Middle, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G������", 0, 4500, 3500, null, true);
	Fade("�G������", 0, 1000, null, true);

	CreateTextureSP("�G���G��", 2100, Center, -440, "cg/ev/l/ev900���C���ΐ푓�tVS�m�C�Y���]_�A�b�v_l.jpg");
	Zoom("�G���G��", 0, 500, 500, null, true);

	CreateColorEXadd("�G�F��", 20000, "FFFFFF");
	CreateColorEXadd("�G�F����", 5000, "FFFFFF");
	CreateColorEXadd("�G�F�@����", 4990, "FFFFFF");
	DrawTransition("�G�F�@����", 0, 0, 300, 100, null, "cg/data/slide_03_00_1.png", true);

	Fade("�G�F�@����", 6000, 1000, null, false);
	DrawTransition("�G�F�@����", 6000, 300, 500, 100, null, "cg/data/slide_03_00_1.png", false);
	Move("�G���G��", 6000, -480, 520, Axl3, false);
	Zoom("�G���G��", 6000, 2000, 2000, Axl3, false);

	SetVolumeEX("SE11", 6000, 1000, null);
	SetFrequency("SE11", 6000, 1500, null);

	$�_���[�W�k=0;
	$���m�C�Y�g�o=$���m�C�Y�g�o-$�_���[�W�k;
	RMDControlInL(0,$���m�C�Y�g�o);

	DrawDelete("�G����", 150, 100, null, "slide_01_01_1", true);

	Wait(5100);

	SetVolumeEX("SE*", 150, 0, null);

	Wait(400);

	//SetVolumeEX("@dm*", 150, 1, null);
	SetVolumeEX("@dm011", 150, 1, null);

	CreateSE("SE21","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE21",0,1000,0,1000,null,false);

	CreateSE("SE22","se�퓬_�Ռ�_�j��01");
	MusicStart("SE22",0,1000,0,1000,null,false);

	$�_���[�W�k=1200;
	$���m�C�Y�g�o=$���m�C�Y�g�o-$�_���[�W�k;
	RMDControlInL(1000,$���m�C�Y�g�o);
	RMDControlOutL(0);

	Fade("�G�F��", 100, 1000, null, true);
	Wait(3000);
	WaitKey(2000);

	Delete("�G�F�@*");
	Delete("�G������*");
	Delete("�G���G��");
	Delete("�G��");

	Fade("�G�F����", 0, 1000, null, true);
	Delete("�G�F��");

	CreateMovieEX("�G������", 6000, Center, Middle, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G������", 0, 4500, 3500, null, true);

	CreateTextureEX("�G���G���e", 5110, Center, Middle, "cg/ev/m/ev960�E�T�M���h�L�퓬�ːi_m.jpg");
	Zoom("�G���G���e", 0, 700, 700, null, true);

	SetVolumeEX("@dm011", 0, 450, null);

	CreateSE("SE01","se�퓬_�E�T�M_���ːi01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�G���G���e", 200, 1000, 1000, null, false);
	Fade("�G������", 0, 1000, null, true);
	DrawTransition("�G���G���e", 200, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", false);
	FadeFFR3("�G���G���e", 0,1000, 200, 0, 0, 60,null, true);

//���m�C�Y�̍U���F�u��v�Z�b�g�B�E�T�M���h�L�����ꂼ�ꂳ��ɑ傫�Ȕ����~�T�C���ɂȂ��Ĕ��ł���B
//�����t�A�@�ɓ����ȏ��𔭐������ăK�[�h���邪�e����΂����B��_���[�W�B

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/8000170a01">
"!!!"

{	Fw("fw�@_�ʏ�_shout");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/8000180a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F�Ö�", 10000, "000000");
	CreateColorEX("�G�F����", 9900, "FFFFFF");

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);

	Fade("�G�F����", 200, 1000, Axl3, false);
	Zoom("�G���G���e", 200, 5000, 5000, Axl3, false);
	FadeFFR3("�G���G���e", 0,1000, 200, 0, 0, 60,null, true);

	Wait(300);

	CreateSE("SE01","se�[��_���__�����01");
	MusicStart("SE01",0,1000,0,800,null,false);
	RMDControlInR(1000,0);
	RMDControlOutR(500);

	Fade("�G�F�Ö�", 3000, 1000, null, true);
	//Wait(2000);
	ClearFadeAll(0, true);
	//Wait(1000);

//�����t�̕����ƃA�i�E���X����A��Ԃ����������B
//�����C�����猻�����E��

//�����t�@�C��["dm2390_vs.nss"]

}
