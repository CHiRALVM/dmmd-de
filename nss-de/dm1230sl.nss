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


scene dm1230sl.nss_MAIN
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


scene dm1230sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu�g��_�ʏ�_angry3");
	FadeSt("C",200,true);

	FadeDelete("��w�i", 0, null, true);

//���I�����F�g��
//������������������i�g���|���g�{�P�j
//�����ق��Č����


//���I����
	SetChoice02(" Say something"," Just stare at him");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm1232.nss";$�g���I����6=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm1231.nss";$�g���I����6=0;}

}
