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


scene dm0300sl.nss_MAIN
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


scene dm0300sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm005",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102031_1_���}�O�ʂ�");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�N���A
//�����Ȃ��P���H�i�N���A�|�C���g�{�P�j
//������i�t�H


//���I����
	SetChoice02(" Why the umbrella?"," Are you a magician?");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0302.nss";$�N���A�I����1=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0301.nss";$�N���A�I����1=0;}



//	ClearFadeAll(1000, true);

}
