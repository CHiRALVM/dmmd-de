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


scene dm0160sl.nss_MAIN
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


scene dm0160sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101031_1_���Z����ʂ藠�H�n�g���J");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�g��
//���U�蕥��
//���S�O����i�g���|�C���g�{�P�j


//���I����
	SetChoice02("Abschuetteln"," Zoegern");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0161.nss";$�g���I����1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0162.nss";$�g���I����1=1;}



//	ClearFadeAll(1000, true);

}
