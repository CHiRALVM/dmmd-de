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


scene dm0420sl.nss_MAIN
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


scene dm0420sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06���C���������u");
	FadeBG(0,true);

	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev042�m�C�Y�u�r�g��.jpg");

	FadeDelete("��w�i", 0, null, true);



//���I����[�g��or�m�C�Y]�F
//�����g���ɐ���������i�g���|�C���g�{�P�j
//�����m�C�Y�ɐ���������i�m�C�Y�|�C���g�{�P�j


//���I����
	SetChoice02(" Call out to Koujaku"," Call out to Noiz");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0421.nss";$�g���I����3=1;$�m�C�Y�I����3=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0422.nss";$�g���I����3=0;$�m�C�Y�I����3=1;}



//	ClearFadeAll(1000, true);

}
