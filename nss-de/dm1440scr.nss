//<continuation number="10">
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


scene dm1440scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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


	//�����󕜋A
	Request("@SE00", UnLock);


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1450scr.nss";

}


scene dm1440scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	if($PreGameName=="dm1430.nss")
	{
	Request("@SE00", UnLock);
	}else{
	CreateSE("SE00","se�[��_����_�͑��t01");
	MusicStart("SE00",0,700,0,1000,null,false);
	}

	PrintBG("��w�i", 30000);
	CreateColorSPadd("�G�F����", 6000, "FFFFFF");
	//CreateColorSP("�G�F��", 10, "FFFFFF");

	//CreateStencil("�}�X�N",0,Center,172,128,"cg/st/l/st�g��_�o�[�T�N�\�I_normal_l.png",false);
	//CreateStencil("�}�X�N",0,Center,-80,128,"cg/st/l/st�g��_�o�[�T�N�\�I_normal_l.png",false);
	//SetAlias("�}�X�N","�}�X�N");
	//SetVertex("�}�X�N", 520, 192);
	//Request("�}�X�N", Smoothing);
	//Zoom("�}�X�N", 0, 1500, 1500, null, true);

	CreateTextureSP("�}�X�N", 4000, Center, Middle, "cg/ef/ef�g���̌^.png");

	//CreateColorSP("�G�F��", 4900, "000000");
	CreateColorSP("�G�F�����n", 10, "000000");

	CreateSE("SEL01","se����_�f�ʋ@_��]03");
	CreateSE("SEL02","se����_�f�ʋ@_��]02L");

	CreateTextureSPmul("�G�w�i", 3990, Center, Middle, "cg/data/circle_02_00_1.png");
	CreateMovieEXover("�G���������", 3980, Center, Middle, true, true, "dx/mv�X�g���{.ngs");
	Fade("�G���������", 0, 300, null, true);
	Zoom("�G���������", 0, 3200, 2400, null, true);

	CreateTextureEX("�G����", 3000, Center, Middle, "cg/ev/ev137�g�����ob.jpg");
	SetTone("�G����", Monochrome);
	CreateTextureEX("�G����", 3000, Center, Middle, "cg/ev/ev129�g���A��̎h��������.jpg");
	SetTone("�G����", Monochrome);
	CreateTextureEX("�G���O", 3000, Center, Middle, "cg/ev/ev124�g����������.jpg");
	SetTone("�G���O", Monochrome);
	CreateTextureEX("�G���l", 3000, Center, Middle, "cg/ev/ev117�g���A���t�������.jpg");
	SetTone("�G���l", Monochrome);
	CreateTextureEX("�G����", 3000, Center, Middle, "cg/ev/ev025�������z���g��a.jpg");
	SetTone("�G����", Monochrome);
	CreateTextureEX("�G���Z", 3000, Center, Middle, "cg/ev/ev006�g���o��a.jpg");
	SetTone("�G���Z", Monochrome);
	CreateTextureEX("�G����", 3000, Center, Middle, "cg/ev/ev142�c���g���Ǝh��.jpg");
	SetTone("�G����", Monochrome);
	CreateTextureEX("�G����", 3000, Center, Middle, "cg/ev/ev120�c�����̍g���Ƒ��t.jpg");
	SetTone("�G����", Monochrome);
	Zoom("�G��*", 0, 0, 0, null, true);

	CreateStencil("�G�g���t��",0,Center,InBottom,128,"cg/fu/fu���t_�ʏ�_normal.png",false);
	SetAlias("�G�g���t��","�G�g���t��");
	CreateStencil("�G�g����",0,Center,InBottom,128,"cg/fu/fu����_�ʏ�_normal.png",false);
	SetAlias("�G�g����","�G�g����");
	Move("@�G�g*", 0, @0, @60, null, true);
	Zoom("@�G�g*", 0, 2000, 2000, null, true);

	CreateSE("LPSE01","se�[��_����_�m�C�Y01L");
	MusicStartSet("LPSE01",700,0,500,null,false);
	CreateTextureEX("�G�g���t��/��", 3110, Center, Middle, "cg/data/noize_01_00_0.png");
	CreateTextureEX("�G�g����/��", 3110, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G�g���t��/��", 0, 1200, 1200, null, true);
	Zoom("�G�g����/��", 0, 1200, 1200, null, true);

	MusicStart("SEL01",2000,400,0,600,null,true);
	MusicStart("SEL02",2000,400,0,500,null,true);

	Wait(1000);

	Delete("��w�i");
	FadeDelete("�G�F����", 2000, null, true);

//����ʂ����ɂ���Ƙc��ŉߋ��֔�΂����悤�ȉ��o
//���g���̉ߋ����΂΂΂��Ƒ��n���̂悤�ɉ�z�i�w�i�ŁH�j
//�����̂�����̉ߋ���z�ł���

//=======================================================
//�@����������ƁA���̒��ŉf��������n�߂��B
//�@����̓R�}����̖����f��̂悤�ɂǂ�ǂ�ڂ�ς���Ă����B

//�@�g�����{�B�ɖ߂��Ă������̋L�����낤�B

//�@�傫�ȉ��~�ƁA���܂���Ɏ��������Ă�c���g���B
//�@�g���炵���I�b�T���B�ׂɗ������Ⴂ�����̗���B

//�@�X�C�̉΂��h���a���̕z�c�ɐQ���ׂ�A����Ɏh�𒤂��Ă���g���B
//�@���̕\��͂Ђǂ��c�݁A�܂���������~���Ă���B
//�@�����̒ɂ݂��䖝���Ă�悤�Ɍ�����B

//�@���̂��Ɓ\�\��ʂ���񂾁B

//�@��������̐l�Ԃ��|��Ă钆�A�����������g�����ЂƂ�ŘȂ�ł���B
//=======================================================

	$LProc_dm1440scr_02ActWT=1000;
	CreateProcessEX("�v���Z�X", "LProc_dm1440scr_02Act");
	Request("�v���Z�X", Start);

	LProc_dm1440scr_01("@�}�X�N");

	CreateSE("LMSE01","se�퓬_����_������01");
	MusicStartSet("LMSE01",700,0,450,null,false);
	LMacr_dm1440scr_01("@�G����","8");//�T
	LMacr_dm1440scr_01("@�G����","3");//�R
	LMacr_dm1440scr_01("@�G���O","7");//�V
	LMacr_dm1440scr_01("@�G���l","1");//�P
	LMacr_dm1440scr_01("@�G����","9");//�X
	LMacr_dm1440scr_01("@�G���Z","4");//�S
	LMacr_dm1440scr_01("@�G����","6");//�U
	LMacr_dm1440scr_01("@�G����","5");//�T

	Request("Proc_dm1440scr_01", Stop);
	Zoom("@�}�X�N", 1000, 7500, 7500, Axl2, false);

	$LProc_dm1440scr_02ActWT=10;
	Zoom("@�G�g*", 5000, 5000, 5000, null, false);
	SetFrequency("@LPSE01", 5000, 2000, AxlAuto);

	CreateSoundAkk("�g��", "voice/dm14/4000010a02");
//	CreateVOICESE("�g��", "voice/dm14/4000010a02");
	$SETime = RemainTime("�g��");
	SoundEffect("�g��","CAVE");
	MusicStart("�g��",0,2000,0,1000,null,false);

	WaitKey($SETime);

	SetVolumeEX("�g��", 300, 0, null);

	Wait(2000);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/4000010a02">
"Ahhhhhhhhhhhhhhhhhhhhhhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/

//����ʃz���C�g�A�E�g
//���g���̖ϑz���E�֓˓�
//���w�i�͔��̂܂܁H

	ClearFadeAll(0, true);
	Wait(1000);

//�����t�@�C��["dm1450scr.nss"]

}
