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


scene dm0190sl.nss_MAIN
{
$TEXTBOX_TYPE="���C��";

	if($PreGameName=="dm0190_vs.nss"){
	}else{
	CreateTxtinEffect("�@",4000);
	CreateTxtinEffect("�m�C�Y",4000);
	RMScaningSet();
	RMScaningCSet("���t");
	RMDefaultStatusSet();
	RMDControlSet();
	}

//�������ݒ�Ȃ�
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	//


}


scene dm0190sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm008",0,450,true);//����

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G��", 1310, -512, -302, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 550, 550, Dxl3, false);

	FadeDelete("��w�i", 0, null, true);

//���I�����i�@�j�F
//�����K�[�h����
//�����@��݂��i�@�|�C���g�{�P�j

//���I����
	$select_fade=true;
	SetChoice02("In Deckung gehen","Ren beschuetzen");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0191_vs.nss";$�@�I����1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0192_vs.nss";$�@�I����1=1;}

}
