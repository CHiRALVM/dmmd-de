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


scene dm5240sl.nss_MAIN
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


scene dm5240sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i90", 90, -132, -235, "cg/bg/m/bg302021_5_�O���b�^�[����_m.jpg");

	FadeDelete("��w�i", 0, null, true);

//���I�����F�@
//�����@�ɓ�����i�@�|�C���g�{�P�j
//�����@�𕏂ł�


//���I����
	SetChoice02(" Answer Ren"," Pet Ren");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5241.nss";$�@�I����7=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm5242.nss";$�@�I����7=0;}

}
