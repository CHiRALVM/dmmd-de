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


scene dm0590sl.nss_MAIN
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


scene dm0590sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm003",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102031_1_���}�O�ʂ�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/bg102031_1_���}�O�ʂ�.jpg");

	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�N���A
//��������}���i�~���N�|�C���g�{�P�j
//�����{���ɕ��������H�i�N���A�|�C���g�{�P�j


//���I����
	SetChoice02(" Hurry inside"," Did you really hear me?");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0591.nss";$�~���N�I����3=1;$�N���A�I����3=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0592.nss";$�~���N�I����3=0;$�N���A�I����3=1;}


//	ClearFadeAll(1000, true);

}
