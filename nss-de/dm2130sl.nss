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


scene dm2130sl.nss_MAIN
{
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


scene dm2130sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

//	OnBG(10,"bg302021_5_�O���b�^�[����");
//	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -632, -472, "cg/bg/l/bg302021_5_�O���b�^�[����_l.jpg");

	FadeDelete("��w�i", 0, null, true);



//���I�����F�m�C�Y
//��������₷�悤�Ɍ���
//��������ɘA��Ă����i�m�C�Y�|���g�{�P�j


//���I����
	SetChoice02(" Tell him to cool his hand"," Take him to water");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2131.nss";$�m�C�Y�I����5=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm2132.nss";$�m�C�Y�I����5=1;}

}
