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


scene dm2300sl.nss_MAIN
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


scene dm2300sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg304081_5_���]�^���[���u����");
	FadeBG(0,true);
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",0,true);

//���F�a�f�l�����p������
//	SoundPlay("@dm018",0,450,true);

	FadeDelete("��w�i", 0, null, true);

//���I�����F�m�C�Y
//�����{���Ă�悤�Ɍ�����
//�����s��������悤�Ɍ�����i�m�C�Y�|���g�{�P�j


//���I����
	SetChoice02(" He looks angry"," He looks unhappy");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2301.nss";$�m�C�Y�I����7=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm2302.nss";$�m�C�Y�I����7=1;}



//	ClearFadeAll(1000, true);

}
