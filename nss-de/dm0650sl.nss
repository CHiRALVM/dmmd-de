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


scene dm0650sl.nss_MAIN
{
//�������ݒ�Ȃ�
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;
	#bg402031_1_��������֎~���H�ꕔ��01=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	//


}


scene dm0650sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintGO("��w�i", 30000);

//���F�a�f�l�����p������
	SoundPlay("@dm009",0,450,true);

	OnBG(10,"bg402031_1_��������֎~���H�ꕔ��01");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�N���A
//�����N���A��ڂŒT��
//�����N���A�̖��O���Ăԁi�N���A�|�C���g�{�P�j


//���I����
	SetChoice02(" Search for Clear"," Call Clear's name");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0651.nss";$�N���A�I����4=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0652.nss";$�N���A�I����4=1;}



//	ClearFadeAll(1000, true);

}
