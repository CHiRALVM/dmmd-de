//<continuation number="350">
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


scene dm0725_vs.nss_MAIN
{

$TEXTBOX_TYPE="���C��";

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
	#ev900���C���ΐ푓�tVS���]1=true;
	#ev900���C���ΐ푓�tVS���]1_�A�b�v=true;

	//�����o�����̏�����
	EffectTxtinDelete();
	TiesMovieDelete();
	RMDControlDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0730.nss";

}


scene dm0725_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	RMDControlRDefault($���t�g�o);//5000
	RMDControlLDefault($���]�e�g�o);//3500
	$�����t�g�o=$���t�g�o;
	$�����]�e�g�o=$���]�e�g�o;
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	TextBoxDelete(0);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg402051_1_��������֎~��无�ʂ�");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

$TEXTBOX_TYPE="";

================================================
//���@���[�g�̏ꍇ�A�����œ��]���o�ꂷ�镪��_
================================================

	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	CreatePlainEX("�G��", 100);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("@�G�F��", 300, 1000, Axl3, true);
	Wait(100);
	Fade("@�G��", 0, 1000, null, true);
	DrawEffect("@�G��", 5000, "Ripple", 500, 100, null);
	Delete("@OnBG*");
	Fade("@�G�F��", 3000, 0, null, true);
	Delete("@�G�F��");

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
At that moment&, I felt like I was sinking into the ground&.

No way&, this again&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateMaskEX("�G��", 0, Center, Middle, "cg/data/slide_02_00_1.png", false);
	SetVertex("�G��", center, top);
	CreateColorEX("�G��/�G�F��", 5000, "000000");

	Zoom("�G��", 2000, 1000, 2000, Axl3, false);
	Move("�G��", 20000, @0, 1152, null, false);

	Fade("�G��/�G�F��", 500, 1000, null, false);
	Zoom("�G��", 5000, 1000, 20000, AxlDxl, true);

	CreateSE("SE01","se�[��_���C��_�����g01L");
	MusicStart("SE01",2000,700,0,500,null,true);



	PrintGO("��w�i", 30000);
	CreateColorSP("�G�F��", 5000, "000000");
	FadeDelete("��w�i", 0, null, true);

	TiesMovieSet("�]�����C��a",2000);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

//�Ó]���ɐ퓬�n�f�ނ��`���Ă����܂�
	CreateTxtinEffect("�@",4000);
	//CreateTxtinEffect("���]",4000);
	//RMScaningSet();
	//RMScaningCSet("���]�e");
//�Ó]���ɐ퓬�n�f�ނ��`���Ă����܂��F�����܂Ł�����

	TiesMovieStart();

	DrawDelete("�G�F��", 500, 100, Axl2, "slide_02_01_1", true);

	Wait(1000);
	WaitKey(1000);

	TiesMovieNEXT();

	Wait(1000);
	WaitKey(1000);

	SetVolumeEX("@SE*", 2000, 0, null);
	SetVolumeEX("@EFWIN/SE*", 2000, 0, null);

	CreateSE("SE02","se�[��_���__����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G�F��", 1000, 1000, AxlAuto, true);

	Wait(1000);
	WaitKey(2000);

	TiesMovieDelete();

$TEXTBOX_TYPE="���C��";

