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


scene dm2440sl13.nss_MAIN
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


scene dm2440sl13.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

//	OnBG(10,"bg101011_1_���Z����ʂ�\");
//	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);




//Never?
//�F�͂��E������

//�o�b�N���O�p�e�L�X�g
$TXT_BACKLOG="Never?";
//�I�����p�e�L�X�g
DeleteArray($ANS_ARY);
Array($ANS_ARY);
$ANS_ARY[0][0]="yes";
$ANS_ARY[0][1]="no";
//���^�C�s���O�p�e�L�X�g
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="n";
$TXT_ARY[0][1]="N";
$TXT_ARY[1][0]="e";
$TXT_ARY[2][0]="v";
$TXT_ARY[3][0]="e";
$TXT_ARY[4][0]="r";
$TXT_ARY[5][0]="?";
//��蕶����
$TXT_ARYCNT=6;


//���I����
	S2SetQ();

	S2SetChoiceBase();
	S2WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2440sl14.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm2440sl14.nss";}



//	ClearFadeAll(1000, true);

}
