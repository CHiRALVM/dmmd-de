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


scene dm0360sl.nss_MAIN
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


scene dm0360sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i100", 100, Center, -800, "cg/bg/l/bg104031_5_���t��������r�炵_l.jpg");

	FadeDelete("��w�i", 0, null, true);



//���I�����i�N���A�j�F
//�E�K�i����鉹�����������i�g���|�C���g�{�P�j
//�E�������牽�����������i�N���A�|�C���g�{�P�j


//���I����
	$select_fade=true;
	SetChoice02(" I hear someone on the stairs"," I hear something on the roof");
	WaitChoice02();

	if($SetChoiceSelect==0){		$GameName = "dm0361_vs.nss";$�g���I����2=1;$�N���A�I����2=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0362_vs.nss";$�g���I����2=0;$�N���A�I����2=1;}



//	ClearFadeAll(1000, true);

}
