//<continuation number="0">
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


scene dm5510sl.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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


scene dm5510sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

SoundPlay("@dm015",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureEX("�G�w�i", 20, -500, Middle, "cg/bg/bg206011_0_�\�I�@.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);

	OnBG(10,"bg206011_0_�\�I�@");
	FadeBG(0,true);

	CreateTextureSP("�@�o�O01", 30, 167, -52, "cg/bu/bu�@_�ʏ�o�O_normal.png");
	Zoom("�@�o�O01", 0, 1400, 1400, null, true);

	CreatePlainSP("�G��", 40);
	SetShade("�G��", HEAVY);


	FadeDelete("��w�i", 500, null, true);

	//���Ɛ���p�̔z����`�i��ԉ��ɂ���܂��j
	SetS5Qary();
	S5Set();

if(!#SYSTEM_skip_express){
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
This is&.&.&.

&.&.&.Was I rejected?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
}

	SP5SetQ(9,1);//10��ڕ\��
	S5SetChoiceBase();//�I��҂�


//������I����
//�������̏ꍇ�͈ȉ��e�L�X�g�֑���//$�@�I����8=1
//�����s�̏ꍇ�͘@�o�b�h�G���h��//$�@�I����8=0

	PrintGO("��w�i", 30000);Wait(8);
	Delete("@SP5*");

	OnBG(10,"bg206011_0_�\�I�@");
	FadeBG(0,true);

	if($SetChoiceSelect==0){//�\�I�������̃G�t�F�N�g
//		FadeDelete("��w�i", 1000, null, false);
//		CreateColorEXadd("�G�F��", 5000, FFFFFF);
//		Fade("�G�F��",1000,2000,null,true);
//	Fade("�G�F��", 0, 1000, null, true);
	
		Wait(50);
	
		CreateGlass(40000);
		CreateColorSP("�G�F��", 5000, "FFFFFF");

		SetVolumeEX("@dm*", 1000, 0, null);

		FadeDelete("��w�i", 300, Axl3, false);

		GoGlassCrash();
	
		Wait(500);

	}else if($SetChoiceSelect==1){//�\�I���s�̃G�t�F�N�g
		SetVolumeEX("@dm*", 3000, 0, null);
		WaitPlay("@S5*");//se�҂�WaitKey(1000);
//		���X�N���v�g�ŉ��o
//		DrawDelete("��w�i", 2000, 1000, null, "noize_01_00_0", true);
	}



//���I����
//	SetChoice02("����","���s");
//	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5530scr.nss";$�@�I����8=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm5521.nss";$�@�I����8=0;}

//(GOOD ED)
//(BAD ED)

//	ClearFadeAll(1000, true);

}

function SetS5Qary()
{
	//���Ɛ���p�̔z��
	DeleteArray($TXT_ARY);
	Array($TXT_ARY);
	//0^5:�R�A�I�����A6-19:��W�P�S��
	$TXT_ARY[0][0]=1;//1:YES,2:NO
	$TXT_ARY[0][1]="Ren is like";//�P�P�����ő�
	$TXT_ARY[0][2]="family";
	$TXT_ARY[1][0]=1;
	$TXT_ARY[1][1]="Ren is";
	$TXT_ARY[1][2]="polite";
	$TXT_ARY[2][0]=1;
	$TXT_ARY[2][1]="Ren does";
	$TXT_ARY[2][2]="not bark";
	
	$TXT_ARY[3][0]=1;
	$TXT_ARY[3][1]="I need Aoba";
	$TXT_ARY[3][2]="";
	$TXT_ARY[4][0]=1;
	$TXT_ARY[4][1]="I worry";
	$TXT_ARY[4][2]="about Aoba";
	$TXT_ARY[5][0]=1;
	$TXT_ARY[5][1]="I love Aoba";
	$TXT_ARY[5][2]="";


	$TXT_ARY[6][0]=1;
	$TXT_ARY[6][1]="Ren is";
	$TXT_ARY[6][2]="fluffy";
	$TXT_ARY[7][0]=1;
	$TXT_ARY[7][1]="His tongue";
	$TXT_ARY[7][2]="is pink";
	
	$TXT_ARY[8][0]=1;
	$TXT_ARY[8][1]="His fur is";
	$TXT_ARY[8][2]="dark blue";
	$TXT_ARY[9][0]=1;
	$TXT_ARY[9][1]="Clara"; 
	$TXT_ARY[9][2]="annoys Ren";
	$TXT_ARY[10][0]=2;
	$TXT_ARY[10][1]="His collar";
	$TXT_ARY[10][2]="has a star";
	$TXT_ARY[11][0]=1;
	$TXT_ARY[11][1]="Ren's paws";
	$TXT_ARY[11][2]="are pink";
	$TXT_ARY[12][0]=2;
	$TXT_ARY[12][1]="Ren's eyes";
	$TXT_ARY[12][2]="are brown";
	$TXT_ARY[13][0]=2;
	$TXT_ARY[13][1]="He met Aoba";
	$TXT_ARY[13][2]="5 years ago";
	
	$TXT_ARY[14][0]=2;
	$TXT_ARY[14][1]="Ren likes";
	$TXT_ARY[14][2]="Clara";
	$TXT_ARY[15][0]=1;
	$TXT_ARY[15][1]="Ren is an";
	$TXT_ARY[15][2]="old model";
	$TXT_ARY[16][0]=2;
	$TXT_ARY[16][1]="Ren isn't";
	$TXT_ARY[16][2]="supportive";
	$TXT_ARY[17][0]=2;
	$TXT_ARY[17][1]="Ren bites";
	$TXT_ARY[17][2]="me everyday";
	$TXT_ARY[18][0]=2;
	$TXT_ARY[18][1]="Ren is a";
	$TXT_ARY[18][2]="big dog";
	$TXT_ARY[19][0]=2;
	$TXT_ARY[19][1]="Ren eats";
	$TXT_ARY[19][2]="with me";

	//20^34:���s���o�p
	$TXT_ARY[20][0]=1;//�Œ�
	$TXT_ARY[20][1]="Aoba feels";//�P�P�����ő�
	$TXT_ARY[20][2]="about me-";
	$TXT_ARY[21][0]=1;
	$TXT_ARY[21][1]="Aoba";
	$TXT_ARY[21][2]="I'm sad";
	$TXT_ARY[22][0]=1;
	$TXT_ARY[22][1]="Aoba does";
	$TXT_ARY[22][2]="not care";
	$TXT_ARY[23][0]=1;
	$TXT_ARY[23][1]="I&, about";
	$TXT_ARY[23][2]="Aoba-";
	$TXT_ARY[24][0]=1;
	$TXT_ARY[24][1]="Aoba&, I-";
	$TXT_ARY[24][2]="";
	$TXT_ARY[25][0]=1;
	$TXT_ARY[25][1]="Does Aoba";
	$TXT_ARY[25][2]="hate me?";
	$TXT_ARY[26][0]=1;
	$TXT_ARY[26][1]="Aoba hates";
	$TXT_ARY[26][2]="me";
	$TXT_ARY[27][0]=1;
	$TXT_ARY[27][1]="I can't be";
	$TXT_ARY[27][2]="with Aoba";
	$TXT_ARY[28][0]=1;
	$TXT_ARY[28][1]="I wanted to";
	$TXT_ARY[28][2]="protect him";
	$TXT_ARY[29][0]=1;
	$TXT_ARY[29][1]="I've always";
	$TXT_ARY[29][2]="watched him";
	$TXT_ARY[30][0]=1;
	$TXT_ARY[30][1]="If I had to";
	$TXT_ARY[30][2]="go away-";
	$TXT_ARY[31][0]=1;
	$TXT_ARY[31][1]="I want to";
	$TXT_ARY[31][2]="be with him";
	$TXT_ARY[32][0]=1;
	$TXT_ARY[32][1]="Aoba";
	$TXT_ARY[32][2]="Aoba";
	$TXT_ARY[33][0]=1;
	$TXT_ARY[33][1]="I am always";
	$TXT_ARY[33][2]="with Aoba";
	$TXT_ARY[34][0]=1;
	$TXT_ARY[34][1]="I was born";
	$TXT_ARY[34][2]="for Aoba";

}

/*
��W�P�S��̂����A�X��������_���Ŏg�p
�R�A�R��̂����A����L���̂P��������_����
�c��̃R�A�Q��{���R�A�R�₪���C���̎���
�ŏ��̂P�O��́A���C���T��ƃ����_���S��̂P�O��A���̏�ɂT��̂��Ă���
*/
