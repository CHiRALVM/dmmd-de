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


scene dm4480sl.nss_MAIN
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


scene dm4480sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	SoundPlay("@dm020b",0,450,true);
	PrintBG("��w�i", 30000);

	OnBG(10,"bg205011_0_�\�I�N���A");
	FadeBG(0,true);


	S4SetChoiceBase();


	FadeDelete("��w�i", 500, null, true);



//������I����

	S4WaitChoice();

//�E�����x��ł�����
//�E������߂���������

//���ǂ�����I�΂Ȃ��̂������i$SetChoiceSelect=1�j

//�����t�A�����֖߂�


//���I����
//	$select_fade=true;
//	SetChoice02("Incorrect","Correct");
//	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm4490_vs.nss";$�N���A�I����8=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm4490_vs.nss";$�N���A�I����8=1;}

//������I�����i�\�I�j���猻���ցi���q

	//PrintBG("�G�w�i", 20000);
	//CreateColorSP("�G�F��", 10000, FFFFFF);
	CreateColorEXadd("�G�F��", 10000, FFFFFF);
	Fade("�G�F��",5000,1000,null,3000);
	//DrawDelete("�G�w�i", 1000, 100, null, "effect_01_00_0", true);

	SetVolumeEX("@dm*", 3000, 0, null);Wait(2000);

//	PrintBG("�G�w�i", 20000);
	Delete("S4*");

//(BAD ED)
//(GOOD ED)

}
