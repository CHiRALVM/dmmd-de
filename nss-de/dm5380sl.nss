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


scene dm5380sl.nss_MAIN
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


scene dm5380sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304041_5_���]�^���[�����G���A������");
	FadeBG(0,true);

	St("ML",720, @0,@0,"st�E�C���X_�ʏ�o�b�a_normal");
	St("MR",720, @0,@0,"st�g���b�v_�ʏ�o�b�a_smile");
	FadeAllSt(0,true);

	FadeDelete("��w�i", 0, null, true);

//�E�C�g���I�����|�C���g������
$�E�C�g���I����=0;

//���I�����F�E�C&�g��BAD
//������������
//�������f����i�E�C&�g���|�C���g�{�P�j

//���I����
	$select_fade=true;
	SetChoice02(" Get angry"," Get flustered");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5381.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm5382.nss";$�E�C�g���I����++;}

}