//�����C���t�B�[���h�W�J
	PrintGO("��w�i", 20000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	CreateMovieSP("�G������", 20, Center, Middle, true, false, "dx/mv�t�B�[���h�p�u���b�N.ngs");
	CreateTextureSP("�G���w�i", 10, Center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	CreateSurfaceEX("�G���ʃT�t", 1000,1000,"@�G������");
	SetSurface("�G���w�i","�G���ʃT�t");
	Fade("�G���ʃT�t", 0, 1000, null, true);

	Zoom("�G���ʃT�t", 0, 5000, 5000, null, true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("��w�i");
	FadeDelete("�G�F��", 3000, null, true);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�A�i�E���X�z
<voice name="�A�i�E���X" class="�A�i�E���X" src="voice/dm07/2500020e10">
"Now configuring the Rhyme Field&. Now configuring the Rhyme Field&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	CreateSoundAkk("�A�i�E���X", "voice/dm07/2500020e10");//�u���C���t�B�[���h�A�Z�b�e�B���O���B
	SoundEffect("�A�i�E���X","CONCERTHALL");
	MusicStart("�A�i�E���X",0,2000,0,1000,null,true);

	Zoom("�G���ʃT�t", 5000, 1000, 1000, DxlAuto, false);
	Wait(2000);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500030a01">
"&.&.&.I knew it&. This is Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 10000);
	Zoom("�G���ʃT�t", 0, 1000, 1000, null, false);
	FadeDelete("�G��", 300, null, true);

	SoundPlay("@dm010",0,450,true);//�d�]�o�g��
	SetVolumeEX("�A�i�E���X", 3000, 0, null);

//���l�^�̘@�������
	CoilStartSet();
	St("C",1740, @0,@0,"st�@_�ʏ�_normal");
	Position($C_��, $x1, $y1);
	RhymeDrawSet("�@�O���l�^",1750,$x1,$y1,"cg/st/st�@_�ʏ�_normal.png");
	CreateSE("SE01a","se�[��_���C��_����01");

	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("�@�O���l�^");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm07/2500040a06">
"Yeah&. And we've been pulled in by force again&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500050a01">
"Another Drive-By&.&.&.! But my opponent isn't Noiz again&,
 right? Who in the world&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�A�i�E���X�z
<voice name="�A�i�E���X" class="�A�i�E���X" src="voice/dm07/2500060e10">
"Rhyme field set-up complete&. Now deploying field&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/
	//CreateVOICE("�A�i�E���X","dm07/2500060e10");
	CreateSoundAkk("�A�i�E���X", "voice/dm07/2500060e10");//�u���C���t�B�[���h�A�Z�b�g�A�b�v�`�v
	SoundEffect("�A�i�E���X","CONCERTHALL");
	MusicStart("�A�i�E���X",0,2000,0,1000,null,false);
	$SETime = RemainTime("�A�i�E���X");
	Wait($SETime);
	SetVolumeEX("�A�i�E���X", 300, 0, null);

	CreateSE("SE01","se�[��_���C��_�A���[�g01");
	MusicStart("SE01",0,700,0,500,null,false);

	SetVolumeEX("@dm*", 1250, 0, null);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 1000, 1000, Axl1, true);

	Wait(2000);

	CreateTextureSP("�G���w�i", 10, Center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");

	Delete("�@�O��*");
	Delete("@�G���ʃT�t");
	DeleteAllSt(0,true);
	FadeDelete("�G�F��", 1000, null, true);

	CreateProcessEX("�v���Z�X", "LProc_dm0725_vs_01Act");
	Request("�v���Z�X", Start);

//�����]�i�z���O�����j�������B�I�[�����C�g��Unknown�B
	CoilStartSet();
	CreateSE("SE01a","se�[��_���C��_����01");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500070a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G���ΐ�", 1100, -680, -440, "cg/ev/l/ev900���C���ΐ푓�tVS���]1_l.jpg");
	Fade("�G���ΐ�", 1000, 1000, null, true);

	Move("�G���ΐ�", 4000, -30, -150, DxlAuto, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500080a01">
"Hey&, is that&.&.&.!?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500090a01">
"Isn't that Toue?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 5000);
	Move("�G���ΐ�", 0, -30, -150, DxlAuto, false);
	FadeDelete("�G��", 200, null, true);

	SoundPlay("@dm019",0,450,true);//���]�̃e�[�}���]

	//St("C",740, @0,@0,"st���]_�ʏ�_normal");
	//FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500100b02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�����]�̓j�������

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500110b02">
"&.&.&.I've found you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500120a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G���K���e�U��", 1120, Center, -140, "cg/ev/evf04�K���e_�퓬�\��.jpg");
	CreateTextureEXadd("�G���K���e�U����", 1120, Center, -140, "cg/ev/evf04�K���e_�퓬�\��.jpg");
	Zoom("�G���K���e�U��*", 0, 7000, 7000, null, true);
	SetBlur("�G���K���e�U��", true, 3, 500, 60, false);

	CreateTextureEXover("�G���K���e���C", 1120, Center, -140, "cg/ev/evf04�K���e_�퓬�\��_�K��.png");
	Zoom("�G���K���e���C", 1, 1200, 1200, null, false);
	DrawEffect("�G���K���e���C", 0, "SuperWave", 20, 20, null);

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("�G��", 2000);
	Delete("�G���ΐ�");
	SetBlur("�G��", true, 3, 500, 80, false);
	Zoom("�G��", 200, 2000, 2000, Axl3, false);
	Wait(194);
	Fade("�G���K���e�U��*", 0, 1000, null, true);
	Zoom("�G���K���e�U��*", 200, 1100, 1100, Dxl3, false);
	Fade("�G��", 100, 0, null, false);
	Wait(200);
	Fade("�G���K���e���C", 200, 1000, null, false);
	Fade("�G���K���e�U����", 200, 0, null, true);
	Delete("�G��");
	Delete("�G���K���e�U����");

//�����]�A�u�H�v���Z�b�g�B
//�������Z�b�g�����������Ȃ��B

//�[����͌���
	CreateSE("MSE01","se�퓬_���C��_��͔���01");
	CreateSE("MSE02","se�퓬_���C��_��͐Z��01");

	CreatePlainEXadd("�G���U��͌��ʌ�", 4010);
	CreateEffectSP("�G���U��͌���", 4000, Center, Middle, 1024, 576, "Plain");
	Fade("�G���U��͌���", 0, 0, null, true);

	MusicStart("MSE01",0,700,0,1050,null,false);
	Zoom("�G���U��͌���*", 0, 2000, 2000, null, true);
	SetBlur("�G���U��͌���", true, 3, 200, 80, false);
	Fade("�G���U��͌���", 0, 500, null, true);
	Fade("�G���U��͌��ʌ�", 0, 1000, null, true);
	Fade("�G���U��͌��ʌ�", 900, 0, null, false);
	Zoom("�G���U��͌��ʌ�", 10000, 2200, 2200, Dxl3, false);
	Wait(100);
	MusicStart("MSE02",0,700,0,1000,null,false);
	Zoom("�G���U��͌���", 10000, 1000, 1000, Dxl3, false);
	Fade("�G���U��͌���", 600, 0, null, true);

//�@�K���̎���𔒂��ʂ������������сA���ꂼ�ꑓ�t�̕��֍����Ŕ��ł���B

	CreateTextureEXsub("�G�w�i", 1910, Center, Middle, "cg/ef/efx02�Ήԓd��02.jpg");
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	SetBlur("�G�w�i", true, 2, 500, 50, false);

	CreateSE("SE011","se�[��_����_�͓��]02");
	CreateSE("SE012","se�[��_����_�͓��]02");
	CreateSE("SE013","se�[��_����_�͓��]02");
	CreateSE("SE014","se�[��_����_�͓��]02");

	MusicStart("SE011",0,700,0,1000,null,false);
	Move("�G�w�i", 0, -240, -150, null, true);
	Zoom("�G�w�i", 200, 3000, 3000, null, false);
	FadeFFR("�G�w�i", 0,1000, 100, 0, 0, 60,null, true);
	Fade("�G�w�i", 0, 0, null, true);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	MusicStart("SE012",0,700,0,1000,null,false);
	Move("�G�w�i", 0, 220, 140, null, true);
	Zoom("�G�w�i", 200, 5000, 5000, null, false);
	FadeFFR("�G�w�i", 0,1000, 100, 0, 0, 60,null, true);
	Fade("�G�w�i", 0, 0, null, true);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	MusicStart("SE013",0,700,0,1000,null,false);
	Move("�G�w�i", 0, 210, -140, null, true);
	Zoom("�G�w�i", 200, 5000, 5000, null, false);
	FadeFFR("�G�w�i", 0,1000, 100, 0, 0, 60,null, true);
	Fade("�G�w�i", 0, 0, null, true);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	MusicStart("SE014",0,700,0,1000,null,false);
	Move("�G�w�i", 0, -180, 150, null, true);
	Zoom("�G�w�i", 200, 5000, 5000, null, false);
	FadeFFR("�G�w�i", 0,1000, 100, 0, 0, 60,null, true);
	Fade("�G�w�i", 0, 0, null, true);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,500,null,false);
	CreateSE("SE03","se�퓬_����_�����؋�01");
	CreateMovieEX("�G������", 3990, Center, Middle, true, true, "dx/mv0003�W����04_��.ngs");
	DrawTransition("�G������", 1, 0, 500, 100, null, "cg/data/slide_05_01_0.png", true);
	Zoom("�G������", 0, 3000, 2000, null, true);

	CreateTextureEX("�G���ΐ�", 2110, -380, -460, "cg/ev/l/ev900���C���ΐ푓�tVS���]1_l.jpg");

	MusicStart("SE03",2000,500,0,200,null,false);
	Fade("�G������", 300, 500, null, false);
	Move("�G���ΐ�", 340, -740, @0, Axl3, false);
	Fade("�G���ΐ�", 300, 1000, null, true);
	Move("�G���ΐ�", 10000, -760, @0, null, false);
	Delete("�G���K��*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500130a01">
"Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�@�h��O", 2210, -330, -330, "cg/ev/m/ev950�@�o�g���ėp�h��a_m.jpg");
	CreateTextureEX("�G�@�h��", 2210, -330, -330, "cg/ev/m/ev950�@�o�g���ėp�h��a_����_m.jpg");
	CreateTextureEXadd("�G�@�h���", 2210, -330, -330, "cg/ev/m/ev950�@�o�g���ėp�h��a_����_m.jpg");
	SetVertex("�G�@�h���", 1090, 620);
	Zoom("�G�@�h���", 0, 1200, 1200, null, true);
	SetBlur("�G�@�h���", true, 3, 300, 100, false);

	CreateColorEX("�G�@�F�h�䔒", 5000, "FFFFFF");
	CreateSE("SE01","se�퓬_�Ռ�_�h�ǔ���01");

//���@�ɃV�[���h���点�Ėh�䂷��B
//�@�΂��[��Ƃ͂������B
	CreateSE("SE00","se�퓬_����_������01");
	MusicStart("SE00",0,700,0,2000,null,false);
	Move("�G���ΐ�", 300, -1120, @0, Dxl3, false);
	Move("�G�@�h��*", 340, -700, @0, Dxl3, false);
	Fade("�G�@�h��O", 300, 1000, Dxl3, true);
	Move("�G�@�h��*", 10000, -720, @0, null, false);

	Wait(200);

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);

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

	Wait(1300);

	SetVolumeEX("SE*", 150, 0, null);
	CreateSE("SE11","se�퓬_�Ռ�_�h�ǌ���01");
	MusicStart("SE11",0,700,0,1000,null,false);
	CreateSE("SE12","se����_�K���X_�����04");
	MusicStart("SE12",0,1000,0,2000,null,false);
	Fade("�G�@�F�h�䔒", 0, 1000, null, true);
	Delete("�G������");
	Fade("�G�@�h��O", 0, 1000, null, true);

	Wait(500);

	Fade("�G�@�h��", 400, 0, null, false);
	Fade("�G�@�F�h�䔒", 100, 0, null, true);

	Wait(100);

