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


scene dm3600sl.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";

	MinkSparksDropCheck();


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


scene dm3600sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 4900);

//�������Ή�
	Request("@EFWIN/�v���Z�X", Start);
	MusicStart("@EFWIN/SE11",1000,500,0,800,null,true);

	OnBG(10,"bg204011_3_�\�I�~���N�̋���������");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);



//�����o�F�΂̕�

//�����I�����F
//�E������
//�E�����Ȃ�


//���I����
	SetChoice02(" Help him"," Don't help him");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm3601scr.nss";$pMINKbad++;}
	else if($SetChoiceSelect==1){	$GameName = "dm3602scr.nss";}

}
