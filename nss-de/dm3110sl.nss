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


scene dm3110sl.nss_MAIN
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


scene dm3110sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�~���N
//���������Ɏx�x������i�~���N�|���g�{�P�j
//�����s����𕷂�


//���I����
	SetChoice02(" Get ready right away"," Ask where we're going");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm3111.nss";$�~���N�I����5=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm3112.nss";$�~���N�I����5=0;}

}
