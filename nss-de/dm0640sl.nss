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


scene dm0640sl.nss_MAIN
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


scene dm0640sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg402021_1_��������֎~���H��O��");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -515, -485, "cg/bg/l/bg402021_1_��������֎~���H��O��_l.jpg");

	FadeDelete("��w�i", 0, null, true);



//���I�����F�m�C�Y
//�����m�C�Y�ׂ̗ɕ��ԁi�m�C�Y�|�C���g�{�P�j
//�����m�C�Y�̗l�q���M��


//���I����
//	$select_fade=true;
	SetChoice02(" Go up to Noiz"," Peek at what Noiz is doing");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0641.nss";$�m�C�Y�I����4=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0642.nss";$�m�C�Y�I����4=0;}

}
