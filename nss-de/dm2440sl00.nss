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


scene dm2440sl00.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		//call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

//���m�C�Y����I������//
$�m�C�Y�I����8=0;
//���m�C�Y�̎��⃋�[�v�X�^�[�g
//���[�v�J�E���g������
$�m�C�Y���[�v=0;
//�l�`�w���[�v�o��
$�m�C�Y���[�v��=3-$�m�C�Y�I����5-$�m�C�Y�I����6-$�m�C�Y�I����7;


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2440sl01.nss";

	TextBoxDelete(0);

}



//����i���Ƃł����Ɨǂ���肠�����獷���ւ��܂��j


//�����t�@�C��["dm2440sl01.nss"]

