$Revision: 137 $
#include "nss/function_stand.nss"
#include "nss/function_process.nss"

#include "nss/function_dm.nss"
#include "nss/function_coil.nss"
#include "nss/function_selspec.nss"
#include "nss/function_rm.nss"

#include "nss/function_lc_akk.nss"
#include "nss/function_lc_ara.nss"
#include "nss/function_lc_chiyo.nss"
#include "nss/function_lc_cono.nss"
#include "nss/function_lc_oga.nss"
#include "nss/function_lc_shima.nss"
#include "nss/function_lc_toho.nss"

#include "nss/function_lc_ikk.nss"

//���}�N��������Ƀ}�N���ɂĂ܂Ƃ߂Ē�`
//=============================================================================//
.//�܂Ƃߒ�`
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SystemInit
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SystemInit()
{
	$SYSTEM_text_interval = 48;
	$SYSTEM_spt_name=$�\����+$�X�N���v�g�o�[�W����;

	//����ΓI������������
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;

	//����x�ǂݍ��񂾂�ēx�ǂݍ���ł��܂�Ȃ��悤�ɁB
	//��BGM�S��
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("�^�C�g���x��", 100, 0, 0, "cg/sys/title/���[�f�B���O.png");
			//Fade("�w�i�P", 0, 0, null, true);
			//Fade("�w�i�P", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init=true;
	}
	//��TEXTBOX�n�Ƃ��̑��V�X�e���摜�n
	if(!$BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init=true;
	}

	//Fade("�^�C�g���x��", 300, 0, null, true);
	//Delete("�^�C�g���x��");

}

//���X�N���v�g�`����`�֘A
//=============================================================================//
.//��b��`
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SystemSet
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SystemSet()
{
	//�������Ή�����
	SystemConquest();

	//���\�ߓǂ݂����摜������΁E�E�E

}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SystemConquest
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SystemConquest()
{
	//�������Ή�
	Conquest("nss/function.nss",null,true);
	Conquest("nss/sys_config.nss",null,true);
	Conquest("nss/function_stand.nss",null,true);
	Conquest("nss/function_process.nss",null,true);

	Conquest("nss/function_dialog.nss",null,true);

	Conquest("nss/function_move.nss",null,true);
	Conquest("nss/function_select.nss",null,true);

	Conquest("nss/function_dm.nss",null,true);
	Conquest("nss/function_coil.nss",null,true);
	Conquest("nss/function_coiltext.nss",null,true);
	Conquest("nss/function_selspec.nss",null,true);
	Conquest("nss/function_rm.nss",null,true);

	Conquest("nss/function_lc_akk.nss",null,true);
	Conquest("nss/function_lc_ara.nss",null,true);
	Conquest("nss/function_lc_chiyo.nss",null,true);
	Conquest("nss/function_lc_cono.nss",null,true);
	Conquest("nss/function_lc_oga.nss",null,true);
	Conquest("nss/function_lc_shima.nss",null,true);
	Conquest("nss/function_lc_toho.nss",null,true);

	Conquest("nss/function_lc_ikk.nss",null,true);

	Conquest("nss/sys_save.nss",null,true);

//	Conquest("nss/function_quick.nss",null,true);
//	Conquest("nss/sys_twitter.nss",null,true);

}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..LoadBox
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function LoadBox()
{
	//���ʏ�E�B���h�E�摜
	//"���C��"�A"�\�I"�A"�\�I��"
	//���L�����f�t�H���g�͒ʏ�
	$TEXTBOX_TYPE="�f�t�H���g";
	$FwNut="����";

	//�ʏ�
	CreateTexture("boxHN", 19000, 0, 403, "cg/sys/adv/��b�E�B���h�E.png");
	SetAlias("boxHN", "boxHN");
	Fade("boxHN",0,0,null,false);
	Request("boxHN", Lock);
	Request("boxHN", Hideable);

	CreateTexture("boxFN", 19000, 0, 362, "cg/sys/adv/��E�B���h�E.png");
	SetAlias("boxFN", "boxFN");
	Fade("boxFN",0,0,null,false);
	Request("boxFN", Lock);
	Request("boxFN", Hideable);

	//�\�I
	CreateTexture("boxHB", 19000, 0, 403, "cg/sys/adv/��b�E�B���h�E��.png");
	SetAlias("boxHB", "boxHB");
	Fade("boxHB",0,0,null,false);
	Request("boxHB", Lock);
	Request("boxHB", Hideable);

	CreateTexture("boxFB", 19000, 0, 362, "cg/sys/adv/��E�B���h�E��.png");
	SetAlias("boxFB", "boxFB");
	Fade("boxFB",0,0,null,false);
	Request("boxFB", Lock);
	Request("boxFB", Hideable);

	//�\�I�E��
	CreateTexture("boxHW", 19000, 0, 403, "cg/sys/adv/��b�E�B���h�E��.png");
	SetAlias("boxHW", "boxHW");
	Fade("boxHW",0,0,null,false);
	Request("boxHW", Lock);
	Request("boxHW", Hideable);

	CreateTexture("boxFW", 19000, 0, 362, "cg/sys/adv/��E�B���h�E��.png");
	SetAlias("boxFW", "boxFW");
	Fade("boxFW",0,0,null,false);
	Request("boxFW", Lock);
	Request("boxFW", Hideable);

	//���C��
	CreateTexture("boxBL", 19000, 0, 326, "cg/sys/adv/���C����b�p�[�c�x�[�X.png");
	SetAlias("boxBL", "boxBL");
	Fade("boxBL",0,0,null,false);
	Request("boxBL", Lock);
	Request("boxBL", Hideable);

	CreateTexture("boxHL", 19000, 0, 405, "cg/sys/adv/���C����b�p�[�c�{�b�N�X.png");
	SetAlias("boxHL", "boxHL");
	Fade("boxHL",0,0,null,false);
	Request("boxHL", Lock);
	Request("boxHL", Hideable);

	CreateTexture("boxFL", 19000, 13, 361, "cg/sys/adv/���C����b�p�[�c�t�F�C�X.png");
	SetAlias("boxFL", "boxFL");
	Fade("boxFL",0,0,null,false);
	Request("boxFL", Lock);
	Request("boxFL", Hideable);


	//���ʏ�E�B���h�E�p
	CreateWindow("box0", 20001, 0, 0, 1024, 576, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);

	//�}�X�N
	CreateMask("FwMask01", 19001, 8, 374, "cg/sys/adv/��E�B���h�E�}�X�N.png",false);
	SetAlias("FwMask01", "FwMask01");
	Request("FwMask01", Lock);

	CreateMask("FwMask02", 19001, 13, 361, "cg/sys/adv/���C����b�p�[�c�t�F�C�X�}�X�N.png",false);
	SetAlias("FwMask02", "FwMask02");
	Request("FwMask02", Lock);

	//�G�t�F�N�g�E�R�C���邵�p
//	CreateWindow("EFWIN", 20000, 0, 0, 1024, 576, false);
//	SetAlias("EFWIN", "EFWIN");
//	Request("EFWIN", Lock);


	//���J�S���݂邵�p
	//CreateName("RateWindow");
	//SetAlias("RateWindow", "RateWindow");
	//Request("RateWindow", Lock);
}


//���X�N���v�g�`���F�{���Ăяo���O���`
//���C���Q�[�����yCallScene�O�z
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..GameMainSet
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function GameMainSet()
{
	//�f�o�b�O�ϐ���������
	//$DEBUG_cgbglist="";

	//�������S�ǂݐݒ�F���ǂ�
	//Conquest($ConGameName,$GameName2,false);//Main
	//Conquest($ConGameName,$GameName,false);//�{��Scene

	if(!$PLACE_reco){
		//���������ɃX�L�b�v�ƃI�[�g���[�h������
		#JIKOKU_auto_text_cancel=true;//���Ȃ�
		if(!#JIKOKU_auto_text_cancel){
			$SYSTEM_skip=false;
			#SYSTEM_skip_express=false;
			$SYSTEM_text_auto=false;
	
			//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł��P",YESNOCANCE,EXCLAMATION);
		}else if(#auto_log){
			#auto_log=false;
			$SYSTEM_text_auto_lock=false;
			$SYSTEM_text_auto=true;
	
			//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł��Q",YESNOCANCE,EXCLAMATION);
		}
	}

	//�Q�s���������ԍ�������
	$AddTextCount=1;
}

//���C���Q�[�����yCallScene��z
function GameMainSet2()
{
	//���b�f�f�o�b�O�p�Z�[�u�f�[�^�쐬
	//Save(5000);

	//�������S�ǂݐݒ����
	Conquest($ConGameName,$GameName2,true);//Main
	Conquest($ConGameName,$GameName,true);//�{��Scene

	//���b�f�f�o�b�O�p�F�Z�[�u�t�H���_��5000�t�H���_�Ɂu�V�[�����v�̃t�@�C�����œf���o��
	//$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
	//WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
	//$DEBUG_cgbglist="";
}

function GameBreak()
{
	//���Q�[���T�[�N�����u���C�N����ۂ�
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);
	PrintFadeNut("��w�i", 2000, true);

	ClockDelete(0,true);
	TextBoxDelete(0);

	$GameName = "";
	$GameCircle=false;
	//$GameTV=true;

	$SYSTEM_low_thread_priority=false;
	$SYSTEM_save_lock=false;
	$SYSTEM_load_lock=false;
	$SYSTEM_text_auto=false;
}

//���I���p�X�N���v�g�̍Ō�ɋL��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..EndScript
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function EndScript()
{
	if($GameClose){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("��w�i", 1000, true);

		//�����v���C���ԁF���v
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

		Exit();
	}else if($GameTV){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("��w�i", 1000, true);

		$GameName = "";
		$GameCircle=false;
		$GameTV=true;
	}else if(!$�G�L�X�g���^�C�g��){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("��w�i", 1000, true);
	}else{
		$GameName = "";
	}
}

//���G�L�X�g����z�p�F�{�Җ`���Ɏd����
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..ReConquest
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}

//����������������
//�yScene�擪�z
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SkipOut
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);
	ClearFadeAll(0,true);

	//����i�ɂ�肯��i�{�b�N�X�������j
	Fade("@box*", 0, 0, null, true);
	Fade("@Fw*",0,0,null,true);

	#SYSTEM_skip_express_minimum_time+=0;

	Wait(64);
}

//�yBox���z
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..BoxOut
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);
		ClearFadeAll(0,true);

		//����i�ɂ�肯��i�{�b�N�X�������j
		Fade("@box*", 0, 0, null, true);
		Fade("@Fw*",0,0,null,true);

		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}


//���f�o�b�O�p�FCG���X�g�f�o���p
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..DEBUG_cgbgcorrect
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
/*
function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//�t�@�C������'bg'�Ƃ��������񂪂���A�Ȃ��������̏ꍇ�̓��X�g�ɒǉ�
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//�t�@�C������'ev'�Ƃ��������񂪂���A�Ȃ��������̏ꍇ�̓��X�g�ɒǉ�
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}
*/


//���v���C���ԃ}�N��
//=============================================================================//
.//���v���C����
//=============================================================================//
function GetTime()
{
	//�����v���C���ԁF���v
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//�����v���C���ԁF�v���J�n
	#BEGIN_TIME=Time();
}


//���̓^�C�g�������}�N��
//=============================================================================//
.//���v���C����
//=============================================================================//
/*
//�S�L�X�ł��g�p//�S�L�X�ł�$�͔ԍ��̈������Ƃ�
function SceneChange($�͔ԍ�)
{
	//�S�L�X�p����
	if($�͔ԍ�>1){
		Enter1line();
	}

	$ChapterNum=$�͔ԍ�;
	$ChapterName=String("Episode%02d",$ChapterNum);
	VariableValue(#,$ChapterName,true);

	if($�͔ԍ�==1){$�͑�="�̓m��@�S�L�J��";}
	else if($�͔ԍ�==2){$�͑�="�̓m��@�@������";}
	else if($�͔ԍ�==3){$�͑�="�̓m�O�@���Q�Ǒz";}
	else if($�͔ԍ�==4){$�͑�="�̓m�l�@�Y���n����";}
	else if($�͔ԍ�==5){$�͑�="�̓m�܁@酉J����";}
	else if($�͔ԍ�==6){$�͑�="�̓m�Z�@�����V��";}
	$�͊ԑ}��="�@�@�@�@"+$�͑�;

	SetBacklog("�@",null,null);
	SetBacklog($�͊ԑ}��,null,null);
	SetBacklog("�@",null,null);

	Enter1line();
	//�S�L�X�p���������܂�
	
	if(#SceneSkip){
		//�X�L�b�v��蒴�����ɐݒ肷��
		#SYSTEM_skip_express=false;
		$SYSTEM_skip=false;
		//$SYSTEM_text_auto=false;
	}
}
*/
//�o�b�N���O�ł̃t�@�C���ƃt�@�C���̊ԂɂP�s�����p
function Enter1line()
{
	SetBacklog("�@",null,null);
}




//���X�N���v�g�ɂ����ăe�L�X�g���`����}�N���R�}���h
//=============================================================================//
.//�e�L�X�g��`
//=============================================================================//

//�e�L�X�g�A�C�R����r���ŕς������ꍇ�͂��g����������
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TextIconSet()
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//���ʏ�
function TextIconSet()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/N/line/next_%02d.png#2";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/N/page/next_%02d.png#2";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/N/auto/auto_%02d.png#2";
}
function TextIconSet2()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/N/line/next_%02d.png#2";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/N/page/next_%02d.png#2";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/N/auto2/auto_%02d.png#2";
}

//���\�I
function TextIconSetB()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/B/line/next_%02d.png#2";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/B/page/next_%02d.png#2";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/B/auto/auto_%02d.png#2";
}
function TextIconSetB2()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/B/line/next_%02d.png#2";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/B/page/next_%02d.png#2";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/B/auto2/auto_%02d.png#2";
}

