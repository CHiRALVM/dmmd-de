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


scene dm0680sl.nss_MAIN
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


scene dm0680sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg402041_1_��������֎~���H��ʘH");
	FadeBG(0,true);

//���F�a�f�l�����p������
	SoundPlay("@dm009",0,450,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�~���N
//�����˘f��
//�����~���N�ɏ]���i�~���N�|�C���g�{�P�j


//���I����
	SetChoice02(" Hesitate to listen"," Listen to Mink");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0681_vs.nss";$�~���N�I����4=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0682_vs.nss";$�~���N�I����4=1;}

}
