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


scene dm0660sl.nss_MAIN
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


scene dm0660sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg402031_1_��������֎~���H�ꕔ��01");
	FadeBG(0,true);

//���F�a�f�l�����p������
	SoundPlay("@dm009",0,450,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�g��
//�����g���̓G����������i�g���|�C���g�{�P�j
//�����g���ɋߕt��


//���I����
	SetChoice02(" Fight Koujaku's enemies"," Approach Koujaku");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0661_vs.nss";$�g���I����4=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0662_vs.nss";$�g���I����4=0;}



//	ClearFadeAll(1000, true);

}
