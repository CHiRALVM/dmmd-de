//<continuation number="0">
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


scene dm0010.nss_MAIN
{

//�����[�g�ϐ��S������
$�g���I����1=0;$�g���I����2=0;$�g���I����3=0;$�g���I����4=0;
$�g���I����5=0;$�g���I����6=0;$�g���I����7=0;$�g���I����8=0;
$�m�C�Y�I����1=0;$�m�C�Y�I����2=0;$�m�C�Y�I����3=0;$�m�C�Y�I����4=0;
$�m�C�Y�I����5=0;$�m�C�Y�I����6=0;$�m�C�Y�I����7=0;$�m�C�Y�I����8=0;
$�~���N�I����1=0;$�~���N�I����2=0;$�~���N�I����3=0;$�~���N�I����4=0;
$�~���N�I����5=0;$�~���N�I����6=0;$�~���N�I����7=0;$�~���N�I����8=0;
$pMINK=0;$pMINKbad=0;
$�N���A�I����1=0;$�N���A�I����2=0;$�N���A�I����3=0;$�N���A�I����4=0;
$�N���A�I����5=0;$�N���A�I����6=0;$�N���A�I����7=0;$�N���A�I����8=0;
$�@�I����1=0;$�@�I����2=0;$�@�I����3=0;$�@�I����4=0;
$�@�I����5=0;$�@�I����6=0;$�@�I����7=0;$�@�I����8=0;
$�E�C�g���I����=0;

//�@���[�g�p�X�^�[�g�t���O����
if(#GDED4CLEAR==1){$START0010=1;}
else{$START0010=0;}
//���[�g�ԍ�
$DM_ROUTE=0;
//�L�����|�C���g�����`�F�b�N�p
Array($DM_ROUTE_SEL,0, 0,0,0,0);

//���ɃG�t�F�N�g�p�ϐ�
$HALevel=1;//�V�i���I���̓��Ƀ��x��
$HACurrent=1;//�v���Z�X�p�̓��Ƀ��x��
$HAON=0;//�v���Z�X�Đ���

	//�e�L�X�g�{�b�N�X��ށi�h���}�_�j
	//�ʏ�A���C���A�\�I�A�\�I���i�Z�C�j�@�~�@�n�̕��̂݁A��E�B���h�E����
	$TEXTBOX_TYPE="";//"���C��"�A"�\�I"�A�A"�\�I��"//���L�����f�t�H���g�͒ʏ�


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
	$GameName = "dm0020.nss";

}


scene dm0010.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	
	if(#mvdot001==1){
	}else{
		if(#LOCAL_break_play_movie){
		}else{$SYSTEM_skip_lock=true;}
	}
	

	PrintBG("��w�i", 30000);

	FadeDelete("��w�i", 1000, null, true);

	CreateMovieSPvol("�Gmvdot001",100,Center,Middle,false,false,"dx/mvdot001_eng.ngs",150);
//$mv_vol=#SYSTEM_sound_volume_se*$�w��l/1000;
//	CreateMovie("�Gmvdot001",100,Center,Middle,false,false,"dx/mvdot001_eng.ngs",$mv_vol);
	Zoom("�Gmvdot001",0,2000,2000,null,true);
	MovieSkipPlay("�Gmvdot001","mvdot001");
/*
	if(#mvdot001==1){
		$waittime=RemainTime("�Gmvdot001");
		WaitKey($waittime);
	}else{
		if(#LOCAL_break_play_movie){
			$waittime=RemainTime("�Gmvdot001");
			WaitKey($waittime);
		}else{WaitPlay("�Gmvdot001",true);}
		#mvdot001=1;
		Save(0);
	}
*/
	$SYSTEM_skip_lock=false;

	PrintBG("��w�i", 30000);
	FadeDelete("��w�i", 3000, null, true);WaitKey(2000);


//���ł���΃t�@�~�R�����t�H���g�Ńs�A�s�A�s�A�ƕ\����]�ł����A�����Ȃ畁�ʂł����ł��B

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//<PRE @box0>
//[text0010]
/*
�@�c�c�c�c

�@�c�c�c�c

�@Du bist endlich da�c�c

�@Ich habe gewartet�c�c
�@Immer�c�c

�@Komm her�c�c

�@Zerstoere mich�c�c

�@Mit deiner Kraft�c�c
*/

//</PRE>
//	SetText();
//	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0020.nss"]

WaitKey(1000);

	ClearFadeAll(1000, true);

}