//���\�I��
function TextIconSetW()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/W/line/next_%02d.png#2";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/W/page/next_%02d.png#2";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/W/auto/auto_%02d.png#2";
}
function TextIconSetW2()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/W/line/next_%02d.png#2";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/W/page/next_%02d.png#2";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/W/auto2/auto_%02d.png#2";
}

//�����C��
function TextIconSetL()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/L/line/next_%02d.png#4";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/L/page/next_%02d.png#4";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/L/auto/auto_%02d.png#4";
}



//��E�B���h�E�p��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..Fw
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//===============================
...�A�C�R��
//===============================
function FwIcon()
{
	$InFw=true;

	if($TEXTBOX_TYPE=="�\�I"){
		TextIconSetB2();
	}else if($TEXTBOX_TYPE=="�\�I��"){
		TextIconSetW2();
	}else if($TEXTBOX_TYPE!="���C��"){
		TextIconSet2();
	}

	//���v���Z�X��~�p
	StopFwPro();
}

//===============================
...Fw�Z�b�g�}�N��
//===============================
function FwSet($PreFwPic)
{
	$FwCount+=1;
	if($FwCount>10){$FwCount=0;}

	if($TEXTBOX_TYPE=="���C��"){
		$FwNutName=String("@FwMask02/%02d",$FwCount);
		$FwY=338;
	}else{
		$FwNutName=String("@FwMask01/%02d",$FwCount);
		$FwY=338;
	}

	$FwAlias=String("FwNut%02d",$FwCount);
	$FwNutPro=String("@FwNut%02d",$FwCount);

	if(Strstr($PreFwPic, "fw")){
		$FwData="cg/fw/"+$PreFwPic+".png";
		$FwType="fw";
	}else{
		$FwData="cg/nw/"+$PreFwPic+".png";
		$FwType="nw";
	}

	Request($FwNutName, UnLock);
	CreateTexture($FwNutName, 19001, -1000, -1000, $FwData);
	SetAlias($FwNutName, $FwAlias);
	Fade($FwNutPro, 0, 0, null, true);
	Request($FwNutPro, Hideable);
	if($OnFWPRO_kick){
		Request($FwNutPro, Lock);
	}
	//������o�O�΍�I
	Move($FwNutPro, 0, 0, $FwY, null, false);
}

//===============================
....�e�v�\���}�N��
//===============================
function FwMacro()
{
	if($TypeBeginIn){
		//��TypeBegin�̐擪�̂�
		if(!$OnFW&&!$OnFWPRO&&$OnFWPRO_kick){
			StopFwPro();
			Delete("@FwNut*");
			$OnFWPRO_kick=false;
		}

		if($OnFW||$OnFWPRO){
			//�������G�v���Z�X��~�p
			PostSt();
		}

		if($OnFW){
			Fade($TypeBeginNutF, 0, 1000, null, false);

			if($OnFWPRO_kick){
				//�����b�N�ݒu
				LockVideo(true);
				Delete("@FwNut*");
				Request("@FwNut*", UnLock);
				Fade($FwNut, 0, 1000, null, false);
				//�����b�N�ݒu
				LockVideo(false);
				$OnFWPRO_kick=false;
			}else{
				Fade($FwNut, 0, 1000, null, false);
				Fade($PreFwNut, 0, 0, null, true);
				Delete($PreFwNut);
			}

			$OnFW=false;
		}


		if($OnFWPRO){
			$PreFwNut=$FwNut;
			$FwNut=$FwNutPro;
			Request("�瑋�v���Z�X", Start);
			Request("�瑋�v���Z�X", Disused);

			$OnFWPRO_kick=true;
			$OnFWPRO=false;
		}

		$InFw=false;
	}
}



//===============================
...Fw�Z�b�g
//===============================
//�\�\�\�\�\�\�\�\�\
....//���ʏ�\��
//�\�\�\�\�\�\�\�\�\
function Fw($FwPic)
{
	//���A�C�R���ݒ�
	FwIcon();

	//���e�v��`
	$PreFwNut=$FwNut;
	FwSet($FwPic);
	$FwNut=$FwNutPro;
	$OnFW=true;

	//���e�v�}�N��
	FwMacro();
}

function FwProSetMacro()
{
	if($FwPic=="����"){

	}else if($FwPic=="���p"){
		$PreFwNut=$FwNut;
		$FwPic=$PreFwPic;
		FwSet($FwPic);
		$FwNut=$FwNutPro;
		$OnFW=true;
	}else{
		$PreFwNut=$FwNut;
		FwSet($FwPic);
		$FwNut=$FwNutPro;
		$OnFW=true;
	}
}

//�\�\�\�\�\�\�\�\�\
....//���o��
//�\�\�\�\�\�\�\�\�\
function FwPro($FwPic,$FwWait1,$FwPic1)
{
	//���A�C�R���ݒ�
	FwIcon();

	//���e�v��`
	FwProSetMacro();

	//���e�v��`�i�v���Z�X�p�j
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;

	CreateProcess("�瑋�v���Z�X", 150, 0, 0, "FadeFwMacro");
	SetAlias("�瑋�v���Z�X", "�瑋�v���Z�X");
	$OnFWPRO=true;

	//���e�v�}�N��
	FwMacro();
}

function FadeFwMacro(){

	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);

	Delete($PreFwNut);

	$OnFWPRO_kick=false;
	Wait(16);
}

//�\�\�\�\�\�\�\�\�\
....//���o���ˏo��
//�\�\�\�\�\�\�\�\�\
function FwPro2($FwPic,$FwWait1,$FwPic1,$FwWait2,$FwPic2)
{
	//���A�C�R���ݒ�
	FwIcon();

	//���e�v��`
	FwProSetMacro();

	//���e�v��`�i�v���Z�X�p�j
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;
	FwSet($FwPic2);
	$FwNut2=$FwNutPro;

	CreateProcess("�瑋�v���Z�X", 150, 0, 0, "FadeFadeFwMacro");
	SetAlias("�瑋�v���Z�X", "�瑋�v���Z�X");
	$OnFWPRO=true;

	//���e�v�}�N��
	FwMacro();
}

function FadeFadeFwMacro(){
	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);
	Delete($PreFwNut);

	Wait($FwWait2);
	Fade($FwNut2, 0, 1000, null, true);
	Fade($FwNut1, 0, 0, null, true);
	Delete($FwNut1);

	$OnFWPRO_kick=false;
	Wait(16);
}


//�\�\�\�\�\�\�\�\�\
....//���o���ˏo���ˏo��
//�\�\�\�\�\�\�\�\�\
function FwPro3($FwPic,$FwWait1,$FwPic1,$FwWait2,$FwPic2,$FwWait3,$FwPic3)
{
	//���A�C�R���ݒ�
	FwIcon();

	//���e�v��`
	FwProSetMacro();

	//���e�v��`�i�v���Z�X�p�j
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;
	FwSet($FwPic2);
	$FwNut2=$FwNutPro;
	FwSet($FwPic3);
	$FwNut3=$FwNutPro;

	CreateProcess("�瑋�v���Z�X", 150, 0, 0, "FadeFadeFwMacro");
	SetAlias("�瑋�v���Z�X", "�瑋�v���Z�X");
	$OnFWPRO=true;

	//���e�v�}�N��
	FwMacro();
}

function FadeFadeFwMacro(){
	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);
	Delete($PreFwNut);

	Wait($FwWait2);
	Fade($FwNut2, 0, 1000, null, true);
	Fade($FwNut1, 0, 0, null, true);
	Delete($FwNut1);

	Wait($FwWait3);
	Fade($FwNut3, 0, 1000, null, true);
	Fade($FwNut2, 0, 0, null, true);
	Delete($FwNut2);

	$OnFWPRO_kick=false;
	Wait(16);
}

//�\�\�\�\�\�\�\�\�\
....//���o���ˏo���ˏo���ˏo��
//�\�\�\�\�\�\�\�\�\
function FwPro4($FwPic,$FwWait1,$FwPic1,$FwWait2,$FwPic2,$FwWait3,$FwPic3,$FwWait4,$FwPic4)
{
	//���A�C�R���ݒ�
	FwIcon();

	//���e�v��`
	FwProSetMacro();

	//���e�v��`�i�v���Z�X�p�j
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;
	FwSet($FwPic2);
	$FwNut2=$FwNutPro;
	FwSet($FwPic3);
	$FwNut3=$FwNutPro;
	FwSet($FwPic4);
	$FwNut4=$FwNutPro;

	CreateProcess("�瑋�v���Z�X", 150, 0, 0, "FadeFadeFwMacro");
	SetAlias("�瑋�v���Z�X", "�瑋�v���Z�X");
	$OnFWPRO=true;

	//���e�v�}�N��
	FwMacro();
}

function FadeFadeFwMacro(){
	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);
	Delete($PreFwNut);

	Wait($FwWait2);
	Fade($FwNut2, 0, 1000, null, true);
	Fade($FwNut1, 0, 0, null, true);
	Delete($FwNut1);

	Wait($FwWait3);
	Fade($FwNut3, 0, 1000, null, true);
	Fade($FwNut2, 0, 0, null, true);
	Delete($FwNut2);

	Wait($FwWait4);
	Fade($FwNut4, 0, 1000, null, true);
	Fade($FwNut3, 0, 0, null, true);
	Delete($FwNut3);

	$OnFWPRO_kick=false;
	Wait(16);
}


//�\�\�\�\�\�\�\�\�\
....//����n���p
//�\�\�\�\�\�\�\�\�\
function StopFwPro()
{
	if($OnFWPRO_kick){
		Request("@�瑋�v���Z�X", Stop);
		Delete("@�瑋�v���Z�X");
		WaitAction("@�瑋�v���Z�X", null);
	}
}

function StopFwPro2()
{
	if($OnFWPRO_kick){
		Request("@�瑋�v���Z�X", Stop);
		Delete("@�瑋�v���Z�X");
		WaitAction("@�瑋�v���Z�X", null);

		$OnFWPRO_kick=false;
	}
}


//�\�\�\�\�\�\�\�\�\
....//���f���[�g
//�\�\�\�\�\�\�\�\�\
function DeleteFw()
{
//	Request("@FwNut*", UnLock);

	StopFwPro2();

	Fade($TypeBeginNutF, 0, 0, null, false);
	Fade($FwNut, 0, 0, null, false);
//	Request($FwNut, Disused);

	Request("@FwNut*", UnLock);
	Delete("@FwNut*");

	if($TEXTBOX_TYPE=="�\�I"){
		TextIconSetB();
	}else if($TEXTBOX_TYPE=="�\�I��"){
		TextIconSetW();
	}else if($TEXTBOX_TYPE!="���C��"){
		TextIconSet();
	}
}









....Fw�}�X�Nver
function FwMask($FwMaskX,$FwMaskY,$FwMaskImg)
{
	//���A�C�R���ݒ�
	FwIcon();

	$PreFwNut=$FwNut;

	$FwCount+=1;
	if($FwCount>10){$FwCount=0;}

	if($TEXTBOX_TYPE=="���C��"){
		$FwNutName=String("@FwMask02/%02d",$FwCount);
	}else{
		$FwNutName=String("@FwMask01/%02d",$FwCount);
	}

	$FwAlias=String("FwNut%02d",$FwCount);
	$FwNut=String("@FwNut%02d",$FwCount);

	$FwData=$FwMaskImg;//�ύX�ӏ�

	CreateTexture($FwNutName, 19001, -1000,1000, $FwData);
	SetAlias($FwNutName, $FwAlias);
	Fade($FwNut, 0, 0, null, true);
	Request($FwNut, Hideable);

	//������o�O�΍�I
	Move($FwNut, 0, $FwMaskX, $FwMaskY, null, false);

	$OnFW=true;

	//���e�v�}�N��
	FwMacro();
}














//�ʏ�E�B���h�E�c�p
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SetText
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SetText()
{
	SetMainTextBox();
	SetTextBase();
}

function SetMainTextBox()
{
	$LoadTextWsize=600;
	$LoadTextHsize=150;
	$SetTextX=347;//352
	$SetTextY=429;//427

	if($TEXTBOX_TYPE=="���C��"){
		TextIconSetL();
		$TypeBeginNut="@boxHL";
		$TypeBeginNutF="@boxFL";
		$TypeBeginIconX=951;
		$TypeBeginIconY=475;
	}else if($TEXTBOX_TYPE=="�\�I"){
		if(!$OnFW&&!$OnFWPRO){TextIconSetB();}
		$TypeBeginNut="@boxHB";
		$TypeBeginNutF="@boxFB";
		$TypeBeginIconX=54;//957
		$TypeBeginIconY=412;//457
	}else if($TEXTBOX_TYPE=="�\�I��"){
		if(!$OnFW&&!$OnFWPRO){TextIconSetW();}
		$TypeBeginNut="@boxHW";
		$TypeBeginNutF="@boxFW";
		$TypeBeginIconX=54;//957
		$TypeBeginIconY=412;//457
	}else{
		if(!$OnFW&&!$OnFWPRO){TextIconSet();}
		$TypeBeginNut="@boxHN";
		$TypeBeginNutF="@boxFN";
		$TypeBeginIconX=54;//957
		$TypeBeginIconY=412;//457
	}
}


//�{���p�̃e�L�X�g�ݒ�(SecondText�ł��g�p)
function SetMainTextFont()
{
	SetFont("�l�r �S�V�b�N",20, FFFFFF, 222222,300,AROUND);
}
//�{���p�̊��ǃe�L�X�g�ݒ�(SecondText�ł��g�p)
function SetMainReadTextFont()
{
	SetFont("�l�r �S�V�b�N",20, 41b3ff, 222222,300,AROUND);
}

function SetTextBase()
{
		SetMainTextFont();
		LoadText($�\����,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,26);
		Move($SYSTEM_present_text, 0, $SetTextX, $SetTextY, null, true);
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}