//�q�b�g�G�t�F�N�g����
	CreateSE("SE21","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE22","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE23","se�퓬_�Ō�_�q�b�g��04");

	CreateTextureEXsub("�G�����ʉΉ�", 4900, Center, Middle, "cg/ef/efx02�Ήԓd��02.jpg");
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

	MusicStart("SE21",0,600,0,1200,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("�G�@�h��O", 0,1000, 100, 0, 0, 60,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�@�h��O", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�
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

	MusicStart("SE22",0,600,0,1200,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("�G�@�h��O", 0,1000, 100, 0, 0, 60,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�@�h��O", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�
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

	MusicStart("SE23",0,1000,0,1000,null,false);
	Fade("��/�G�F��", 0, 1000, null, true);

	CreateVOICE("�@","dm07/2500140a06");
	MusicStart("�@",0,1500,0,1000,null,false);

	Wait(30);

	FadeFFR3("�G�@�h��O", 0,1000, 100, 0, 0, 60,null, false);
	Fade("��/�G�F��", 100, 0, null, true);

	Move("�G�@�h��O", 0, $x1, $y1, null, true);//���̈ʒu�ɖ߂�
//�����_���q�b�g�G�t�F�N�g04��������������������������������������������������
//�z���C�g�A�E�g
	Fade("�G�@�F�h�䔒", 200, 1000, Axl3, true);
	Wait(500);

	$�_���[�W�q=850;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(1000,$�����t�g�o);
	RMDControlOutR(3000);

	Delete("�G�@�h��*");
	Delete("�G������*");
	Delete("��*");
	Delete("�G���ΐ�*");

	FadeDelete("�G�@�F�h�䔒", 1000, null, true);

	CreateSE("SE01","se�l��_����_���02");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm07/2500140a06">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500150a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("�@*", 150, 0, null);
	CreateTextureEX("�G�����]", 1110, -380, -130, "cg/ev/l/ev900���C���ΐ푓�tVS���]1_�A�b�v_l.jpg");
	Move("�G�����]", 30000, -580, @0, DxlAuto, false);
	Fade("�G�����]", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500160b02">
"Heh&.&.&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500170a01">
"Shit&.&.&.!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500180a01">
"How are her attacks so brutal!? &.&.&.They're&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�@����", 2110, -512, -333, "cg/ev/m/ev950�@�A���픭��_m.jpg");
	SetBlur("�G�@����", true, 3, 500, 80, false);

//�@�����O��`
	CreateTextureEX("�G�@�a��", 2210, -520, -580, "cg/ev/m/ev950�@�o�g���ėp�U��a_�l���@_m.png");
	CreateTextureEX("�G�@�a���w�i", 2200, Center, Middle, "cg/ev/m/ev950�@�o�g���ėp�U��a_�w�i_m.jpg");
	CreateTextureEXadd("�G�@�a�����M", 2220, Center, Middle, "cg/ev/ev950�@�o�g���ėp�U��a_���ʌ��M.png");
//�@�����O��`�F�����܂Ł�����

//�����t�̍U���B�u��v�Z�b�g�B�@�̘r���璷���n������яo���A�؂荞�݂ɍs������B

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,500,null,false);
	SetFrequency("SE01", 500, 1000, null);
	Fade("�G�@����", 300, 1000, null, false);
	BezierMove("�G�@����", 800, (-512,-333){0,0}{-150,0}(-200,-100), Dxl1, true);

	CreatePlainEXadd("�G��", 5000);
	Zoom("�G��", 0, 1200, 1200, null, true);
	SetBlur("�G��", true, 3, 300, 100, false);

	EffectTxtinA("�@","��");

	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE02",0,700,0,500,null,false);
	Fade("�G��", 0, 300, null, true);
	FadeDelete("�G��", 2000, null, false);
	Zoom("�G��", 10000, 1600, 1600, null, false);
	EffectTxtinB("�@","��");

	$�_���[�W�k=0;
	$�����]�e�g�o=$�����]�e�g�o-$�_���[�W�k;
	RMDControlInL(0,$�����]�e�g�o);

	CreateSE("SE03","se�퓬_�@_����01");
	Move("�G�@�a��", 250, -870, @0, Dxl3, false);
	Fade("�G�@�a��", 200, 1000, null, false);
	Fade("�G�@�a���w�i", 200, 1000, null, false);
	Wait(150);
	MusicStart("SE03",0,700,0,1000,null,false);
	Move("�G�@�a��", 10000, -890, @0, null, false);
	Fade("�G�@�a�����M", 0, 1000, null, true);
	DrawTransition("�G�@�a�����M", 50, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);
	Wait(100);
	FadeDelete("�G�@�a�����M", 300, null, false);

	Wait(100);

//�@�K������䶗��̃V�[���h�Ŗh��B���S�ɒe�����B�@���߂��Ă���B
	CreateSE("SE11","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE11",0,700,0,1000,null,false);
	CreateTextureSP("�G���K���e", 3110, Center, -520, "cg/ev/l/evf04�K���e_�퓬�\��_l.jpg");
	CreatePlainEXadd("�G��", 5000);
	Zoom("�G��", 0, 1400, 1400, null, true);
	SetBlur("�G��", true, 3, 200, 80, false);

	$�_���[�W�k=20;
	$�����]�e�g�o=$�����]�e�g�o-$�_���[�W�k;
	RMDControlInL(1000,$�����]�e�g�o);

	Fade("�G��", 0, 500, null, true);
	Zoom("�G��", 10000, 1600, 1600, null, false);
	Wait(100);
	Fade("�G��", 1000, 0, null, true);

	RMDControlOutL(0);

	Wait(500);

	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201012_0_���C���p�u���b�N�t�B�[���h.jpg");
	Delete("�G�@*");
	Delete("�G�����]");
	FadeDelete("�G���K���e", 500, null, true);
	Delete("�G��");

{	Fw("fw���t_�ʏ�_hard2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500190a01">
"We aren't even making a scratch!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500200a01">
"Besides&, why is Toue&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintGO("��w�i", 5000);
	CreateTextureSP("�G�����]", 110, Center, -30, "cg/ev/ev900���C���ΐ푓�tVS���]1_�A�b�v.jpg");
	FadeDelete("��w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500210b02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����]�A�u�H�v���Z�b�g�B

	CreateTextureEX("�G���K���e�U��", 1120, Center, -140, "cg/ev/evf04�K���e_�퓬�\��.jpg");
	CreateTextureEXadd("�G���K���e�U����", 1120, Center, -140, "cg/ev/evf04�K���e_�퓬�\��.jpg");
	Zoom("�G���K���e�U��*", 0, 7000, 7000, null, true);
	SetBlur("�G���K���e�U��", true, 3, 500, 60, false);

	CreateTextureEXover("�G���K���e���C", 1120, Center, -140, "cg/ev/evf04�K���e_�퓬�\��_�K��.png");
	Zoom("�G���K���e���C", 1, 1200, 1200, null, false);
	DrawEffect("�G���K���e���C", 0, "SuperWave", 20, 20, null);

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("�G��", 2000);
	Delete("�G���ΐ�");
	SetBlur("�G��", true, 3, 500, 80, false);
	Zoom("�G��", 200, 2000, 2000, Axl3, false);
	Wait(194);
	Fade("�G���K���e�U��*", 0, 1000, null, true);
	Zoom("�G���K���e�U��*", 200, 1100, 1100, Dxl3, false);
	Fade("�G��", 100, 0, null, false);
	Wait(200);
	Fade("�G���K���e���C", 200, 1000, null, false);
	Fade("�G���K���e�U����", 200, 0, null, true);
	Delete("�G��");
	Delete("�G���K���e�U����");

//�[����͌���
	CreateSE("MSE01","se�퓬_���C��_��͔���01");
	CreateSE("MSE02","se�퓬_���C��_��͐Z��01");

	CreatePlainEXadd("�G���U��͌��ʌ�", 4010);
	CreateEffectSP("�G���U��͌���", 4000, Center, Middle, 1024, 576, "Plain");
	Fade("�G���U��͌���", 0, 0, null, true);

	MusicStart("MSE01",0,700,0,1050,null,false);
	Zoom("�G���U��͌���*", 0, 2000, 2000, null, true);
	SetBlur("�G���U��͌���", true, 3, 200, 80, false);
	Fade("�G���U��͌���", 0, 500, null, true);
	Fade("�G���U��͌��ʌ�", 0, 1000, null, true);
	Fade("�G���U��͌��ʌ�", 900, 0, null, false);
	Zoom("�G���U��͌��ʌ�", 10000, 2200, 2200, Dxl3, false);
	Wait(100);
	MusicStart("MSE02",0,700,0,1000,null,false);
	Zoom("�G���U��͌���", 10000, 1000, 1000, Dxl3, false);
	Fade("�G���U��͌���", 600, 0, null, true);

	Wait(500);

//��`�F�K���U���̔g��
	CreateMaskEX("�G��", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("�G��/�G���K���ő�U����䶗��e�C", 1200, Center, Middle, "cg/ef/ef�N���A�̉̐�_l.jpg");
	Zoom("�G��/�G���K���ő�U����䶗��e�C", 0, 1000, 1067, null, true);
	CreateColorEX("�G�F��", 5000, "000000");

//�@�K���̎���ɔ����ʂ������������яオ��A���ꂼ�ꏬ���Ȑn�ɕω�����B
//�@���ꂪ���������ĉ�]�A���t�̕��֌������Ă���B

//�K���e�C���オ��
	CreateSE("SE23a","se�퓬_���C��_��͔���01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se�[��_����_�͓��]02");
	MusicStart("SE23b",0,700,0,800,null,false);
	Rotate("�G��/�G���K���ő�U����䶗��e�C", 50000, @0, @0, 1080, null,false);
	Fade("�G��/�G���K���ő�U����䶗��e�C", 500, 500, null, false);
	DrawTransition("�G��/�G���K���ő�U����䶗��e�C", 6000, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("�G��", 3000, 10000, 10000, null, false);

	Wait(2000);

//�K���U������
	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 250, 0, 1000, 100, Axl1, "cg/data/circle_03_00_0.png", true);
	Delete("�G��");
	Delete("�G��*");

	Wait(2000);

//�@�h���`
	CreateTextureEX("�G�@�h��", 5110, -1470, -450, "cg/ev/l/ev950�@�o�g���ėp�h��a_l.jpg");
	SetVertex("�G�@�h��", 1970, 680);
	Zoom("�G�@�h��", 0, 5000, 5000, null, true);
	CreateColorEX("�G�F��", 9900, "000000");
//�@�h���`�F�����܂Ł�����

	CreateSE("SE51","se�[��_����_���ǂ남�ǂ�01");
	MusicStart("SE51",2000,1000,0,500,null,true);
	Zoom("�G�@�h��", 10000, 1000, 1000, null, false);
	Fade("�G�@�h��", 1000, 1000, null, true);

	CreateVOICE("�@","dm07/2500220a06");
	MusicStart("�@",0,1500,0,1000,null,false);

	Wait(2000);

	SetFrequency("SE51", 500, 2000, null);
	Zoom("�G�@�h��", 200, 800, 800, Dxl3, false);
	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 200, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);
	SetVolumeEX("SE*", 150, 0, null);

	$�_���[�W�q=0;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(0,$�����t�g�o);

	Wait(1000);

	CreateSE("SE42a","se�[��_���__�����01");
	MusicStart("SE42a",0,1000,0,1000,null,false);
	CreateSE("SE42b","se�퓬_���C��_��͔����������]03");
	MusicStart("SE42b",0,500,0,800,null,false);

	$�_���[�W�q=3400;
	$�����t�g�o=$�����t�g�o-$�_���[�W�q;
	RMDControlInR(500,$�����t�g�o);

	PrintGO("��w�i", 5000);
	CreateColorSP("�G�F��", 5000, "FFFFFF");

	CreateColorEX("�G�F��", 5000, "000000");
	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201012_0_���C���p�u���b�N�t�B�[���h.jpg");
	Zoom("�G�w�i", 0, 1200, 1200, null, true);
	SetBlur("�G�w�i", true, 3, 500, 200, false);
	CreateSE("SE01a","se�l��_����_���02");
	CreateSE("SE01b","se�l��_�Ռ�_�]�|01");

	FadeDelete("��w�i", 100, null, true);
	Zoom("�G�w�i", 10000, 1000, 1000, null, false);
	FadeDelete("�G�F��", 1000, null, true);
	Wait(500);

	SetVolumeEX("�@", 150, 0, null);

	Zoom("�G�w�i", 300, 10000, 10000, Dxl3, false);
	Rotate("�G�w�i", 300, @0, @0, 3600, Axl3,false);
	Wait(250);
	SetVolumeEX("@dm*", 300, 0, null);
	MusicStart("SE01a",0,700,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�G�F��", 0, 1000, null, true);

	RMDControlOutR(0);

/*
	Fw("fw�@_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm07/2500220a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//���@�A�V�[���h�𒣂邪�h������Ȃ��B
//�@������΂����B���\�ȃ_���[�W�B
//�@���t���_���[�W�󂯂�B

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500230a01">
"Whoaa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F���t�Ƌ��Ɍ��ɏ�Ԃ̂͂������炱��ȗ]�T�͖����͂��v

/*
{	St("C",740, @0,@0,"st�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm07/2500240a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
*/

	PrintGO("��w�i", 9900);
	CreateTextureSP("�G�w�i", 10, Center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	FadeDelete("��w�i", 2000, null, true);

	Wait(500);

	CreatePlainSP("�G��", 5000);

//�z���O�������]�Č�
	CreateTextureEXadd("�G���G���]�f��", 740, Center, InBottom, "cg/st/st���]_�ʏ�_normal.png");
	Move("�G���G���]�f��", 0, @0, @30, null, true);
	Position("@�G���G���]�f��", $x1, $y1);
	CreateStencil("�G�g",0,$x1,$y1,128,"cg/st/st���]_�ʏ�_normal.png",false);
	SetAlias("�G�g","�G�g");
	CreateColorEX("�G�g/�G���F���G���n", 730, "3399CC");
	CreateTextureEXadd("�G�g/�G�����]����", 760, Center, 576, "cg/ev/x/ev550�}�X�N02.png");
	Zoom("�G�g/�G�����]����", 0, @0, 500, null, true);
	CreateTextureEXover("�G�g/�G�����]�摜�r", 759, Center, Middle, "cg/data/noize_01_00_0.png");
	MoveFFP1("@�G�g/�G�����]�摜�r",300);

	Fade("�G�g/�G�����]�摜�r", 0, 100, null, true);
	Fade("�G�g/�G���F���G���n", 0, 800, null, false);
	Fade("�G���G���]�f��", 0, 500, null, true);
	CreateProcessEX("�v���Z�X", "LProc_dm0725_vs_02Act");
	Request("�v���Z�X", Start);

	FadeDelete("�G��", 200, null, true);

	SoundPlay("@dm021",0,450,true);//���]�ƑΌ�

	//St("C",740, @0,@0,"st���]_�ʏ�_normal");
	//FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500250b02">
"No matter what you do&, it still won't be enough&."

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500260a01">
"Guh&.&.&.&."

{	DeleteFw();}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500270b02">
"Right now&, you can't even attempt to stop me&. It's
 impossible&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500280a01">
"&.&.&.&.&."

{	DeleteFw();}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500290b02">
"If you want to stop me&.&.&. Be my guest and destroy
 yourself&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500300b02">
"By your own actions&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500310a01">
"!"

{	DeleteFw();}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500320b02">
"I eagerly anticipate the outcome&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm07/2500330b02">
"Heh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����]���������ƃu���āA�ˑR������
	CreateSE("SE00","se����_�R�C��_�Q�[�W���܂�01L");
	MusicStart("SE00",0,700,0,1000,null,true);
	CreateColorEXadd("�G�g/�G���F���G��F", 800, "FFFFFF");
	Fade("�G�g/�G���F���G��F", 300, 1000, null, false);
	DrawTransition("�G�g/�G���F���G��F", 500, 0, 1000, 100, null, "cg/data/blind_02_00a_1", true);
	SetVolumeEX("SE*", 150, 0, null);
	Wait(200);
	Delete("�G���G���]�f��");
	Delete("�G�g/�G���F���G���n");
	Delete("�G�g/�G�����]����");
	Delete("�G�g/�G�����]�摜�r");
	MoveFFP1stop();

	CreateSE("SE01","se����_�R�C��_�^�[�Q�b�g��");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("�G�g", 200, 0, 5000, AxlDxl, true);
	Delete("�G�g");

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�A�i�E���X�z
<voice name="�A�i�E���X" class="�A�i�E���X" src="voice/dm07/2500340e10">
"According to the administrator's rules&, we will now be forcibly shutting down Rhyme&. Now logging off players&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/
	CreateSoundAkk("�A�i�E���X", "voice/dm07/2500340e10");//�u�����҂̎w���ɂ��A���C���`�v
	SoundEffect("�A�i�E���X","CONCERTHALL");
	MusicStart("�A�i�E���X",1000,1500,0,1000,null,true);

	Wait(500);

{	Fw("fw���t_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/2500350a01">
"&.&.&.Toue!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����C�����E���猻�����E��
	SetVolumeEX("�A�i�E���X", 300, 0, null);

	CreateSE("SE00","se�[��_���C��_�A���[�g01");
	MusicStart("SE00",0,700,0,500,null,false);

	Wait(1000);

	SetVolumeEX("@dm*", 1250, 0, null);

	CreateSE("SE01","se�[��_���__����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 2000, 1000, Axl1, true);

	Wait(2000);

	CreateSE("SE02","se�[��_���C��_�����g01L");
	MusicStart("SE02",2000,700,0,500,null,true);
	TiesMovieSet("�]�����C��b",2000);
	TiesMovieStart();

	Fade("�G�F��", 1000, 0, null, true);

	Wait(1000);
	WaitKey(1000);

	TiesMovieNEXT();

	Wait(1000);
	WaitKey(1000);

	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE03","se�[��_���__����01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Fade("�G�F��", 1000, 1000, Axl3, true);
	TiesMovieDelete();

	Wait(500);

//===========================================
//�����܂�
//===========================================


//�����t�@�C��["dm0730.nss"]

	ClearFadeAll(3000, true);
	Wait(2000);
	WaitPlay("SE03", null);

}

/*
while(1){

//�������u���o�F�T���v���X�N���v�g�A�������ʓo�ꉉ�o�y���`�z�v
//�������ʓo�ꉉ�o�y���`�z

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ev/m/ev010�K��a_m.jpg");

	CreateTextureEXmul("�G�����ʍ���", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01a.png");
	CreateTextureEXmul("�G�����ʉE��", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01d.png");
	CreateTextureEXmul("�G�����ʉE��", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01b.png");
	CreateTextureEXmul("�G�����ʍ���", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01c.png");

	Move("�G�����ʍ���", 0, @180, @180, null, false);
	Move("�G�����ʉE��", 0, @-180, @-180, null, false);
	Move("�G�����ʉE��", 0, @-180, @180, null, false);
	Move("�G�����ʍ���", 0, @180, @-180, null, false);

	WaitKey();

	Fade("�G�����ʍ���", 200, 1000, DxlAuto, false);
	Move("�G�����ʍ���", 200, @-30, @-30, DxlAuto, false);
	Wait(75);
	Fade("�G�����ʉE��", 200, 1000, DxlAuto, false);
	Move("�G�����ʉE��", 200, @30, @30, DxlAuto, false);
	Wait(75);
	Fade("�G�����ʉE��", 200, 1000, DxlAuto, false);
	Move("�G�����ʉE��", 200, @30, @-30, DxlAuto, false);
	Wait(75);
	Fade("�G�����ʍ���", 200, 1000, DxlAuto, false);
	Move("�G�����ʍ���", 200, @-30, @30, DxlAuto, false);
	Wait(75);
	//Zoom("�G������*", 1000, 500, 500, null, true);

	//WaitKey();

	Wait(250);

	Move("�G�����ʍ���", 500, @-150, @-150, DxlAuto, false);
	Move("�G�����ʉE��", 500, @150, @150, DxlAuto, false);
	Move("�G�����ʉE��", 500, @150, @-150, DxlAuto, false);
	Move("�G�����ʍ���", 500, @-150, @150, DxlAuto, false);
	Rotate("�G������*", 500, @0, @0, 180, DxlAuto,true);
	Rotate("�G������*", 0, @0, @0, 0, DxlAuto,true);

	//Zoom("�G������*", 1000, 1000, 1000, DxlAuto, true);

	Wait(100);

	CreateTextureEXmul("�G�����ʏ�", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01ea.png");
	CreateTextureEXmul("�G�����ʉE", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01eb.png");
	CreateTextureEXmul("�G�����ʉ�", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01ec.png");
	CreateTextureEXmul("�G�����ʍ�", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��01ed.png");
	Fade("�G�����ʏ�", 0, 1000, null, false);
	Fade("�G�����ʉE", 0, 1000, null, false);
	Fade("�G�����ʉ�", 0, 1000, null, false);
	Fade("�G�����ʍ�", 0, 1000, null, false);
	DrawTransition("�G�����ʏ�", 800, 0, 1000, 10, null, "cg/data/slide_01_00_0.png", false);
	DrawTransition("�G�����ʉE", 800, 0, 1000, 10, null, "cg/data/slide_02_00_0.png", false);
	DrawTransition("�G�����ʉ�", 800, 0, 1000, 10, null, "cg/data/slide_01_00_1.png", false);
	DrawTransition("�G�����ʍ�", 800, 0, 1000, 10, null, "cg/data/slide_02_00_1.png", true);


	//WaitKey();

	CreateTextureEXmul("�G�����ʓ�", 1100, Center, Middle, "cg/ef/efv��������_���]_��_�O��02.png");
	Request("�G�����ʓ�", Smoothing);
	Zoom("�G�����ʓ�", 0, 2000, 2000, null, true);
	Rotate("�G�����ʓ�", 0, @0, @0, 900, null,true);
	SetBlur("�G�����ʓ�", true, 2, 500, 50, false);

	Zoom("�G�����ʓ�", 300, 1000, 1000, null, false);
	Fade("�G�����ʓ�", 300, 1000, null, false);
	Rotate("�G�����ʓ�", 300, @0, @0, 0, null,true);

	WaitKey(50);

	//WaitKey();

	FadeFFR2("�G�x�[�X", 0,1000, 200, 0, 0, 20,DxlAuto, false);

//�������ʔ������o

	CreateTextureSPadd("�G�����ʈ�", 1120, Center, Middle, "cg/ef/efv��������_���]_��b_s.png");//�k���f�ޔ�
	Request("�G�����ʈ�", Smoothing);
	//Zoom("�G�����ʈ�", 0, 1150, 1150, null, true);//�ʏ�T�C�Y
	Zoom("�G�����ʈ�", 0, 2300, 2300, null, true);//�k���f�ޔ�

	CreateTextureSPmul("�G�����ʓ�", 1100, Center, Middle, "cg/ef/efv��������_���]_��a.png");
	Request("�G�����ʓ�", AddRender);
	SetBlur("�G�����ʓ�", false);
	//Zoom("�G�����ʓ�", 0, 2000, 2000, null, true);//�ʏ�T�C�Y

	Delete("�G�����ʍ���");
	Delete("�G�����ʉE��");
	Delete("�G�����ʍ���");
	Delete("�G�����ʉE��");
	Delete("�G�����ʏ�");
	Delete("�G�����ʉ�");
	Delete("�G�����ʍ�");
	Delete("�G�����ʉE");

	CreateTextureEX("�G�����ʓ����", 1100, Center, Middle, "cg/ef/efv��������_���]_��a_s.png");//�k���f�ޔ�
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


/*
//�������u���o�F�T���v���X�N���v�g�A�K���e�̓��C�v

	CreateTextureSP("�G���w�i��", 1011, Center, Middle, "cg/ev/evf04�K���e_�퓬�\��_�w�i.jpg");
	//SetTone("�G���w�i��", NegaPosi);
	CreateTextureSP("�G���w�i", 1010, Center, Middle, "cg/ev/evf04�K���e_�퓬�\��_�w�i.jpg");
	//DrawEffect("�G���w�i", 0, "LowWave", 50, 50, null);
	//Zoom("�G���w�i", 0, 670, 670, null, true);
	CreateTextureSP("�G���l��", 1100, Center, Middle, "cg/ev/evf04�K���e_�퓬�\��_�K��.png");
	CreateTextureSPover("�G���l�����C", 1101, Center, Middle, "cg/ev/evf04�K���e_�퓬�\��_�K��.png");
	DrawEffect("�G���l�����C", 0, "SuperWave", 20, 20, null);
	Zoom("�G���l��", 0, 800, 800, null, true);
	CreateTextureSP("�G�����ʌ�", 1090, Center, Middle, "cg/ev/evf04�K���e_�퓬�\��_����01.png");
	Rotate("�G�����ʌ�", 0, @0, @0, @90, null,true);
	CreateTextureSPadd("�G������", 1190, Center, Middle, "cg/ev/evf04�K���e_�퓬�\��_����01.png");
	//Zoom("�G������", 0, 700, 700, null, true);

	WaitKey();

	LP0507_Meimetsu2();

while(1)
{
	$EFTime=20000;
	DrawTransition("�G���w�i��", $EFTime, 1000, 0, 200, null, "cg/data/circle_02_00_1.png", false);
	Fade("�G���w�i��", 10000, 0, null, false);
	Zoom("�G���w�i��", 10000, 2000, 2000, null, false);
	Rotate("�G���w�i��", $EFTime, @0, @0, @360, null,false);
	Rotate("�G���w�i", $EFTime, @0, @0, @360, null,true);

	Fade("�G���w�i��", 0, 800, null, false);
	Zoom("�G���w�i��", 0, 1000, 1000, null, false);

}

function LP0507_Meimetsu2()
{
	CreateProcessEX("LP0507_01", "LP0507_MeimetsuAct2");
	Request("LP0507_01", Start);
}

function LP0507_MeimetsuAct2()
{
	begin:
	while(1){
	Fade("@�G������*", 0, 1000, null, true);
	//Wait(5);
	Fade("@�G������*", 10, 0, null, true);
	Wait(5);
	}
}
*/

/*
//�z���O�������]�Č�
	CreateTextureEXadd("�G���G���]�f��", 740, Center, InBottom, "cg/st/st���]_�ʏ�_normal.png");
	Move("�G���G���]�f��", 0, @0, @60, null, true);
	Position("@�G���G���]�f��", $x1, $y1);
	CreateStencil("�G�g",0,$x1,$y1,128,"cg/st/st���]_�ʏ�_normal.png",false);
	SetAlias("�G�g","�G�g");
	CreateColorEX("�G�g/�G���F���G���n", 730, "3399CC");
	CreateTextureEXadd("�G�g/�G�����]����", 760, Center, 576, "cg/ev/x/ev550�}�X�N02.png");
	Zoom("�G�g/�G�����]����", 0, @0, 500, null, true);
	CreateTextureEXover("�G�g/�G�����]�摜�r", 759, Center, Middle, "cg/data/noize_01_00_0.png");
	MoveFFP1("@�G�g/�G�����]�摜�r",300);

	Fade("�G�g/�G�����]�摜�r", 0, 100, null, true);
	Fade("�G�g/�G���F���G���n", 0, 800, null, false);
	Fade("�G���G���]�f��", 0, 500, null, true);
	CreateProcessEX("�v���Z�X", "LProc_dm0725_vs_02Act");
	Request("�v���Z�X", Start);
*/