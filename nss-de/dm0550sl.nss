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


scene dm0550sl.nss_MAIN
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


scene dm0550sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg106021_5_�p�r������");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 200, null, true);



//���I�����F�~���N
//���������Ȃ�ɂ͂Ȃ�Ȃ�
//�������͉䖝���邵���Ȃ��i�~���N�|�C���g�{�P�j


//���I����
	SetChoice02(" Don't listen to him&."," I have to bear with this&.");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0551.nss";$�~���N�I����1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0552.nss";$�~���N�I����1=1;}



//	ClearFadeAll(1000, true);

}
