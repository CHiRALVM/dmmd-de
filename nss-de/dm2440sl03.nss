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


scene dm2440sl03.nss_MAIN
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


scene dm2440sl03.nss
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




//�E�I�����F
//Do you want to rest?
//�F�͂��E�͂�

//�o�b�N���O�p�e�L�X�g
$TXT_BACKLOG="Do you want to rest?";
//�I�����p�e�L�X�g
DeleteArray($ANS_ARY);
Array($ANS_ARY);
$ANS_ARY[0][0]="yes";
$ANS_ARY[0][1]="yes";
//���^�C�s���O�p�e�L�X�g
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="d";
$TXT_ARY[0][1]="D";
$TXT_ARY[1][0]="o";
$TXT_ARY[2][0]=" ";
$TXT_ARY[3][0]="y";
$TXT_ARY[4][0]="o";
$TXT_ARY[5][0]="u";
$TXT_ARY[6][0]=" ";
$TXT_ARY[7][0]="w";
$TXT_ARY[8][0]="a";
$TXT_ARY[9][0]="n";
$TXT_ARY[10][0]="t";
$TXT_ARY[11][0]=" ";
$TXT_ARY[12][0]="t";
$TXT_ARY[13][0]="o";
$TXT_ARY[14][0]=" ";
$TXT_ARY[15][0]="r";
$TXT_ARY[16][0]="e";
$TXT_ARY[17][0]="s";
$TXT_ARY[18][0]="t";
$TXT_ARY[19][0]="?";


//��蕶����
$TXT_ARYCNT=20;



//���I����
	S2SetQ();

	S2SetChoiceBase();
	S2WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2440sl04.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm2440sl04.nss";}



//	ClearFadeAll(1000, true);

}
