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


scene dm5100sl.nss_MAIN
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


scene dm5100sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�d�u111", 111, -250, -268, "cg/ev/m/ev026�@�����eb_m.jpg");

	FadeDelete("��w�i", 0, null, true);


//���I�����F�@
//�����\����Ȃ��C�����ɂȂ�i�@�|�C���g�{�P�j
//�����₵���C�����ɂȂ�


//���I����
	$select_fade=true;
	SetChoice02(" I feel sorry"," I feel lonely");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5101.nss";$�@�I����5=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm5102.nss";$�@�I����5=0;}

}
