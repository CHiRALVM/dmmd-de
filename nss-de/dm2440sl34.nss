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


scene dm2440sl34.nss_MAIN
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


scene dm2440sl34.nss
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



//�u���񂪂���v�̏ꍇ�F

//Who are you?

//��That's...�i���ꂵ���I�������o�Ȃ��j���������E�֖߂�

//�o�b�N���O�p�e�L�X�g
$TXT_BACKLOG="Who are you?";
//�I�����p�e�L�X�g
DeleteArray($ANS_ARY);
Array($ANS_ARY);
$ANS_ARY[0][0]="That's...";
//���^�C�s���O�p�e�L�X�g
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="w";
$TXT_ARY[0][1]="W";
$TXT_ARY[1][0]="h";
$TXT_ARY[2][0]="o";
$TXT_ARY[3][0]=" ";
$TXT_ARY[4][0]="a";
$TXT_ARY[5][0]="r";
$TXT_ARY[6][0]="e";
$TXT_ARY[7][0]=" ";
$TXT_ARY[8][0]="y";
$TXT_ARY[9][0]="o";
$TXT_ARY[10][0]="u";
$TXT_ARY[11][0]="?";
//��蕶����
$TXT_ARYCNT=12;



//���I����
	S2SetQ();

	S2SetChoiceBase();
	S2WaitChoice01();
	
	$GameName = "dm2470scr.nss";$�m�C�Y�I����8=1;



WaitKey(2000);
WaitKey(2000);
//	ClearFadeAll(3000, true);

}