//�^�񒆕\���p
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SetTextM
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SetTextM()
{
	$LoadTextWsize = 756;
	$LoadTextHsize = 150;
	$SetTextX = 0;
	$SetTextY = 0;
	$TypeBeginIconX = 1000;//-32768
	$TypeBeginIconY = 1000;//-32768

	SetTextBase();

	$SetTextX = (ImageHorizon($SYSTEM_present_text)/2*-1)+512;
	$SetTextY = (ImageVertical($SYSTEM_present_text)/2*-1)+288;
	Move($SYSTEM_present_text, 0, $SetTextX, $SetTextY, null, true);
}











//���{�b�N�X��`�悷��̂ƃe�L�X�g���^�C�s���O���铮����܂Ƃ߂Ď��s����}�N��
//=============================================================================//
.//�^�C�s���O�}�N��
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBegin�i�{�b�N�X�L��F�^�C�s���O�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBegin()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="���C��"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//�{�b�N�X�\��
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//���e�v�}�N��
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBegin�i�{�b�N�X�L��F�^�C�s���O�FNoLog�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginNL()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Request($textnumber, NoLog);

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="���C��"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//�{�b�N�X�\��
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//���e�v�}�N��
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginN�i�{�b�N�X�L��F�^�C�s���O�A�e�L�X�g�c��j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginN()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="���C��"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//�{�b�N�X�\��
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//���e�v�}�N��
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	//Request($textnumber, Disused);
	//Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginT�i�{�b�N�X�����F�^�C�s���O�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginT()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//�{�b�N�X�\��
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginF�i�{�b�N�X�����F�t�F�[�h�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginF($TextFadeTime)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//�{�b�N�X�\��
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginFN�i�{�b�N�X�����F�t�F�[�h�A������f���[�g�����j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginFN($TextFadeTime)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//�{�b�N�X�\��
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
//	Request($textnumber, Disused);
//	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginF2�i�{�b�N�X�L��F�t�F�[�h�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginF2($TextFadeTime)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="���C��"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//�{�b�N�X�\��
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//���e�v�}�N��
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginA�i�{�b�N�X�L��F�^�C�s���O�F�I�[�g�i�s�p�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginA($TypeBeginWaitA)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="���C��"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//�{�b�N�X�\��
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//���e�v�}�N��
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginAN�i�{�b�N�X�����F�^�C�s���O�F�I�[�g�i�s�p�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginAN($TypeBeginWaitA)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//�{�b�N�X�\��
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginAF�i�{�b�N�X�����F�t�F�[�h�F�I�[�g�i�s�p�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginAF($TextFadeTime,$TypeBeginWaitA)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//�{�b�N�X�\��
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TextBoxDelete
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TextBoxDelete($BoxDeleteTime)
{
	StopFwPro2();

	Fade("@FwNut*",$BoxDeleteTime,0,null,false);
	Fade("@box*",$BoxDeleteTime,0,null,true);

	Request("@FwNut*", UnLock);
	Delete("@FwNut*");
}






//��������Ɠ���ȃ^�C�s���O
//=============================================================================//
.//�e�L�X�g��s�����\��
//=============================================================================//
//---------------------------------------------------------------//
..AddText
//---------------------------------------------------------------//
function AddText($AddTextLine,$AddTextText,$AddTextClass,$AddTextVoice,$AddTextPlay,$AddVoicePlay,$AddVoiceVolume)
{
	Delete("LogText*");
	Delete("AddText*");
	Delete("AddVoice*");
	$AddVoiceON=false;

	if($AddVoicePlay){
		$AddTextNus="AddVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		Request($AddTextNus, Lock);
		SetVolume($AddTextNus, 0, $AddVoiceVolume, NULL);
		//SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}else{
		$AddTextNus="ParVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		SetVolume($AddTextNus, 0, $AddVoiceVolume, NULL);
		//SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}

	//��������
	$LOCAL_text_interval=DurationTime($AddTextNus)/Strlen($AddTextText);
	Delete("ParVoice*");

	//���ǖ��ǃt�H���g
	if(VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount)&&#SYSTEM_read_text_color_change){
		SetMainReadTextFont();
	}else{
		SetMainTextFont();
	}

	$TypeBeginTextX=$SetTextX;
	$TypeBeginTextY=($AddTextLine-1)*40+$SetTextY;

	if($AddTextPlay){
		$AddTextNut="AddText"+$AddTextClass+$AddTextLine;
	}else{
		$AddTextNut="LogText"+$AddTextClass+$AddTextLine;//�i�Ώ��Č��j
	}

	CreateText($AddTextNut, 20001, $TypeBeginTextX, $TypeBeginTextY, Auto, Auto, $AddTextText);
	SetAlias($AddTextNut,$AddTextNut);
	Request($AddTextNut, NoLog);
	Request($AddTextNut, Erase);
	Request($AddTextNut, Hideable);
	Request($AddTextNut, Lock);

	if(!$AddTextPlay){
		Fade("LogText*", 0, 0, null, true);//�i�Ώ��Č��j
		Request("LogText*", Enter);//�i�Ώ��Č��j
		Request("LogText*", PushText);//�i�Ώ��Č��j
	}

	if(!$AddTextVoice){
		SetBacklog($AddTextText, "NULL", "NULL");
	}else{
		$AddTextVoice="voice/"+$AddTextVoice;
		SetBacklog($AddTextText, $AddTextVoice, $AddTextClass);
	}
}



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginD�i�����s�{�b�N�X�F�^�C�s���O�j
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginD()
{
	//����ΓI��������
	//$SYSTEM_ignore_voice_sync_text=true;
	//$SYSTEM_ignore_text_speed=true;

	Request($textnumber, UnLock);
	Delete($textnumber);

	//���ǔ��ʗp
	VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount,true);
	$AddTextCount++;

	//�����ɂ�镶�����x����
	if(#SYSTEM_sync_voice_and_text){
		$SYSTEM_text_interval=$LOCAL_text_interval;
	}

	$TypeBeginIn=true;

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Request($textnumber, NoLog);

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="���C��"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//�{�b�N�X�\��
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//���e�v�}�N��
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	//===========================================

	//�{�C�X�Đ�
	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);

	//�����s�G���^�[
	Request("AddText*", Enter);

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	//�����s����
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;

	//����ΓI������������
	//$SYSTEM_ignore_voice_sync_text=false;
	//$SYSTEM_ignore_text_speed=false;

	$SYSTEM_text_interval=48;

	$TypeBeginIn=false;
	BoxOut();
}


//---------------------------------------------------------------//
..WaitAddText
//---------------------------------------------------------------//
function WaitAddText()
{
	Fade("LogText*", 0, 1000, null, false);
	Fade($SYSTEM_present_text, 0, 0, null, false);

	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..WaitAddText2
//---------------------------------------------------------------//
function WaitAddText2()
{
	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..TypeAddText�i�s�g�p�j
//---------------------------------------------------------------//
function TypeAddText()
{
	Request($SYSTEM_present_text, NoLog);
	Request("AddText*", Enter);

	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);
}

//---------------------------------------------------------------//
..DeleteAddText�i�s�g�p�j
//---------------------------------------------------------------//
function DeleteAddText()
{
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;
}











//��CreateTexture�̕ό`
//=============================================================================//
.//CreateTexture�n
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g����uCreateTexture�v�ł�
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, �`��D��x, $CreateTexEX_X, $CreateTexEX_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEX_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);
	Fade($CreatePicEX_Nat, 0, 0, null, true);
	
	$TATE=576;
	
//���擾
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-$TATE;//768;
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768;
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="InLeft"){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEX_X=="InRight"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEX_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		Move($CreatePicEX_Nat, 0, @0, $CreateTexEX_Y, null, true);
	}

}

//�G�C���A�X�w�肪���������́uCreateTexture�v�ł�
..CreateTextureSP
function CreateTextureSP("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	SetAlias("�i�b�g��", "�i�b�g��");

}

//�����Z
//�����x0����X�^�[�g����uCreateTexture�v�ł��i���Z�����t���j
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, �`��D��x, $CreateTexEXadd_X, $CreateTexEXadd_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXadd_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

	$TATE=576;

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-$TATE;//768
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="InLeft"){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXadd_X=="InRight"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXadd_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXadd_Nat, 0, @0, $CreateTexEXadd_Y, null, true);
	}
}

//�G�C���A�X�w�肪���������́uCreateTexture�v�ł��i���Z�����t���j
..CreateTextureSPadd
function CreateTextureSPadd("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}
//�����Z
//�����x0����X�^�[�g����uCreateTexture�v�ł��i���Z�����t���j
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, �`��D��x, $CreateTexEXsub_X, $CreateTexEXsub_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXsub_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

	$TATE=576;

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-$TATE;//768
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="InLeft"){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXsub_X=="InRight"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXsub_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXsub_Nat, 0, @0, $CreateTexEXsub_Y, null, true);
	}
}

//�G�C���A�X�w�肪���������́uCreateTexture�v�ł��i���Z�����t���j
..CreateTextureSPsub
function CreateTextureSPsub("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//���I�[�o�[���C
//�����x0����X�^�[�g����uCreateTexture�v�ł��i���Z�����t���j
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, �`��D��x, $CreateTexEXover_X, $CreateTexEXover_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXover_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

	$TATE=576;

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-$TATE;//
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="InLeft"){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXover_X=="InRight"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXover_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXover_Nat, 0, @0, $CreateTexEXover_Y, null, true);
	}
}


//�G�C���A�X�w�肪���������́uCreateTexture�v�ł��i�I�[�o�[���C�����t���j
..CreateTextureSPover
function CreateTextureSPover("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//����Z
//�����x0����X�^�[�g����uCreateTexture�v�ł��i���Z�����t���j
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, �`��D��x, $CreateTexEXmul_X, $CreateTexEXmul_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXmul_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

	$TATE=576;

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-$TATE;//768
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="InLeft"){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXmul_X=="InRight"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXmul_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXmul_Nat, 0, @0, $CreateTexEXmul_Y, null, true);
	}
}


//�G�C���A�X�w�肪���������́uCreateTexture�v�ł��i��Z�����t���j
..CreateTextureSPmul
function CreateTextureSPmul("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}


//=============================================================================//
.//�w�i�E�C�x���g�E�d�e��p
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g����uCreateTexture�v�ł�
..OnBG
function OnBG(�`��D��x,$bgimagedata,$�p�b�`����)
{

	//�b�f���C�u�����p�̃t���O
	VariableValue(#,$bgimagedata,true);

	if($BgNameN==""||$BgNameN=="OnBG10"){$BgNameN="OnBG01";}
	else if($BgNameN=="OnBG01"){$BgNameN="OnBG02";}
	else if($BgNameN=="OnBG02"){$BgNameN="OnBG03";}
	else if($BgNameN=="OnBG03"){$BgNameN="OnBG04";}
	else if($BgNameN=="OnBG04"){$BgNameN="OnBG05";}
	else if($BgNameN=="OnBG05"){$BgNameN="OnBG06";}
	else if($BgNameN=="OnBG06"){$BgNameN="OnBG07";}
	else if($BgNameN=="OnBG07"){$BgNameN="OnBG08";}
	else if($BgNameN=="OnBG08"){$BgNameN="OnBG09";}
	else if($BgNameN=="OnBG09"){$BgNameN="OnBG10";}

	if($BgNameN01==""){$BgNameN01=$BgNameN;}
	else if($BgNameN02==""){$BgNameN02=$BgNameN;}
	else if($BgNameN03==""){$BgNameN03=$BgNameN;}
	else if($BgNameN04==""){$BgNameN04=$BgNameN;}
	else if($BgNameN05==""){$BgNameN05=$BgNameN;}
	else if($BgNameN06==""){$BgNameN06=$BgNameN;}
	else if($BgNameN07==""){$BgNameN07=$BgNameN;}
	else if($BgNameN08==""){$BgNameN08=$BgNameN;}
	else if($BgNameN09==""){$BgNameN09=$BgNameN;}
	else if($BgNameN10==""){$BgNameN10=$BgNameN;}

	$bg�i�b�g = $BgNameN;

	if($�p�b�`����=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else if($�p�b�`����=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata + ".jpg";
//Path�ʉ߂�����A�������y09/01/29�z
		$�p�b�`����=="";
	}else if(!$�p�b�`����){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}

	//���b�f�f�o�b�O�p
//	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bg�i�b�g, �`��D��x, Center, Middle, $bgimagedata);
	SetAlias($bg�i�b�g, $bg�i�b�g);
	Fade($bg�i�b�g, 0, 0, null, true);
}

...//FadeBG
function FadeBG($�`�掞��,$�҂�)
{
	if($BgNameN01!=""){$�i�b�g��=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$�i�b�g��=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$�i�b�g��=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$�i�b�g��=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$�i�b�g��=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$�i�b�g��=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$�i�b�g��=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$�i�b�g��=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$�i�b�g��=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$�i�b�g��=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

//	SetFont("�l�r �S�V�b�N", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);

//�`��}�N��
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//�w��p
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

	//�A�U�i�G���p�F�J�S���A�\�r�J���[
	if(#AnotherL){
		KagomeColorAuto(19000,300,true);
	}
}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $�i�b�g��;

//�i�b�g���擾�@$picnut
		$picBGnut = $FaceBG;
//�O�i�b�g���擾�@$Prepicnut
		$PrepicBGnut = $FaceBG2;
//�O��`���������Ă邩�m�F�p
		$BGQ = $BGCP;

//��x��`�ς�+��`�t���O���������Ă���ꍇ
	if($BGP==1 && $BGQ==0){$FaceBG="������";}

//�O�i�b�g�����K��`
	$setBGnut = "@"+$BGnut;
//�i�b�g�����K��`
	$astBGnut = $nutBG;
//�O�i�b�g�����K��`
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $�`�掞��, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $�`�掞��, 0, Axl3, false);
		Fade($setBGnut, $�`�掞��, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $�`�掞��, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($�҂�==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
		}

	}
	else if($�҂� != false)
	{
		Wait($�҂�);
	}
	else
	{
	}

}


//��CreateColor�̕ό`
//=============================================================================//
.//CreateColor�n
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g����uCreateColor�v�ł�
..CreateColorEX
function CreateColorEX("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{

	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 576, �C���[�W�f�[�^);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);

}

//�G�C���A�X�w�肪���������́uCreateColor�v�ł�
..CreateColorSP
function CreateColorSP("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 576, �C���[�W�f�[�^);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g����uCreateColor�v�ł��i���Z�����t���j
..CreateColorEXadd
function CreateColorEXadd("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateColor�v�ł��i���Z�����t���j
..CreateColorSPadd
function CreateColorSPadd("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g����uCreateColor�v�ł��i���Z�����t���j
..CreateColorEXsub
function CreateColorEXsub("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateColor�v�ł��i���Z�����t���j
..CreateColorSPsub
function CreateColorSPsub("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}


//���I�[�o�[���C
//�����x0����X�^�[�g����uCreateColor�v�ł��i�I�[�o�[���C�����t���j
..CreateColorEXover
function CreateColorEXover("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateColor�v�ł��i�I�[�o�[���C�����t���j
..CreateColorSPover
function CreateColorSPover("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//����Z
//�����x0����X�^�[�g����uCreateColor�v�ł��i��Z�����t���j
..CreateColorEXmul
function CreateColorEXmul("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateColor�v�ł��i��Z�����t���j
..CreateColorSPmul
function CreateColorSPmul("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 576, �C���[�W�f�[�^);
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}



//��CreateMovie�̕ό`
//=============================================================================//
.//CreateMovie�n
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g����uCreateMovie�v�ł�
..CreateMovieEX
function CreateMovieEX("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateMovie�v�ł�
..CreateMovieSP
function CreateMovieSP("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	SetAlias("�i�b�g��", "�i�b�g��");
}

..CreateMovieSPvol
function CreateMovieSPvol("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^",$����)
{
	//�R���t�B�O��se�Ɖ��ʂ𓯊��A���[�r�[�Đ�����se���ʕύX�ɂ͑Ή����ĂȂ�
	if(#SYSTEM_sound_se){$mv_vol=#SYSTEM_sound_volume_se*$����/1000;
	}else{$mv_vol=0;}
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^",$mv_vol);
	SetAlias("�i�b�g��", "�i�b�g��");
}
function CreateOPMovieSPvol("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^",$����)
{
	//�R���t�B�O��bgm�Ɖ��ʂ𓯊��A���[�r�[�Đ�����bgm���ʕύX�ɂ͑Ή����ĂȂ�
	if(#SYSTEM_sound_bgm){$mv_vol=#SYSTEM_sound_volume_bgm*$����/1000;
	}else{$mv_vol=0;}
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^",$mv_vol);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g����uCreateMovie�v�ł��i���Z�����t���j
..CreateMovieEXadd
function CreateMovieEXadd("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateMovie�v�ł��i���Z�����t���j
..CreateMovieSPadd
function CreateMovieSPadd("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g����uCreateMovie�v�ł��i���Z�����t���j
..CreateMovieEXsub
function CreateMovieEXsub("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateMovie�v�ł��i���Z�����t���j
..CreateMovieSPsub
function CreateMovieSPsub("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//���I�[�o�[���C
//�����x0����X�^�[�g����uCreateMovie�v�ł��i�I�[�o�[���C�����t���j
..CreateMovieEXover
function CreateMovieEXover("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateMovie�v�ł��i�I�[�o�[���C�����t���j
..CreateMovieSPover
function CreateMovieSPover("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//����Z
//�����x0����X�^�[�g����uCreateMovie�v�ł��i��Z�����t���j
..CreateMovieEXmul
function CreateMovieEXmul("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������́uCreateMovie�v�ł��i��Z�����t���j
..CreateMovieSPmul
function CreateMovieSPmul("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�R���t�B�O�̃��[�r�[�X�L�b�v�Ɗ��ǃt���O�ł̃N���b�N�X�L�b�v�ł̍Đ�
..MovieSkipPlay
function MovieSkipPlay($�i�b�g��,$�ϐ���)
{
	if(VariableValue(#,$�ϐ���)){
		$waittime=RemainTime($�i�b�g��);
		//CreateText("tt21", 200, 10, 10, 500, 40, "waittime=<VALUE name=$waittime>|");
		WaitKey($waittime);
	}else{
		if(#LOCAL_break_play_movie){
			$waittime=RemainTime($�i�b�g��);
			WaitKey($waittime);
		}else{WaitPlay($�i�b�g��,true);}
		VariableValue(#,$�ϐ���,true);
		Save(0);
	}
}

//��CreateStencil�̕ό`
//=============================================================================//
.//CreateStencil�n
//=============================================================================//
//
..CreateStencilT
function CreateStencilT($�i�b�g���P,$�i�b�g���Q,�摜�D��x,�w�ʒu,�x�ʒu,$�摜�P,$�摜�Q)
{
	$�q�i�b�g��=$�i�b�g���P+"/"+$�i�b�g���Q;

	CreateStencil($�i�b�g���P,�摜�D��x,�w�ʒu,�x�ʒu,128,$�摜�P,false);
	CreateTexture($�q�i�b�g��,�摜�D��x,�w�ʒu,�x�ʒu,$�摜�Q);

	SetAlias($�i�b�g���P, $�i�b�g���P);
	SetAlias($�q�i�b�g��, $�i�b�g���Q);

	Fade($�i�b�g���P, 0, 0, null, false);
	Fade($�i�b�g���Q, 0, 0, null, true);
}

//
..CreateStencilC
function CreateStencilC($�i�b�g���P,$�i�b�g���Q,�摜�D��x,�w�ʒu,�x�ʒu,$�摜�P,$�摜�Q)
{
	$�q�i�b�g��=$�i�b�g���P+"/"+$�i�b�g���Q;

	CreateStencil($�i�b�g���P,�摜�D��x,�w�ʒu,�x�ʒu,128,$�摜�P,false);
	CreateColor($�q�i�b�g��, �摜�D��x, 0, 0, 1024, 576, $�摜�Q);

	SetAlias($�i�b�g���P, $�i�b�g���P);
	SetAlias($�q�i�b�g��, $�i�b�g���Q);

	Fade($�i�b�g���P, 0, 0, null, false);
	Fade($�i�b�g���Q, 0, 0, null, true);
}




//��CreateWindow�̕ό`
//=============================================================================//
.//CreateWindow�n
//=============================================================================//
//�G�C���A�X�w��̕t������`����
..CreateWindowEX
function CreateWindowEX($WindowNut, XPos, YPos, XSet, YSet, ����)
{
	CreateWindow($WindowNut, 0, XPos, YPos, XSet, YSet, ����);
	SetAlias($WindowNut,$WindowNut);
}

//��CreateProcess�̕ό`
//=============================================================================//
.//CreateProcess�n
//=============================================================================//
//�G�C���A�X�w��̕t������`����
..CreateProcessEX
function CreateProcessEX($ProcessNameNut, $ProcessNut)
{
	CreateProcess($ProcessNameNut, 0, 0, 0, $ProcessNut);
	SetAlias($ProcessNameNut,$ProcessNameNut);
}


//��CreateMask�̕ό`
//=============================================================================//
.//CreateMask�n
//=============================================================================//
//�G�C���A�X�w��̕t������`����
..CreateMaskEX
function CreateMaskEX($MaskNameNut, MPri, XPos, YPos, $MaskDataName, �e�q)
{
	CreateMask($MaskNameNut, MPri, XPos, YPos, $MaskDataName, �e�q);
	SetAlias($MaskNameNut,$MaskNameNut);
}

//��CreateEffect�̕ό`
//=============================================================================//
.//CreateEffect�n
//=============================================================================//
//�G�C���A�X�w��̕t������`����
..CreateEffectSP
function CreateEffectSP($EfNameNut, �D��x, �w���W, �x���W, ��, ��, $�G�t�F�N�g)
{
	CreateEffect($EfNameNut, �D��x, �w���W, �x���W, ��, ��, $�G�t�F�N�g);
	SetAlias($EfNameNut,$EfNameNut);
}


//���`��}�N��
//=============================================================================//
.//��ʓ]���p
//=============================================================================//
//��ʏ�ɂ��̃i�b�g�ȊO�S�Ă��c���Ȃ�
//�g�p����ۂ͐�΂ɁuPre�v�̊O�Ŏg�p���Ă�������
..PrintBG
function PrintBG("�i�b�g��",�`��D��x)
{
	CreateEffect("�i�b�g��", �`��D��x, 0, 0, 1024, 576, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", Lock);

	//�h���}�_���ꏈ��
	if($NoTextBoxDelete){
		Request("@FwMask*/*", Lock);
	}

	//�h���}�_���ꏈ��
	$����=Strstr($GameName, "sl");
	if(!$����||$GameName=="dm5510sl.nss"){
		Delete("@*");
		Delete("*");
	}

	//�h���}�_���ꏈ��
	if($NoTextBoxDelete){
		Request("@FwMask*/*", UnLock);
	}

	ByeDefault();
	ByeBye();

	Request("�i�b�g��", UnLock);
}

..PrintBG2
function PrintBG2("�i�b�g��")
{
	CreateTexture("�i�b�g��", 30000, 0, 0, "SCREEN");
	SetAlias("�i�b�g��", "�i�b�g��");
	Request("�i�b�g��", Lock);


	//�h���}�_���ꏈ��
	if($NoTextBoxDelete){
		Request("@FwMask*/*", Lock);
	}

	//�h���}�_���ꏈ��
	$����=Strstr($GameName, "sl");
	if(!$����||$GameName=="dm5510sl.nss"){
		Delete("@*");
		Delete("*");
	}

	//�h���}�_���ꏈ��
	if($NoTextBoxDelete){
		Request("@FwMask*/*", UnLock);
	}

	ByeDefault();
	ByeBye();

	Request("�i�b�g��", UnLock);
}

//���V�K�ǉ�����
//���֘A�͏����Ȃ��p��PrintBG
..PrintGO
function PrintGO("�i�b�g��",�`��D��x)
{
	CreateEffect("�i�b�g��", �`��D��x, 0, 0, 1024, 576, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", Lock);

	ByeDefault();
	ByeBye();

	Request("�i�b�g��", UnLock);
}

..CreatePlainSP
function CreatePlainSP("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", MulRender);

}

..CreatePlainEX
function CreatePlainEX("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");

}

..CreatePlainEXadd
function CreatePlainEXadd("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 576, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", MulRender);

}

//=============================================================================//
.//�����n
//=============================================================================//
..FadeDelete
function FadeDelete("�i�b�g��", ���v����, �e���|, �҂�)
{
	Fade("�i�b�g��", ���v����, 0, �e���|, �҂�);
	Request("�i�b�g��", UnLock);
	Request("�i�b�g��", Disused);

	TakeRatePicAuto();//���k���F�A�U�i�G���X�N���[��
}

..DrawDelete
function DrawDelete("�i�b�g��", ���v����, ���E, �e���|, "$�摜", �҂�)
{
	$Transition = "cg/data/" + "$�摜" + ".png";

	DrawTransition("�i�b�g��", ���v����, 1000, 0, ���E, �e���|, "$Transition", �҂�);
	Request("�i�b�g��", UnLock);
	Request("�i�b�g��", Disused);

	TakeRatePicAuto();//���k���F�A�U�i�G���X�N���[��
}

..PlayDelete
function PlayDelete($�v���C�i�b�g��, $PlayDeleteTime, $PlayWait)
{
	if($PlayDeleteCount==0){
		$PlayDeleteCount=1;
	}else if($PlayDeleteCount==1){
		$PlayDeleteCount=2;
	}else if($PlayDeleteCount==2){
		$PlayDeleteCount=3;
	}else if($PlayDeleteCount==3){
		$PlayDeleteCount=1;
	}

	$PlayDeleteName="PlayDeleteProcess"+$PlayDeleteCount;

	if($PlayWait==false){
		Fade($�v���C�i�b�g��, $PlayDeleteTime, 0, null, false);

		CreateProcess("�v���C�����P", 150, 0, 0, $PlayDeleteName);
		SetAlias("�v���C�����P", "�v���C�����P");
		Request("�v���C�����P", Start);
		Request("�v���C�����P", Disused);
	}else{
		Fade($�v���C�i�b�g��, $PlayDeleteTime, 0, null, true);

		Request($�v���C�i�b�g��, Stop);
		Delete($�v���C�i�b�g��);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($�v���C�i�b�g��, Stop);
	Delete($�v���C�i�b�g��);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($�v���C�i�b�g��, Stop);
	Delete($�v���C�i�b�g��);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($�v���C�i�b�g��, Stop);
	Delete($�v���C�i�b�g��);
}



//���ړ��Ȃǂ̏�ʓ]���Ɋւ���}�N��
//=============================================================================//
.//�Ó]�����n
//=============================================================================//

..//�Ó]�����n�x�[�X

//�g�p����ۂ͐�΂ɁuPre�v�̊O�Ŏg�p���Ă�������
..ClearFadeAll
function ClearFadeAll(���v����,�҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	Fade("�N���A��", ���v����, 1000, null, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintFadeAll
function PrintFadeAll("�i�b�g��",���v����,�҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Request("�i�b�g��", Lock);

	Fade("�i�b�g��", ���v����, 1000, null, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("�i�b�g��", UnLock);
}


//�g�p����ۂ͐�΂ɁuPre�v�̊O�Ŏg�p���Ă�������
..ClearFadeNut
function ClearFadeNut(���v����,�҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	Fade("�N���A��", ���v����, 1000, null, �҂�);

	ByeDefault();
	ByeBye();

	Delete("�N���A��");
}

..PrintFadeNut
function PrintFadeNut("�i�b�g��",���v����,�҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);

	Fade("�i�b�g��", ���v����, 1000, null, �҂�);

	ByeDefault();
	ByeBye();
}

//�g�p����ۂ͐�΂ɁuPre�v�̊O�Ŏg�p���Ă�������
..ClearDrawAll
function ClearDrawAll(���v����, ���E, $�摜, �҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�N���A��", 0, 1000, null, false);
	DrawTransition("�N���A��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintDrawAll
function PrintDrawAll("�i�b�g��", ���v����, ���E, $�摜, �҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Request("�i�b�g��", Lock);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�i�b�g��", 0, 1000, null, false);
	DrawTransition("�i�b�g��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("�i�b�g��", UnLock);
}


//�g�p����ۂ͐�΂ɁuPre�v�̊O�Ŏg�p���Ă�������
..ClearDrawNut
function ClearDrawNut(���v����, ���E, $�摜, �҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�N���A��", 0, 1000, null, false);
	DrawTransition("�N���A��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	ByeDefault();
	ByeBye();

	Delete("�N���A��");
}

..PrintDrawNut
function PrintDrawNut("�i�b�g��", ���v����, ���E, $�摜, �҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�i�b�g��", 0, 1000, null, false);
	DrawTransition("�i�b�g��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	ByeDefault();
	ByeBye();
}

..//�Ó]�����n���p

//�g�p����ۂ͐�΂ɁuPre�v�̊O�Ŏg�p���Ă�������
//�r�d����őΉ�
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,�҂�����)
{
	CreateColor("�GClear_BlackWait", 24000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�GClear_BlackWait", "�GClear_BlackWait");
	Fade("�GClear_BlackWait", 0, 0, null, true);

	Request("�GClear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@m*", $SoundTimeCFA, 0, null);
	Fade("�GClear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(�҂�����);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("�GClear_BlackWait", UnLock);
	Delete("�GClear_BlackWait");
}



..MoveEX
function MoveEX("�i�b�g��", ���v����, $�w���W, $�x���W, �e���|, �҂�)
{
	$�w���W�v�� = - $�w���W;
	$�x���W�v�� = - $�x���W;

	$�w���W�}�C�i�X = "@" + $�w���W�v��;
	$�x���W�}�C�i�X = "@" + $�x���W�v��;

	$�w���W�v���X = "@" + $�w���W;
	$�x���W�v���X = "@" + $�x���W;

	Move("�i�b�g��", 0, $�w���W�}�C�i�X, $�x���W�}�C�i�X, null, true);
	Move("�i�b�g��", ���v����, $�w���W�v���X, $�x���W�v���X, �e���|, �҂�);
}





//���ϐ��������}�N���R�}���h
//=============================================================================//
.//������
//=============================================================================//
..ByeBye
function ByeBye()
{
//�������G�S����
	ByeAllSt();

//���w�i�p�uOnBG�v
	$BgNameN01="";
	$BgNameN02="";
	$BgNameN03="";
	$BgNameN04="";
	$BgNameN05="";
	$BgNameN06="";
	$BgNameN07="";
	$BgNameN08="";
	$BgNameN09="";
	$BgNameN10="";
}

..ByeDefault
function ByeDefault()
{
	Delete("@�G*");
	Delete("�G*");
	Delete("@OnBG*");
	Delete("OnBG*");
	Delete("@�w�i*");

	//�h���}�_���ꏈ��
	$����=Strstr($GameName, "sl");
	if(!$NoTextBoxDelete&&(!$����||$GameName=="dm5510sl.nss")){
		TextBoxDelete(0);
		$NoTextBoxDelete=false;
	}

	$SYSTEM_full_scene_update=false;

	//�h���}�_�R�C���p
	$coildownON=false;
	$coilnewON=false;
	$coilpictON=false;
	$coilmailON=false;
	$coilmlistON=false;
	$coilphoneON=false;
	$coilphone2ON=false;
	$coilrenON=false;

	$CoilPhone=false;
	$CoilPhone2=false;

	$coildownpriON=false;//CoilDownSetPri�p

	$coilphoneNOW="����";

	//�ȉ����[�U�[�C��
	$coilintoON=false;//���o�����Ȃ�
	$coilphoneError=false;//�d�b����G���[�ɂȂ�
	$coilraceSoon=false;//�����̒ǉ������΂₭

	$coilphone2Error=false;//�d�b����G���[�ɂȂ�
	$coilrace2Soon=false;//�����̒ǉ������΂₭

	//�A�U�i�G��
	Delete("@OnKG*");
	Delete("@RateWindow/*");
	Delete("@gameview");
}



//���G���f�B���O�֌W�̃}�N���R�}���h
//=============================================================================//
.//�G���f�B���O�֌W
//=============================================================================//
//=============================================================================//
..//���d�c�A�z
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"����GD","�g��BD","�m�C�YBD","�m�C�YfBD","�~���NBD","�N���ABD","�@BD","�E�C�g��BD", "�^���@GD", "�g��GD","�m�C�YGD","�~���NGD","�N���AGD");
	AssocArray($EndName,"����GD","�g��BD","�m�C�YBD","�m�C�YfBD","�~���NBD","�N���ABD","�@BD","�E�C�g��BD", "�^���@GD", "�g��GD","�m�C�YGD","�~���NGD","�N���AGD");

	Array($EndName["����GD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//0
	
	Array($EndName["�g��BD"],"Roll01","@dmedbd01","BLACK",0,30000,-576,1,"V",false,false);//1
	Array($EndName["�m�C�YBD"],"Roll01","@dmedbd02","BLACK",0,30000,-576,1,"V",false,false);//2
	Array($EndName["�m�C�YfBD"],"Roll01","@dm8bitedbd02","BLACK",0,300,-576,0,"F",false,true);//3
	Array($EndName["�~���NBD"],"Roll01","@dmedbd03","BLACK",0,30000,-576,1,"V",false,false);//4
	Array($EndName["�N���ABD"],"Roll01","@dmedbd04","BLACK",0,30000,-576,1,"V",false,false);//5
	
	Array($EndName["�@BD"],"Roll01","@dmedbd05","BLACK",0,30000,-576,1,"V",false,false);//6
	Array($EndName["�E�C�g��BD"],"Roll01","@dmedbd06","BLACK",0,30000,-576,1,"V",false,false);//7
	Array($EndName["�^���@GD"],"Roll01","@dmedgrand","BLACK",0,30000,-576,1,"V",false,false);//8
	
	Array($EndName["�g��GD"],  "Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//9
	Array($EndName["�m�C�YGD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//10
	Array($EndName["�~���NGD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//11
	Array($EndName["�N���AGD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//12

//	Array($EndName["�^��"],"Roll01","@uta01","cg/sys/ed/�G���h�e���b�v�w�i.png",6000,30000,0,1,"H",false,false);//�S

//	Array($EndName["����"],"Roll01","@EndBGM01","BLACK",6200,60000,-576,1,"V","@EndBGM02",false);
//	Array($EndName["�^��"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["�^��"],"Movie01",false,"WHITE",-3000,60000,-576,1,"V",false,false);

//	Array($EndName,"�p�Y��","���Q��","������","���S��","���X��","�����");
//	AssocArray($EndName,"�p�Y��","���Q��","������","���S��","���X��","�����");
//	Array($EndName["�p�Y��"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["���Q��"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);
//	Array($EndName["������"],"Roll01","@xsonged","BLACK",-5000,60000,1024,3,"H",false,true);
//	Array($EndName["���S��"],"Roll01","@xsonged","BLACK",6000,60000,1124,3,"H",false,true);
//	Array($EndName["���X��"],"Roll01","@xsonged","BLACK",10000,60000,1024,3,"H",false,true);
//	Array($EndName["�����"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);

//���O�F�v���Z�X��
//���P�F�S��
//���Q�F�o�����̔w�i
//���R�F�Đ��b������
//���S�F�a�f�l�Q�T�ڂւ̃J�E���g
//���T�F���[���ʒu�����i��ɃP�c�����j
//���U�F�X�^�b�t���[���̐�
//���V�F�X�^�b�t���[���̌`���uF�v�uH�v�uV�v
//���W�F�Q�Ȃ��邩�Ȃ����A�L��ꍇ�͋Ȗ��𖳂��ꍇ�́ufalse�v
//���X�F���ŉ摜��؂�ւ��邩

//���O�|�F�t�F�[�h�摜����
//���P�|�F�ҋ@�b���A�\���b���i�O�摜�������q�E�E�F�C�g�E���摜�\���b���E�E�F�C�g�j

//���U�|�F���[���摜�����iENDRoll00�EENDRoll01�E�E�E�j
//���V�|�F���[���摜�̃s�N�Z���Ԋu����

	//Array($EndName["����"][0],"logo.png");//���X��false�ňӖ�������
	//Array($EndName["����"][1],0,960,10,10);//���X��false�ňӖ�������
	//Array($EndName["����"][6],"�N���W�b�g_�V���[�g");
	//Array($EndName["����"][7],0);

	//Array($EndName["�^��"][0],"logo.png");//���X��false�ňӖ�������
	//Array($EndName["�^��"][1],0,960,10,10);//���X��false�ňӖ�������
	Array($EndName["����GD"][6],"EDgood.jpg");
	Array($EndName["����GD"][7],0);
	
	Array($EndName["�g��BD"][6],"EDbd01.jpg");
	Array($EndName["�g��BD"][7],0);
	Array($EndName["�m�C�YBD"][6],"EDbd02.jpg");
	Array($EndName["�m�C�YBD"][7],0);

	Array($EndName["�m�C�YfBD"][0],"EDbd02f00.png","EDbd02f01.png","EDbd02f02.png","EDbd02f03.png","EDbd02f04.png","EDbd02f05.png","EDbd02f06.png","EDbd02f07.png");
	Array($EndName["�m�C�YfBD"][1],0,0,0,50,0,10,0,175,0,10,0,175,0,10,0,175,0,10,0,175,0,10,0,175,0,0,0,200);
	Array($EndName["�m�C�YfBD"][6],"EDbd02.jpg");
	Array($EndName["�m�C�YfBD"][7],0);

	Array($EndName["�~���NBD"][6],"EDbd03.jpg");
	Array($EndName["�~���NBD"][7],0);
	Array($EndName["�N���ABD"][6],"EDbd04.jpg");
	Array($EndName["�N���ABD"][7],0);
	
	Array($EndName["�@BD"][6],"EDbd05.jpg");
	Array($EndName["�@BD"][7],0);
	Array($EndName["�E�C�g��BD"][6],"EDbd06.jpg");
	Array($EndName["�E�C�g��BD"][7],0);
	Array($EndName["�^���@GD"][6],"EDgrand.jpg");
	Array($EndName["�^���@GD"][7],0);
	
	Array($EndName["�g��GD"][6],"EDgood.jpg");
	Array($EndName["�g��GD"][7],0);
	Array($EndName["�m�C�YGD"][6],"EDgood02.jpg");
	Array($EndName["�m�C�YGD"][7],0);
	Array($EndName["�~���NGD"][6],"EDgood03.jpg");
	Array($EndName["�~���NGD"][7],0);
	Array($EndName["�N���AGD"][6],"EDgood04.jpg");
	Array($EndName["�N���AGD"][7],0);

/*
	Array($EndName["���Q��"][0],"logo.png");
	Array($EndName["���Q��"][1],0,960,10,10);
	Array($EndName["���Q��"][6],"���ގ}���[�g","staff01","staff02");
	Array($EndName["���Q��"][7],0,0,0);

	Array($EndName["���X��"][0],"logo.png");
	Array($EndName["���X��"][1],0,960,10,10);
	Array($EndName["���X��"][6],"���X�ۃ��[�g","staff01","staff02");
	Array($EndName["���X��"][7],0,0,0);

	Array($EndName["������"][0],"logo.png");
	Array($EndName["������"][1],0,960,10,10);
	Array($EndName["������"][6],"�������[�g�Q","staff01","staff02");
	Array($EndName["������"][7],0,0,0);

	Array($EndName["�����"][0],"logo.png");
	Array($EndName["�����"][1],0,960,10,10);
	Array($EndName["�����"][6],"�������[�g�Q","staff01","staff02");
	Array($EndName["�����"][7],0,0,0);

	Array($EndName["���S��"][0],"ev169_�����Ƃ̏o�.jpg","ev132_�΂���.jpg","ev133_�����ɒ��ތ�_c.jpg","ev008_�Ԏq������鏗.jpg","ev128_�a���̌�_b01.jpg","ev138_��̂̍Ŋ�_d.jpg","ev139_�����E�Q_a.jpg","ev101_�v�����[�O_a.jpg","ev103_���ގ}���t_a.jpg","ev268_���N�U�ƑΛ�������.jpg","ev106_�Y��ƌ����낷����_d.jpg","ev112_��������P�l���������鑺��.jpg","ev113_�T�[�L�b�g�M�o��_a.jpg","ev914_��Z�����R�������C�������}���^�[��.jpg","ev213_�i���Ƒ����̌���_b.jpg","ev221_��������𗁂тė���_b.jpg","ev230_�������Ⴍ�鑺��.jpg","ev239_���X�ۂ̍Ŋ�_d.jpg","ev251_����VS�␯���������.jpg","ev255_�쑾�����\���鑺��_a.jpg","ev256_�␯���̍Ŋ�_b.jpg","ev263_�������h���т���Ԓ�.jpg","ev266_�i���A���S�̏΂�.jpg","logo.png");
	Array($EndName["���S��"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["���S��"][6],"�������[�g","staff01","staff02");
	Array($EndName["���S��"][7],0,200,50);
*/


//�f�o�b�O�p
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["���S��"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["���S��"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("�f�o�b�O���[��", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("�f�o�b�O���[��");
	}


	$LayerCount0=100000;//���n
	$LayerCount1=100010;//���[��
	$LayerCount2=100009;//�t�F�[�h�p�̊G
	if($EndName[$ENDNumber]=="���S��"){
		$LayerCount2=100011;//�t�F�[�h�p�̊G
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//���d�c��`
//=============================================================================//
function TheEND($ENDNumber)
{
	//���E�o�[��~
	//QuickStop();

	//���A�z�z��
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGM��2=$EndName[$ENDNumber][8];

	//////////////////
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@dm*", 2000, 0, NULL);
	SetVolume("@m*", 2000, 0, NULL);
	if($ENDBGM!=false){
		SoundPlay($ENDBGM,1000,1000,true);
	}
	//////////////////

	//���w�i�����ւ�
	if($ENDBack!="EXTRA"){
		if($ENDBack=="BLACK"||$ENDBack=="WHITE"){
			CreateColor("ENDBack", $LayerCount0, 0, 0, 1024, 576, $ENDBack);
		}else{
			CreateTexture("ENDBack", $LayerCount0, 0, 0, $ENDBack);
		}
		SetAlias("ENDBack", "ENDBack");
		Fade("ENDBack", 0, 0, null, true);
		Request("ENDBack", Lock);
		Fade("ENDBack", 1000, 1000, null, true);
	
		//�����b�N�ݒu
		LockVideo(true);
		Delete("@*");
		Fade("@*", 0, 0, null, false);
		Fade("@*/*", 0, 0, null, false);
		Fade("@*/*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*/*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//�����b�N�ݒu
		LockVideo(false);

		Request("ENDBack", UnLock);
	}

	if($EndName[$ENDNumber]=="���S��"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/�G���h���[���p�C�x���g�{�J�V�z��.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/�G���h���[���p�C�x���g�{�J�V�z��2.png");
	}

	//���d�c��`
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//���E�o�[�ĊJ
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		//Wait(5000);
		//QuickStart();
	}
}

...//���e�N�X�`���n��`
function EndRollTexture()
{
	$EndRoll=$EndName[$ENDNumber][0];

	if($EndRoll=="Roll01"){
		$EndProcess="ProcessRoll01";
		TextureRoll01();
	}else if($EndRoll=="Roll00"){
		$EndProcess="ProcessRoll00";
		TextureRoll00();
	}else if($EndRoll=="Roll00H"){
		$EndProcess="ProcessRoll00H";
		TextureRoll00H();
	}else if($EndRoll=="Movie01"){
		$EndProcess="ProcessRoll01";
	}
}

//=============================================================================//
..//�����[���J�n
//=============================================================================//
function SetRoll($�����P�ʖ�,$BGM��,$�ҋ@)
{
	if(!$PreSetRoll){
		#play_speed_plus=#SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
	
		$SYSTEM_menu_lock=true;
	}


	if($EndRoll!="Movie01"){
		CreateProcess("�G���h���[���v���Z�X", 2000, 0, 0, $�����P�ʖ�);
		SetAlias("�G���h���[���v���Z�X", "�G���h���[���v���Z�X");
		CreateProcess("�G���h���[���̃v���Z�X", 150, 0, 0, "EndSong");
		SetAlias("�G���h���[���̃v���Z�X", "�G���h���[���̃v���Z�X");
	
		CreateColor("�F", $LayerCount9, 0, 0, 1024, 576, BLACK);
		SetAlias("�F", "�F");
		Fade("�F", 0, 0, null, true);
	
		$EndingSkip=false;
		Request("�G���h���[���v���Z�X", Start);
		Wait(5000);
		if($�ҋ@){WaitAction("�G���h���[���v���Z�X", null);}
	
		$SYSTEM_keydown_enter=false;
		$SYSTEM_l_button_down=false;
		select{
			if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				break;
			}
		}
		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	
		$EndingSkip=true;

		Request($BGM��, EntrustSuspend);
		SetVolume($BGM��, 6000, 0, NULL);

		if($EndName[$ENDNumber][8]!=false){
			Request($BGM��2, EntrustSuspend);
			SetVolume($BGM��2, 6000, 0, NULL);
		}
	}else{
		//���[�r�[
		CreateColor("�F", $LayerCount9, 0, 0, 1024, 576, BLACK);
		SetAlias("�F", "�F");
		Fade("�F", 0, 0, null, true);

		CreateMovie("ENDMovie",$LayerCount1,0,0,false,false,"dx/mv_axl_ED.ngs",500);
		SetAlias("ENDMovie", "ENDMovie");

		if(#LOCAL_break_play_movie&&!$�ҋ@){
			//Message("�f�o�b�O�p�E�B���h�E�P","�f�o�b�O�p�ł�",YESNOCANCE,EXCLAMATION);
			CreateProcess("�G���h���[���v���Z�X���[�r�[", 150, 0, 0, "EndMovie");
			SetAlias("�G���h���[���v���Z�X���[�r�[", "�G���h���[���v���Z�X���[�r�[");
			Request("�G���h���[���v���Z�X���[�r�[", Start);
		}
		WaitPlay("ENDMovie", null);

		Request("�G���h���[���v���Z�X���[�r�[", Stop);
		WaitAction("�G���h���[���v���Z�X���[�r�[", null);
		Delete("�G���h���[���v���Z�X���[�r�[");

		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	}

	Wait(2000);
	Fade("@�F", 2000, 1000, null, true);

	Request("�G���h���[���v���Z�X", Stop);

	Fade("@�G���h���[��*",0,0,null,true);
	Delete("@�G���h���[��*");
	Delete("@END*");
	Fade("@�F", 0, 0, null, true);

	Delete("@�F");

	Wait(2000);

	if($EndName[$ENDNumber]!="���S��"){
		//$SYSTEM_menu_lock = false;
	}

	#SYSTEM_play_speed = #play_speed_plus;
	$SYSTEM_text_waitkey = true;

	$ClearL=true;
	#ClearG=true;

	$PLACE_end=false;
	$PreSetRoll=false;
}

function EndMovie()
{
	$SYSTEM_keydown_enter=false;
	$SYSTEM_l_button_down=false;

	while(1){
		if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				Fade("@�F", 2000, 1000, null, true);
				Delete("@ENDMovie");
		}
		Wait(100);
	}
}

//=============================================================================//
..//�����[�������v���Z�X
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
...//�ÓT�I�t�F�[�h�X�N���v�g
function TextureRoll01()
{
	if($EndName[$ENDNumber][9]){
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$nut=String("ENDTexture%02d",$ENDWhile);
			$img=$EndName[$ENDNumber][0][$ENDWhile];
	
			if($img=="WHITE"||$img=="BLACK"){
				CreateColor($nut, $LayerCount2, 0, 0, 1024, 576, $img);
			}else{
				//$img="cg/sys/ed/thum/"+$img;
				$img="cg/sys/ed/"+$img;//+".png";

				if($EndName[$ENDNumber]=="���S��"){
					if(Strstr($img, "logo")){
						CreateTexture($nut, $LayerCount9, 0, 0, $img);
					}else{
						CreateTexture($nut, $LayerCount2, 25, 120, $img);
					}
				}else{
					CreateTexture($nut, $LayerCount2, Center, Middle, $img);
				}
			}
			SetAlias($nut, $nut);
			Fade($nut, 0, 0, null, true);
			$ENDWhile++;
		}
	}

	if($EndName[$ENDNumber][7]!="F"){
		if($EndName[$ENDNumber][7]=="V"){
			$EndStartPoint=576;
		}else if($EndName[$ENDNumber][7]=="H"){
			$EndStartPoint=0;
		}

		$ENDWhile=0;
		while($EndName[$ENDNumber][6]>$ENDWhile){
			$nut=String("ENDRoll%02d",$ENDWhile);
			$img="cg/sys/ed/"+$EndName[$ENDNumber][6][$ENDWhile];//+".png";

			if($EndName[$ENDNumber][7]=="V"){
				CreateTexture($nut, $LayerCount1, Center, 0, $img);
				SetAlias($nut, $nut);

				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollV=$EndStartPoint;
				Move($nut, 0, 0, $RollV, null, true);
				$EndStartPoint+=ImageVertical($nut);
				$EndStart=$EndStartPoint;
			}else if($EndName[$ENDNumber][7]=="H"){
				CreateTexture($nut, $LayerCount1, 0, Middle, $img);
				SetAlias($nut, $nut);

				$EndStartPoint+=ImageHorizon($nut);
				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollH = -$EndStartPoint;
				Move($nut, 0, $RollH, 0, null, true);
				$EndStart=$EndStartPoint;
			}

			$ENDWhile++;
		}
	}
}

function ProcessRoll01()
{
	if($EndName[$ENDNumber][7]=="V"){
		$EndMoveA=$EndStart;
		$EndMoveX=0;
		$EndMoveY=-($EndMoveA+$LengthAdjust);
	}else if($EndName[$ENDNumber][7]=="H"){
		$EndMoveA=$EndStart;
		$EndMoveX=$EndMoveA+$LengthAdjust;
		$EndMoveY=0;
	}

	SetLoop($BGM��, false);
	Request($BGM��, CompulsorySuspend);

	$����=RemainTime($BGM��);
	$����=$����+$TimeAdjust;
	if($����<$LoopAdjust){
		$EndExtension=true;
		$�b��=DurationTime($BGM��);
		$����+=$�b��;
		Request("@�G���h���[���̃v���Z�X", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$����+=DurationTime($BGM��2);
		Request("@�G���h���[���̃v���Z�X", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$����,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="����";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$����/$EndBunbo;
		$ENDWhile2=0;
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Fade($nut, $Time, 0, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);
	
			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			$nut=String("@ENDTexture%02d",$ENDWhile);
			Fade($nut, $Time, 1000, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);

			$ENDWhile2++;
			$ENDWhile++;
		}
	}

	WaitAction("@ENDRoll*", null);
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
...//�ÓT�I���[���X�N���v�g
function TextureRoll00()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 600, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");
}
function ProcessRoll00()
{
	$EndMoveA=ImageVertical("@ENDRoll");
	$EndMoveA+=$LengthAdjust;
	$EndMoveB=-($EndMoveA);

	SetLoop($BGM��, false);
	Request($BGM��, CompulsorySuspend);

	$����=RemainTime($BGM��);
	$����+=$TimeAdjust;
	if($����<$LoopAdjust){
		$EndExtension=true;
		$�b��=DurationTime($BGM��);
		$����+=$�b��;
		Request("@�G���h���[���̃v���Z�X", Start);
	}
	Move("@ENDRoll",$����,@0,@$EndMoveB,null,true);
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
...//�ÓT�I���[���X�N���v�g�F��
function TextureRoll01H()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 0, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");

	$RollH=ImageHorizon("ENDRoll");
	$RollH=-$RollH;
	Move("ENDRoll", 0, $RollH, 0, null, true);
}
function ProcessRoll01H()
{
	$EndMoveA=ImageHorizon("@ENDRoll");
	$EndMoveA+=$LengthAdjust;

	SetLoop($BGM��, false);
	Request($BGM��, CompulsorySuspend);

	$����=RemainTime($BGM��);
	$����+=$TimeAdjust;
	if($����<$LoopAdjust){
		$EndExtension=true;
		$�b��=DurationTime($BGM��);
		$����+=$�b��;
		Request("@�G���h���[���̃v���Z�X", Start);
	}
	Move("@ENDRoll",$����,@$EndMoveA,@0,null,true);
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�G���h�X�N���v�g�p�̉��p���v���Z�X
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGM��);
		Wait($EndTime);
	
		SetVolume($BGM��, 1000, 0, NULL);
		WaitAction($BGM��, null);
	
		SetFrequency($BGM��, 0, 1000, NULL);
		SetVolume($BGM��, 0, 500, null);
		SetLoop($BGM��, false);
		Request($BGM��, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGM��, null);
	
		if(!$EndingSkip){
			Request($BGM��2, CompulsorySuspend);
	
			SetFrequency($BGM��2, 0, 1000, NULL);
			SetVolume($BGM��2, 0, 500, null);
			SetLoop($BGM��2, false);
			Request($BGM��2, Play);
	
			WaitPlay($BGM��2, null);
		}
	}
}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//=============================================================================//
..//�����[�������i�Ō�Ƀ��b�N����ꍇ�j
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//���E�o�[��~
	//QuickStop();

	//���A�z�z��
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,750,true);

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	Request($ENDBGM, CompulsorySuspend);

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}


function PreSetRoll02A()
{
	//���E�o�[��~
	//QuickStop();

	//���A�z�z��
	ArrayEND();

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}
function PreSetRoll02B($ENDNumber)
{
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);
	Request($ENDBGM, CompulsorySuspend);
}

//=============================================================================//
..//�����[�������i�r������N���b�N���b�N����ꍇ�j
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//���E�o�[��~
	//QuickStop();

	//���A�z�z��
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 5000, 0, NULL);
	SoundPlay($ENDBGM,0,750,true);

	$PLACE_end=true;

	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_skip=false;

	$SYSTEM_text_auto_lock=true;

	Request($ENDBGM, CompulsorySuspend);
	$SYSTEM_text_auto_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;
}

function PlayVOICE_ED($VoiceClassNut,$���y�f�[�^,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="�f�l�u" class="�f�l�u" src="voice/st20/0600220de" mode="off">

	$�N���X��=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(#VoiceName[$VoiceWhile]==$�N���X��){
			//$VoiceGet=true;
		}
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$�N���X��){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"voice_on_"+$�N���X��))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+$�N���X��+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$�ꏊ�w�� = "voice/" + $���y�f�[�^;

		CreateSound($VoiceClassNut, VOICE, $�ꏊ�w��);
		SetAlias($VoiceClassNut, $VoiceClassNut);

		SetLoop($VoiceClassNut, false);
		SetVolume($VoiceClassNut, 0, 1000, null);
		Request($VoiceClassNut, Play);
		Request($VoiceClassNut, Disused);

		$VoiceWaitPlus=$VoiceWaitPlus1;
	}else{
		$VoiceWaitPlus=$VoiceWaitPlus2;
	}
}
function StopVOICEED()
{
	$�҂�����=RemainTime($VoiceClassNut);
	$�҂�����+=$VoiceWaitPlus;
	Wait($�҂�����);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("�f�l�u","voice/st20/0600220de",1000,3000);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box00>
[text0010028]
//�y�f�l�u�z
<voice name="�f�l�u" class="�f�l�u" src="voice/st20/0600220de" mode="off">
�u����ꂿ������\�\�v
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
=
*/



//�����֌W�̃}�N���R�}���h
//=============================================================================//
.//���֌W
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..BGM
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�ʏ��`
function CreateBGM($�a�f�l�i�b�g,$���y�f�[�^)
{
	BGMbase();
	//Lock�����������ꍇ�́uInitBGM�v�Ōʂ�Lock�������Ă��������B
}
function CreateBGMEX($�a�f�l�i�b�g,$���y�f�[�^,�J�n�~���b,�I���~���b)
{
	BGMbase();
	SetLoopPoint($�a�f�l�i�b�g,�J�n�~���b,�I���~���b);
}
function BGMbase()
{
	$�ꏊ�w�� = "sound/bgm/" + $���y�f�[�^;
	CreateSound($�a�f�l�i�b�g, BGM, $�ꏊ�w��);
	SetVolume($�a�f�l�i�b�g, 0, 0, NULL);
	SetAlias($�a�f�l�i�b�g, $�a�f�l�i�b�g);
}



//�c����`
function CreateBGM_ef($�a�f�l�i�b�g�P,$���y�f�[�^)
{
	BGMbase_ef();
}
function CreateBGMEX_ef($�a�f�l�i�b�g�P,$���y�f�[�^,�J�n�~���b,�I���~���b)
{
	BGMbase_ef();
	SetLoopPoint($�a�f�l�i�b�g�P,�J�n�~���b,�I���~���b);
	SetLoopPoint($�a�f�l�i�b�g�Q,�J�n�~���b,�I���~���b);
}
function BGMbase_ef()
{
	$�ꏊ�w�� = "sound/bgm/" + $���y�f�[�^;
	CreateSound($�a�f�l�i�b�g�P, BGM, $�ꏊ�w��);
	SetVolume($�a�f�l�i�b�g�P, 0, 0, NULL);
	SetAlias($�a�f�l�i�b�g�P, $�a�f�l�i�b�g�P);
	Request($�a�f�l�i�b�g�P, Lock);

	$�a�f�l�i�b�g�Q=$�a�f�l�i�b�g�P+"_ef";
	CreateSound($�a�f�l�i�b�g�Q, BGM, $�ꏊ�w��);
	SetVolume($�a�f�l�i�b�g�Q, 0, 0, NULL);
	SetAlias($�a�f�l�i�b�g�Q, $�a�f�l�i�b�g�Q);
	Request($�a�f�l�i�b�g�Q, Lock);

	//SoundEffect("�i�b�g��","Chorus",�h���C0�`�E�F�b�g100,���˂�0~100,�t�B�[�h�o�b�N-99~99,�f�B���C�^�C��0~20);
	//SoundEffect($�a�f�l�i�b�g�Q,"Chorus",50,50,-90,10);
	//SoundEffect($�a�f�l�i�b�g�Q,"Chorus",50,50,-90,10);

	//SoundEffect("�i�b�g��","Echo",�h���C0�`�E�F�b�g100,�t�B�[�h�o�b�N0~100,���`�����l���f�B���C�i1~2000�~���b�j,�E�`�����l���f�B���C�i1~2000�~���b�j);
	//SoundEffect($�a�f�l�i�b�g�Q,"Echo",60,70,230,230);
	SoundEffect($�a�f�l�i�b�g�Q,"Echo",60,70,170,170);
}


function CreateBGMPX("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = $���y�f�[�^;
	CreateSound("�i�b�g��", BGM, $�ꏊ�w��);
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
}

function CreateBGMSE("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = "sound/bgm/" + $���y�f�[�^;
	CreateSound("�i�b�g��", SE, $�ꏊ�w��);
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
}





//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SE
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function CreateSE("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = "sound/se/" + $���y�f�[�^;

	CreateSound("�i�b�g��", SE, $�ꏊ�w��);
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�c����`
function CreateSEEF($�r�d�i�b�g�P,$���y�f�[�^)
{
	$�ꏊ�w�� = "sound/se/" + $���y�f�[�^;
	CreateSound($�r�d�i�b�g�P, BGM, $�ꏊ�w��);
	SetVolume($�r�d�i�b�g�P, 0, 0, NULL);
	SetAlias($�r�d�i�b�g�P, $�r�d�i�b�g�P);
	Request($�r�d�i�b�g�P, Lock);

	$�r�d�i�b�g�Q=$�r�d�i�b�g�P+"_ef";
	CreateSound($�r�d�i�b�g�Q, BGM, $�ꏊ�w��);
	SetVolume($�r�d�i�b�g�Q, 0, 0, NULL);
	SetAlias($�r�d�i�b�g�Q, $�r�d�i�b�g�Q);
	Request($�r�d�i�b�g�Q, Lock);

	SoundEffect($�r�d�i�b�g�Q,"Echo",60,70,170,170);
}

function CreateSEEX("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = "sound/se/" + "$���y�f�[�^";

	if($���y�f�[�^=="se�퓬_�Ռ�_�G�l���M�[驂�����01L"){
		//�����������h���}�_�ł��g�p
		$�J�n�~���b=5833;
		$�I���~���b=17267;
	}else if($���y�f�[�^=="se�퓬_���K�C_�`���[�W01"){
		//�h���}�_����
		$�J�n�~���b=997;
		$�I���~���b=1253;
	}else if($���y�f�[�^=="se�퓬_�@_�r���퉻01L"){
		//�h���}�_����
		$�J�n�~���b=2663;
		$�I���~���b=8634;
	}else if($���y�f�[�^=="se��_�K��_����02"){
		//�h���}�_����
		$�J�n�~���b=1193;
		$�I���~���b=6835;
	}else if($���y�f�[�^=="se�敨_�����o�C�N_�^�[�{�X�^�[�g01"){
		//�h���}�_����
		$�J�n�~���b=3036;
		$�I���~���b=7055;
	}

	CreateSound("�i�b�g��", SE, "$�ꏊ�w��");
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
	SetLoopPoint("�i�b�g��",$�J�n�~���b,$�I���~���b);
}

function OnSE($���y�f�[�^,$�r�d����)
{
	if($SeName==""||$SeName=="OnSE10"){$SeName="OnSE01";}
	else if($SeName=="OnSE01"){$SeName="OnSE02";}
	else if($SeName=="OnSE02"){$SeName="OnSE03";}
	else if($SeName=="OnSE03"){$SeName="OnSE04";}
	else if($SeName=="OnSE04"){$SeName="OnSE05";}
	else if($SeName=="OnSE05"){$SeName="OnSE06";}
	else if($SeName=="OnSE06"){$SeName="OnSE07";}
	else if($SeName=="OnSE07"){$SeName="OnSE08";}
	else if($SeName=="OnSE08"){$SeName="OnSE09";}
	else if($SeName=="OnSE09"){$SeName="OnSE10";}

	if($SeName01==""){$SeName01=$SeName;}
	else if($SeName02==""){$SeName02=$SeName;}
	else if($SeName03==""){$SeName03=$SeName;}
	else if($SeName04==""){$SeName04=$SeName;}
	else if($SeName05==""){$SeName05=$SeName;}
	else if($SeName06==""){$SeName06=$SeName;}
	else if($SeName07==""){$SeName07=$SeName;}
	else if($SeName08==""){$SeName08=$SeName;}
	else if($SeName09==""){$SeName09=$SeName;}
	else if($SeName10==""){$SeName10=$SeName;}

	$�i�b�g�� = $SeName;

	$�ꏊ�w�� = "sound/se/" + $���y�f�[�^;

	CreateSound($�i�b�g��, SE, $�ꏊ�w��);
	SetVolume($�i�b�g��, 0, 0, NULL);
	SetAlias($�i�b�g��, $�i�b�g��);

	Request($�i�b�g��, "Play");

	SetFrequency($�i�b�g��, 0, 1000, NULL);
	SetPan($�i�b�g��, 0, 0, NULL);
	SetLoop($�i�b�g��, false);

	SetVolumeEX($�i�b�g��, 0, $�r�d����, null);
	Request($�i�b�g��, Disused);

}




//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..VOICE
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function CreateVOICE($�i�b�g��,$���y�f�[�^)
{
	$�N���X��=$�i�b�g��;

//	$VoiceGetN=0;
//	$VoiceGet=false;
//	$VoiceWhile=0;
//	while(#VoiceSetCount>$VoiceWhile){
//		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$�N���X��){
//			$VoiceGetN=$VoiceWhile;
//			$VoiceGet=true;
//		}
//		$VoiceWhile++;
//	}

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $�N���X��);
//	CreateText("�e�L�X�g�P", 200000, 50, 50, 700, 500, $VOICE_ON);

	$VOICE_LIST="���t�g���m�C�Y�~���N�N���A�H��i�I�L�I�~�I�^�G�~�Y�L�g���b�v�E�C���X�����@�x�j�E�T�M���h�L���K������A���t�@�Z�C���]";
	$VOICE_OTHER=Strstr($VOICE_LIST, $�N���X��);
//	CreateText("�e�L�X�g�Q", 200000, 50, 150, 700, 500, $VOICE_OTHER);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		$�ꏊ�w�� = "voice/" + $���y�f�[�^;

		CreateSound($�i�b�g��, VOICE, $�ꏊ�w��);
		SetVolume($�i�b�g��, 0, 0, NULL);
		SetAlias($�i�b�g��, $�i�b�g��);
	}
}

function CreateVOICEEX($�i�b�g��,$���y�f�[�^,$�N���X��)
{
//	$VoiceGetN=0;
//	$VoiceGet=false;
//	$VoiceWhile=0;
//	while(#VoiceSetCount>$VoiceWhile){
//		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$�N���X��){
//			$VoiceGetN=$VoiceWhile;
//			$VoiceGet=true;
//		}
//		$VoiceWhile++;
//	}

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $�N���X��);
//	CreateText("�e�L�X�g�P", 200000, 50, 50, 700, 500, $VOICE_ON);

	$VOICE_LIST="���t�g���m�C�Y�~���N�N���A�H��i�I�L�I�~�I�^�G�~�Y�L�g���b�v�E�C���X�����@�x�j�E�T�M���h�L���K������A���t�@�Z�C���]";
	$VOICE_OTHER=Strstr($VOICE_LIST, $�N���X��);
//	CreateText("�e�L�X�g�Q", 200000, 50, 150, 700, 500, $VOICE_OTHER);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		$�ꏊ�w�� = "voice/" + $���y�f�[�^;

		CreateSound($�i�b�g��, VOICE, $�ꏊ�w��);
		SetVolume($�i�b�g��, 0, 0, NULL);
		SetAlias($�i�b�g��, $�i�b�g��);
	}

//	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
//		$�ꏊ�w�� = "voice/" + $���y�f�[�^;

//		CreateSound($�i�b�g��, VOICE, $�ꏊ�w��);
//		SetVolume($�i�b�g��, 0, 0, NULL);
//		SetAlias($�i�b�g��, $�i�b�g��);
//	}
}

function CreateVOICESE($�i�b�g��,$���y�f�[�^)
{
	$�N���X��=$�i�b�g��;

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $�N���X��);

	$VOICE_LIST="���t�g���m�C�Y�~���N�N���A�H��i�I�L�I�~�I�^�G�~�Y�L�g���b�v�E�C���X�����@�x�j�E�T�M���h�L���K������A���t�@�Z�C���]";
	$VOICE_OTHER=Strstr($VOICE_LIST, $�N���X��);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		//$�ꏊ�w�� = "voice/" + $���y�f�[�^;
		$�ꏊ�w�� = $���y�f�[�^;

		CreateSound($�i�b�g��, SE, $�ꏊ�w��);
		SetVolume($�i�b�g��, 0, 0, NULL);
		SetAlias($�i�b�g��, $�i�b�g��);
	}

}

function CreateVOICESEEX($�i�b�g��,$���y�f�[�^,$�N���X��)
{

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $�N���X��);

	$VOICE_LIST="���t�g���m�C�Y�~���N�N���A�H��i�I�L�I�~�I�^�G�~�Y�L�g���b�v�E�C���X�����@�x�j�E�T�M���h�L���K������A���t�@�Z�C���]";
	$VOICE_OTHER=Strstr($VOICE_LIST, $�N���X��);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		//$�ꏊ�w�� = "voice/" + $���y�f�[�^;
		$�ꏊ�w�� = $���y�f�[�^;

		CreateSound($�i�b�g��, SE, $�ꏊ�w��);
		SetVolume($�i�b�g��, 0, 0, NULL);
		SetAlias($�i�b�g��, $�i�b�g��);
	}

}


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..�Đ�
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SoundPlay($SoundPlayName,�b��,$�{���E��,���[�v�ݒ�)
{
	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, ���[�v�ݒ�);

	SetVolumeEX($SoundPlayName, �b��, $�{���E��, null);

	Request($SoundPlayName, Disused);
}

function SoundPlayEF($SoundPlayName,�b��,$�{���E��,���[�v�ݒ�)
{
	//�G�t�F�N�g�d�l
	$bgmmoji=Strstr($SoundPlayName, "d");
	if($bgmmoji==1||$bgmmoji==2){
		$SoundPlayName2=$SoundPlayName+"_ef";

		if(RemainTime($SoundPlayName)==0||RemainTime($SoundPlayName)==DurationTime($SoundPlayName)){
			SetVolume($SoundPlayName, 0, 1, null);
			Request($SoundPlayName2, Stop);
		}

		SetLoop($SoundPlayName2, ���[�v�ݒ�);
		SetVolume($SoundPlayName2, 0, 1, null);
		Request($SoundPlayName2, Play);

		Request($MusicStartName2, Disused);
	}

	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, ���[�v�ݒ�);

	SetVolumeEX($SoundPlayName, �b��, $�{���E��, null);

	Request($SoundPlayName, Disused);
}

/*
	if(RemainTime($SoundPlayName)==0||RemainTime($SoundPlayName)==DurationTime($SoundPlayName)){
		SetVolume($SoundPlayName, 0, 1, null);
		//�G�t�F�N�g�d�l
		$bgmmoji=Strstr($SoundPlayName, "d");
		if($bgmmoji==1||$bgmmoji==2){
			$SoundPlayName2=$SoundPlayName+"_ef";
			Request($SoundPlayName2, Stop);
			SetLoop($SoundPlayName2, ���[�v�ݒ�);
			SetVolume($SoundPlayName2, 0, 1, null);
			Request($SoundPlayName2, Play);
		}
	}else{
		//�G�t�F�N�g�d�l
		$bgmmoji=Strstr($SoundPlayName, "d");
		if($bgmmoji==1||$bgmmoji==2){
			$SoundPlayName2=$SoundPlayName+"_ef";
			SetLoop($SoundPlayName2, ���[�v�ݒ�);
			SetVolume($SoundPlayName2, 0, 1, null);
			Request($SoundPlayName2, Play);
		}
	}
*/

function MusicStart($MusicStartName,�b��,$�{���E��,�Đ�����,�Đ��X�s�[�h,�e���|,���[�v�ݒ�)
{
	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, �Đ��X�s�[�h, NULL);
	SetPan($MusicStartName, 0, �Đ�����, NULL);
	SetLoop($MusicStartName, ���[�v�ݒ�);

	SetVolumeEX($MusicStartName, �b��, $�{���E��, �e���|);

	Request($MusicStartName, Disused);
}

function MusicStartEF($MusicStartName,�b��,$�{���E��,�Đ�����,�Đ��X�s�[�h,�e���|,���[�v�ݒ�)
{
	if(RemainTime($MusicStartName)==0||RemainTime($MusicStartName)==DurationTime($MusicStartName)){
		SetVolume($MusicStartName, 0, 1, null);
		//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł�",YESNOCANCE,EXCLAMATION);

		//�G�t�F�N�g�d�l
		$MusicStartName2=$MusicStartName+"_ef";
		Request($MusicStartName2, Stop);
		SetLoop($MusicStartName2, ���[�v�ݒ�);
		SetVolume($MusicStartName2, 0, 1, null);
		Request($MusicStartName2, Play);
		Request($MusicStartName2, Disused);
	}

	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, �Đ��X�s�[�h, NULL);
	SetPan($MusicStartName, 0, �Đ�����, NULL);
	SetLoop($MusicStartName, ���[�v�ݒ�);

	SetVolumeEX($MusicStartName, �b��, $�{���E��, �e���|);

	Request($MusicStartName, Disused);
}




//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..���ʒ���
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SetVolumeEX($SetVolumeName, �b��, $�{���E��, �e���|)
{
	$DynamicRange=$�{���E��/2;
	if($�{���E��==1){
		$DynamicRange=1;
	}

	$bgmmoji=Strstr($SetVolumeName, "d");
	if($�{���E��==0&&($bgmmoji==1||$bgmmoji==2)){
		$SetVolumeNameEF=$SetVolumeName+"_ef";
		SetVolume($SetVolumeNameEF, �b��, 0, NULL);
	}
	SetVolume($SetVolumeName, �b��, $DynamicRange, �e���|);
}

function SoundLoopEnd($�i�b�g��)
{
	SetLoop($�i�b�g��, false);
	SetLoopPoint($�i�b�g��,0,999999);
}

function SetVolumeEF($SetVolumeName,$�{���E��)
{
	$DynamicRange=$�{���E��/2;
	if($�{���E��==1){
		$DynamicRange=1;
	}

	$SetVolumeName2=$SetVolumeName+"_ef";
	SetVolume($SetVolumeName, 0, 0, null);
	SetVolume($SetVolumeName2, 0, $DynamicRange, null);
	Request($SetVolumeName2, Pause);
}







//��BGM��Z�߂Ē�`
//=============================================================================//
.//BGM��`
//=============================================================================//

function InitBGM()
{
//��`
	CreateBGMEX_ef("dm001","dmbgm001",16303,81278);//����ȁi���Z����j
	CreateBGMEX_ef("dm002","dmbgm002",25460,119912);//����Ȃ��̂Q
	CreateBGMEX_ef("dm003","dmbgm003",8082,71648);//�����ȋ�C�i���ǂ��n�j
	CreateBGMEX_ef("dm004","dmbgm004",9533,100240);//�v���`�i�W�F�C���i�V���n�n�̊y�������y�j
	CreateBGMEX_ef("dm005","dmbgm005",48080,99775);//�s��
	CreateBGMEX_ef("dm006","dmbgm006",27772,166235);//�s�����̂Q
	CreateBGMEX_ef("dm007","dmbgm007",38903,95365);//�ٔ���
	CreateBGMEX_ef("dm007a","dmbgm007a",35851,92313);//�ٔ���//�`���󔒃J�b�g��
	CreateBGMEX_ef("dm008","dmbgm008",3690,133605);//������
	CreateBGMEX_ef("dm009","dmbgm009",33413,76095);//�o�g���i���e��j
	CreateBGMEX_ef("dm010","dmbgm010",37819,123736);//���C���o�g���i�d�]��ԁ^�ʏ�j
	CreateBGMEX_ef("dm011","dmbgm011",22745,76083);//���C���o�g���i�c�݁j
	CreateBGMEX_ef("dm012","dmbgm012",24082,181172);//�Â���
	CreateBGMEX_ef("dm013","dmbgm013",27083,111081);//���₩�ȋ�C
	CreateBGMEX_ef("dm014","dmbgm014",6836,113781);//���u�ȃV�[��
	CreateBGMEX_ef("dm015","dmbgm015",64806,119667);//�S��f�I
	CreateBGMEX_ef("dm016","dmbgm016",16249,88410);//���t�̌���
	CreateBGMEX_ef("dm017","dmbgm017",46404,100141);//�\�I���
	CreateBGMEX_ef("dm018","dmbgm018",114083,178074);//���]�^���[
	CreateBGMEX_ef("dm019","dmbgm019",10079,42073);//���]�̃e�[�}�i���]BGM�j
	CreateBGMEX_ef("dm020","dmbgm020",17495,111505);//�N���A���̉́i���]BGM�^���]�̃e�[�}�̃A�� ���W�ł������ł��j
	CreateBGMEX_ef("dm020a","dmbgm020a",2241,129408);//�N���A�̉́i�΃N���A���j
	CreateBGMEX_ef("dm020b","dmbgm020b",2092,126718);//�N���A�̉́i�����j
	CreateBGMEX_ef("dm021","dmbgm021",11468,76084);//���]�ƑΌ�
	CreateBGMEX_ef("dm022","dmbgm022",479,30931);//�N���u�̋�
	CreateBGMEX_ef("dm023","dmbgm023",1789,93204);//���������̂Q
	CreateBGMEX_ef("dm023a","dmbgm023a",0,48690);//���������̂Q//�㔼�J�b�R�C�C�p�[�g�̂ݔ�//11524,37055���������F�������Ă܂�(22,48690)

	CreateBGM_ef("dmop","dmsongop");//�wAI CATCH�xGOATBED

	CreateBGM_ef("dmedgrand","dmsongedgrand");//�@GOOD(�^��END)�wPARA MIDIA�xGOATBED
	CreateBGM_ef("dmedgood","dmsongedgood");//����GOOD�wOnly finally there is the free end�xGOATBED

	CreateBGM_ef("dmedbd01","dmsongedbd01");//�g��BAD�wtears�x���Ƃ����Ȃ�
	CreateBGM_ef("dmedbd02","dmsongedbd02");//�m�C�YBAD�wfeel your noise�x�ؑ�����
	CreateBGM_ef("dmedbd03","dmsongedbd03");//�~���NBAD�wSandy Weeds�xVERTUEUX
	CreateBGM_ef("dmedbd04","dmsongedbd04");//�N���ABAD�wImmer Sie�x���Ƃ����Ȃ�
	CreateBGM_ef("dmedbd05","dmsongedbd05");//�@BAD�wdeSLASH�xGOATBED
	CreateBGM_ef("dmedbd06","dmsongedbd06");//�E�C�g��BAD�wMASCULINE DEVIL�xGOATBED

	//�m�C�Y�t�@�~�R���o�b�h�p�Wbit������
	CreateBGM_ef("dm8bit001","dm8bitbgm001");//����ȁi���Z����j
	CreateBGM_ef("dm8bit009","dm8bitbgm009");//�o�g���i���e��j
	CreateBGM_ef("dm8bit010","dm8bitbgm010");//�o�g���i�d�]��ԁ^�ʏ�j
	CreateBGM_ef("dm8bitedbd02","dm8bitsongedbd02");//�m�C�YBAD

	//�G�N�X�g���p�y�ȃV���[�g
	CreateBGM_ef("dmop_s","dmsongop_short");//�wAI CATCH�xGOATBED

	CreateBGM_ef("dmedgrand_s","dmsongedgrand_short");//�@GOOD(�^��END)�wPARA MIDIA�xGOATBED
	CreateBGM_ef("dmedgood_s","dmsongedgood_short");//����GOOD�wOnly finally there is the free end�xGOATBED

	CreateBGM_ef("dmedbd01_s","dmsongedbd01_short");//�g��BAD�wtears�x���Ƃ����Ȃ�
	CreateBGM_ef("dmedbd02_s","dmsongedbd02_short");//�m�C�YBAD�wfeel your noise�x�ؑ�����
	CreateBGM_ef("dmedbd03_s","dmsongedbd03_short");//�~���NBAD�wSandy Weeds�xVERTUEUX
	CreateBGM_ef("dmedbd04_s","dmsongedbd04_short");//�N���ABAD�wImmer Sie�x���Ƃ����Ȃ�
	CreateBGM_ef("dmedbd05_s","dmsongedbd05_short");//�@BAD�wdeSLASH�xGOATBED
	CreateBGM_ef("dmedbd06_s","dmsongedbd06_short");//�E�C�g��BAD�wMASCULINE DEVIL�xGOATBED

}



function VoiceOn(){
}
function checkExtraNew(){
	$extra_new_ml=false;
	$extra_new_reco=false;
	$extra_new_gl=false;
	#ML_on_op+=0;
	if(#ML_on_op<1){
		$extra_new_ml=true;
	}
	if(#GDED1==1||#GDED2==1||#GDED3==1||#GDED4==1){
		#ML_on_edgood+=0;
		if(#ML_on_edgood<1){$extra_new_ml=true;}
	}
	if(#BDED1==1){
		#ML_on_edbd01+=0;
		if(#ML_on_edbd01<1){$extra_new_ml=true;}
	}
	if(#BDED2==1){
		#ML_on_edbd02+=0;
		if(#ML_on_edbd02<1){$extra_new_ml=true;}
	}
	if(#BDED3==1){
		#ML_on_edbd03+=0;
		if(#ML_on_edbd03<1){$extra_new_ml=true;}
	}
	if(#BDED4==1){
		#ML_on_edbd04+=0;
		if(#ML_on_edbd04<1){$extra_new_ml=true;}
	}
	if(#BDED5==1){
		#ML_on_edbd05+=0;
		if(#ML_on_edbd05<1){$extra_new_ml=true;}
	}
	if(#BDED6==1){
		#ML_on_edbd06+=0;
		if(#ML_on_edbd06<1){$extra_new_ml=true;}
	}
	if(#GDED5==1){
		#ML_on_edgrand+=0;
		if(#ML_on_edgrand<1){$extra_new_ml=true;}
	}
	
	if(#RECLIB01==1){
		#RECLIB01_NEW+=0;
		if(#RECLIB01_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB02==1){
		#RECLIB02_NEW+=0;
		if(#RECLIB02_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB03==1){
		#RECLIB03_NEW+=0;
		if(#RECLIB03_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB04==1){
		#RECLIB04_NEW+=0;
		if(#RECLIB04_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB05==1){
		#RECLIB05_NEW+=0;
		if(#RECLIB05_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB06==1){
		#RECLIB06_NEW+=0;
		if(#RECLIB06_NEW<1){$extra_new_reco=true;}
	}
//	if(#RECLIB07==1){
//		#RECLIB07_NEW+=0;
//		if(#RECLIB07_NEW<1){$extra_new_reco=true;}
//	}
	if(#RECLIB08==1){
		#RECLIB08_NEW+=0;
		if(#RECLIB08_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB09==1){
		#RECLIB09_NEW+=0;
		if(#RECLIB09_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB10==1){
		#RECLIB10_NEW+=0;
		if(#RECLIB10_NEW<1){$extra_new_reco=true;}
	}
	if(#GDED5==1){
		#GL_09+=0;
		#GL_13_1+=0;
		#GL_13_2+=0;
		if(#GL_09<1||#GL_13_1<1||#GL_13_2<1){$extra_new_gl=true;}
	}
	if(#GDED1==1||#GDED2==1||#GDED3==1||#GDED4==1){
		#GL_13_1+=0;
		#GL_13_2+=0;
		if(#GL_13_1<1){$extra_new_gl=true;}
	}
}