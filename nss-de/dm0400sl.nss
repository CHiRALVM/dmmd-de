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




scene dm0400sl.nss_MAIN
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


scene dm0400sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�m�C�Y
//���������Ƙb������i�m�C�Y�|�C���g�{�P�j
//������Ό���


//���I����
	SetChoice02(" Talk it out"," No way");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0401.nss";$�m�C�Y�I����2=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0402.nss";$�m�C�Y�I����2=0;}



//	ClearFadeAll(1000, true);

}
