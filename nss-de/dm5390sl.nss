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


scene dm5390sl.nss_MAIN
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


scene dm5390sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304041_5_���]�^���[�����G���A������");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");

	FadeDelete("��w�i", 0, null, true);

//���I�����F�E�C&�g��BAD
//�����͂��g��
//�����͂̏Փ���}����i�E�C&�g���|�C���g�{�P�j


//���I����
	SetChoice02(" Use the power"," Fight the urge to use the power");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5391.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm5392.nss";$�E�C�g���I����++;}

}
