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


scene dm1290sl.nss_MAIN
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


scene dm1290sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm008",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg303031_5_��y�{�ݗ���̕���");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);


//���I�����F�g��
//�����g���̘r�������͂ށi�g���|���g�{�P�j
//�������̕��@���l����


//���I����
	SetChoice02(" Hold onto Koujaku's arm tightly"," Think of some other way");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm1291.nss";$�g���I����7=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm1292.nss";$�g���I����7=0;}

}
