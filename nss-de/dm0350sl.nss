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


scene dm0350sl.nss_MAIN
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


scene dm0350sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t��������r�炵");
	FadeBG(0,true);

	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_serious");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);



//���I�����F�m�C�Y
//�������J��
//�����K�L���I�i�m�C�Y�|�C���g�{�P�j


//���I����
	SetChoice02(" Fight back"," You brat!");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0352.nss";$�m�C�Y�I����1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0351.nss";$�m�C�Y�I����1=1;}



//	ClearFadeAll(1000, true);

}
