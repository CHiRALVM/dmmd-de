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


scene dm1160sl.nss_MAIN
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


scene dm1160sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	//�����݁FBGM�F�؂Ȃ��n
	SoundPlay("@dm012",0,450,true);

	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

//�}�N���E�v���Z�X�n���F�X�L�b�v�Ή��p==========================
	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("@dm1160_�v���Z�X���]*","�GSuf");
	SetBlur("�GSuf", true, 3, 50, 500, false);
	Fade("@dm1160_�v���Z�X���]�G�w�i", 0, 1000, null, true);

	GoLoopFade("@dm1160_�v���Z�X���]��",100);
	GoLoopFade2("@dm1160_�v���Z�X���]���[�U�[",137);
	Request("@�v���Z�X���C�g�P", Start);

	Delete("��w�i");
//�}�N���E�v���Z�X�n���F�X�L�b�v�Ή��p==========================


//���I�����F�g��
//�����g���ɗ���i�g���|���g�{�P�j
//�������͂łȂ�Ƃ�����


//���I����
	SetChoice02(" Rely on Koujaku"," Take care of yourself");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm1161.nss";$�g���I����5=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm1162.nss";$�g���I����5=0;}

}
