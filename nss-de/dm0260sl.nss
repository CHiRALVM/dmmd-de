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


scene dm0260sl.nss_MAIN
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


scene dm0260sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm013",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�d�u100", 100, -250, -268, "cg/ev/m/ev026�@�����e_m.jpg");

	FadeDelete("��w�i", 0, null, true);

//���I�����i�@�j�F
//�������������Ȃ��i���@���[�g�J���O�͂������������Œʂ�j
//�������������͂Ȃ����ǁi�@�|�C���g�{�P�j


//���I����
	SetChoice02(" It's not strange"," Not really");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0261.nss";$�@�I����2=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0262.nss";$�@�I����2=1;}



//	ClearFadeAll(1000, true);

}
