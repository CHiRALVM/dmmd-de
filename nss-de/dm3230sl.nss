//<continuation number="0">
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


scene dm3230sl.nss_MAIN
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


scene dm3230sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306021_5_�q�ɓ����������.jpg");
	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSPadd("�G��/�G����", 200, "WHITE");
	DrawTransition("�G��/�G����", 0, 0, 200, 1000, null, "cg/data/effect_01_00_0.png", true);

	Request("�G�w�i*", Smoothing);
	Zoom("�G�w�i*", 0, 2000, 2000, null, true);
	SetShade("�G�w�i*", MEDIUM);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",0,true);


	FadeDelete("��w�i", 100, null, true);




//���I�����F�~���N
//�������t�ɋl�܂�
//�����e�͎g�������Ȃ��i�~���N�|���g�{�P�j


//���I����
	SetChoice02(" Say nothing"," I don't want to use a gun");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm3231.nss";$�~���N�I����6=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm3232.nss";$�~���N�I����6=1;}

}
