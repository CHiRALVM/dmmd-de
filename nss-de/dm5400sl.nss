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


scene dm5400sl.nss_MAIN
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


scene dm5400sl.nss
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

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	St("MR",700, @0,@0,"st�g���b�v_�ʏ�o�b�a_normal");
	FadeAllSt(0,true);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 0, 800, null, true);

	FadeDelete("��w�i", 0, null, true);

//���I�����F�E�C&�g��BAD
//����������R����C�͂��Ȃ��i�E�C&�g���|�C���g�{�P�j
//��������ł����߂Ȃ�


//���I����
	$select_fade;
	SetChoice02(" I don't have the energy to hold out"," Continue to resist");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5401.nss";$�E�C�g���I����++;}
	else if($SetChoiceSelect==1){	$GameName = "dm5402.nss";}

}
