//<continuation number="460">
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


scene dm2460ed.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//���G���h���[��
	PreSetRoll(3);
	TheEND(3);

#BDED2f=1;//�m�C�Y�t�@�~�R���o�b�h�G���h�t���O�擾

}


scene dm2460ed.nss
{

//�k���\���l�����p
	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	//$SYSTEM_menu_lock = true;
	$SYSTEM_skip_lock=true;
	$SYSTEM_text_erase_lock=true;
	$SYSTEM_backlog_lock=true;
	$SYSTEM_backlog_lock_a=true;
	$SYSTEM_super_lock=true;
	$LOCAL_extra_lock=true;
	$SYSTEM_load_lock=true;
	$SYSTEM_save_lock=true;
	$SYSTEM_backselect_lock=true;
	$SYSTEM_tips_lock=true;
	$SYSTEM_config_lock=true;


	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\




	PrintBG("��w�i", 30000);

	CreateWindowEX("�G��", 256, 64, 512, 448, false);
	CreateTextureEX("�G���}��", 100, 256, 64, "cg/sys/ed/dot/mp_���}.png");
	Fade("�G���}��", 0, 1000, null, true);

	Dot_Cara_Set(1000);
	Dot_Cara_Fade("���t","��",14,6);
	Fami_Text_Load();
	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");

	SoundPlay("@dm8bit001",0,450,true);
	FadeDelete("��w�i", 1000, null, true);

	Wait(300);


	Fade("@famitextbox", 100, 1000, null, true);




//�y���t�z
//�uYes, thank you for calling
//�@���肪�Ƃ��������܂��v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","T","H","A","N","K","S");
	Fami_Text_Fade02F(2,"�Q","F","O","R","�Q",0);
	Fami_Text_Fade02S("C","A","L","L","I","N","G","�v",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//�y���t�z
//�uThis is Junk
//�@Shop Heibon�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(3,"�u","T","H","I","S"," ","I","S");
	Fami_Text_Fade03S(0,0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade04F(3,"J","U","N","K","S","H","O","P");
	Fami_Text_Fade04S(" ","H","E","I","B","O","N","�v",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(2);

	Fami_Text_End();
	WaitKey();


//�y���t�z
//�uYes�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(3,0,5,"�u","Y","E","S","�v",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(3);
	Fami_Text_Scroll(4);

	Fami_Text_End();
	WaitKey();


//�y���t�z
//�uI'm onto it�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"�u","I","M"," ","O","N","T","O");
	Fami_Text_Fade02S(" ","I","T","�v",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);

	Fami_Text_End();
	WaitKey();


//�y���t�z
//�uWould you like to order?�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(2,"�u","W","O","U","L","D","�Q");
	Fami_Text_Fade03S("Y","O","U","�Q","L","I","K","E",0);
	//Fami_Text_Fade03S("�Q",0,0,0,0,0,0,0,0);
	Fami_Text_Scroll(2);
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,0,8,"T","O",0);
	Fami_Text_Fade02S("�Q","O","R","D","E","R","�H","�v",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(4);

	Fami_Text_End();
	WaitKey();

//�y���t�z
//�u�͂��@�킩��܂����@����ł�Got it
//�@�����Ⴍ���܂́@������Ł[����if you
//�@�������肭�������vcould send us your data
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade04F(2,"�u","G","O","T","�Q","I","T","�D");
	Fami_Text_Fade04S("I","F","�Q","Y","O","U",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(3);
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(2,0,5,"�Q","C","O","U","L","D",0,0);
	Fami_Text_Fade01S("�Q","S","E","N","D","�Q","U","S",0);
	Fami_Text_Fade02F(3,"�Q","Y","O","U","R","�Q","D","A");
	Fami_Text_Fade02S("T","A","�v",0,0,0,0,0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	Delete("@fami*");
	Delete("@window_fami/f*");

//���s�b�A�s�s�b�݂����Ȍl�f�[�^��M����
	Wait(500);
	CreateSE("SE01","se8bit_�ʏ�_�R�C��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(100);
	CreateSE("SE02","se8bit_�ʏ�_�R�C��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(1000);

	CreateSE("SE01","se8bit_�ʏ�_�R�C��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//�y���t�z
//�u�c�cYes
//�@thanks dawg�I�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","�c","Y","E","S",0,0,0);
	Fami_Text_Fade02F(2,"�Q","T","H","A","N","K",0,0);
	Fami_Text_Fade02S("�Q","Y","O","U","�I","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();


//�y���t�z
//�u����ł́@���񂲂Ƃ�please use us again soon
//�@�Ƃ��Ă���@���Ђ����Ɂ`�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(3,"�u","P","L","E","A","S","E",0);
	Fami_Text_Fade03S("�Q","U","S","E","�Q","U","S",0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade04F(3,"�Q","A","G","A","I","N",0,0);
	Fami_Text_Fade04S("�Q","S","O","O","N","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(2);

	Fami_Text_End();
	WaitKey();




	Delete("@fami*");
	Delete("@window_fami/f*");

	Wait(500);
	CreateSE("SE01","se8bit_�ʏ�_�R�C��01");
	MusicStart("SE01",0,700,0,1000,null,false);
//���r�d�F�҂��Ǝ�b���؂鉹
	Wait(1000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);



//�y���t�z
//�u�c�c�ӂ��v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","�c","�c","P","H","E","W","�v");
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();


//�y���t�z
//�u���낻��@�Ă񂿂傤��will the manager be here soon. MISSING E
//�@�������Ă��邱�납�ȁH�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"�u","T","H","E","�Q","M","A","N");
	Fami_Text_Fade02S("A","G","E","R","�c","�c");
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(2,"�Q","W","I","L","L","�Q","H","E");
	Fami_Text_Fade03S("�Q","B","E","�Q","H","E","R","E");
	Fami_Text_Fade04F(3,"�Q","S","O","O","N","�H","�v",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//����������ƃh�A���J���ăm�C�Y�������Ă���

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Delete("@fami*");
	Delete("@window_fami/f*");


	Wait(1000);
	CreateSE("SE01","se8bit_�ʏ�_�J��_b");
	MusicStart("SE01",0,700,0,1000,null,false);
	Dot_Cara_Fade("�m�C�Y","��",15,12);
	Wait(1500);
	Dot_Cara_Move("�m�C�Y","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",3,true);
	Wait(500);


	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�y�m�C�Y�z
//�u�悧�vhey dumbass
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","Y","O","�v",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//�y���t�z
//�u���܂��c�c�@�m�C�Y�I�vnoiz!!!
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","Y","O","U","�c","�c","�c","N");
	Fami_Text_Fade01S("O","I","Z","�I","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();


//�y���t�z
//�u�݂��܂ł��ā@�Ȃ�̂悤����vwhat do you want
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"�u","W","H","A","D","Y","A","�Q");
	Fami_Text_Fade02S("W","A","N","T","�H","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//�y�m�C�Y�z
//�u����́@�`�[���Ɂ@�͂����vjoin my team
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","J","O","I","N","�Q","M","Y");
	Fami_Text_Fade01S("�Q","T","E","A","M","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//�y���t�z
//�u���C������H�@���₾��v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","R","H","Y","M","E","�H","�Q");
	Fami_Text_Fade01S("N","O","�Q","W","A","Y","�v",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//�y�m�C�Y�z
//�u�c�c�����vCH!
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","�c","C","H","K","�v",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//���m�C�Y�A�J�E���^�[�����z����B
//���t�̏�ɔn���ɂȂ�B
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Delete("@fami*");
	Delete("@window_fami/f*");

	CreateSE("SE01","se8bit_�ʏ�_����");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@�t�@�~�L����01�m�C�Y*", 300, @0, 208, Dxl1, false);
	Move("@�t�@�~�L����02�m�C�Y*", 300, @0, 208, Dxl1, false);
	Wait(400);
	CreateSE("SE01","se8bit_�ʏ�_�Ԃ���");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@�t�@�~�L����01���t*", 150, @0, 176, Dxl1, false);
	Move("@�t�@�~�L����02���t*", 150, @0, 176, Dxl1, false);
	Wait(300);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\



//�y���t�z
//�u�ȁc�c���I�@�ǂ���I�vWah move!
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","W","H","A","�c","�c","M","O");
	Fami_Text_Fade01S("V","E","�I","�v",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//�y�m�C�Y�z
//�u�`�[���@�Ɂ@�͂���vjoin my team
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","J","O","I","N","�Q","M","Y");
	Fami_Text_Fade01S("�Q","T","E","A","M","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//�y���t�z
//�u"���₾���āc�c�@�I�H�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","I","�Q","S","A","I","D","�c");
	Fami_Text_Fade01S("�c","N","O","�I","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	Delete("@fami*");
	Delete("@window_fami/f*");

	Move("@�t�@�~�L����01�m�C�Y*", 500, @0, @-32, Dxl1, false);
	Move("@�t�@�~�L����02�m�C�Y*", 500, @0, @-32, Dxl1, false);
	Wait(500);
	CreateSE("SE01","se8bit_�ʏ�_�L�X");
	MusicStart("SE01",0,700,0,1500,null,false);
	Wait(1000);

	CreatePlainSP("�G��", 5000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�y�m�C�Y�z
//�u�c�c�c�c�v
	CreateSE("SE01","se8bit_�ʏ�_��b_200L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,200,5,"�u","�c","�c","�c","�c","�v",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");

//�y���t�z
//�u��@�ށc�c�I�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","M","N","N","�c","�c","�I","�v");
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");


	Dot_Cara_Fade("�m�C�Y","��",0,0);
	Dot_Cara_Fade("����","��",15,12);
	CreateSE("SE01","se8bit_�퓬_����");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G��", 200, 15, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("�G��", 200, null, false);

	Move("@�t�@�~�L����01�m�C�Y*", 200, @32, @0, Dxl1, false);
	Move("@�t�@�~�L����02�m�C�Y*", 200, @32, @0, Dxl1, false);
	Wait(1000);
	Dot_Cara_Move("����","��",1,true);
	Dot_Cara_Move("����","��",1,true);
	Dot_Cara_Move("����","��",3,true);
	Wait(500);


	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);


//�����L�X����Ă܂��B���t�����΂�

//���΂��[��ƃh�A���J���Ĉ����o��


//�y�����z
//�u�݂������Ifound you dipshits
//�@���̃e�����X�g�ǂ��[�I�I�vhuehuehuehuehuheeee
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��bb_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","H","A","�I","�Q","F","O","U");
	Fami_Text_Fade01S("N","D",0,0,0,0,0,0);
	Fami_Text_Fade02F(2,"�Q","Y","O","U","�Q","T","E","R");
	Fami_Text_Fade02S("R","O","R","I","S","T","S","�I","�v");
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");


//�y���t�z
//�u�I�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","�I","�v",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	Delete("@window_fami/f*");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//�y�m�C�Y�z
//�u�������̂������ȁva noisy one's here
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","A","�Q","N","O","I","S","Y");
	Fami_Text_Fade01S("�Q","O","N","E","�Q","I","S","�Q",0);
	Fami_Text_Fade02F(2,"�Q","H","E","R","E","�c","�v",0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");


//�y�����z
//�u�����ق��Ă��[�I�I�vend of the quote dont show gay ass thng
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��bb_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","Y","O","U","R","E","�Q","U");
	Fami_Text_Fade01S("N","D","E","R",0,0,0,0,0);
	Fami_Text_Fade02F(2,"�Q","A","R","R","E","S","T","�I","�v");
	Fami_Text_Fade02S("�v",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@fami*");
	Delete("@window_fami/f*");

	CreateSE("SE01","se8bit_�ʏ�_����");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@�t�@�~�L����01����*", 600, @0, @-64, Dxl1, false);
	Move("@�t�@�~�L����02����*", 600, @0, @-64, Dxl1, false);
	Wait(650);


	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se8bit_�퓬_�G���J�E���g");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateWindowEX("�G��", 256, 64, 512, 448, false);
	CreateColorSP("�G��/�G�F��", 50000, "WHITE");
	Fade("�G��/�G�F��", 50, 0, null, true);
	Wait(100);
	Fade("�G��/�G�F��", 50, 1000, null, true);
	Fade("�G��/�G�F��", 50, 0, null, true);
	Wait(100);
	Fade("�G��/�G�F��", 50, 1000, null, true);
	Fade("�G��/�G�F��", 50, 0, null, true);
	Wait(100);

	CreateTextureSP("�G�w�i", 5000, Center, Middle, "cg/sys/ed/dot/mp_�퓬.png");
	DrawTransition("�G�w�i", 1000, 0, 1000, 10, Dxl1, "cg/data/mosaic_01_00_0.png", true);

	Wait(1000);

	CreateTextureEX("�G����01", 7000, Center, Middle, "cg/sys/ed/dot/dm_8����_1����00.png");
	Request("�G����*", Smoothing);
	Move("�G����*", 0, @0, @-30, null, true);

	Fade("�G����*", 300, 1000, null, true);

	SoundPlay("@dm8bit009",0,450,true);


	Wait(500);


	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//���G���J�E���g�^�퓬


//�������܂��@�����ꂽ�IA wild Akushima has appeared!
	Fami_Text_Fade01F(1,0,2,"A","�Q","W","I","L","D","�Q","A");
	Fami_Text_Fade01S("K","U","S","H","I","M","A","�Q",0);
	Fami_Text_Fade02F("A","A","P","P","E","A","R","S","�I");

	WaitKey();

	Wait(500);

	Delete("@window_fami/f*");

//�����΂́@���������I
//�������܂Ɂ@�P�O�̃_���[�W�I
	CreateSE("SE01","se8bit_�퓬_�U������");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","�Q","A","T","T");
	Fami_Text_Fade01S("A","C","K","S","�I",0,0,0,0);

	WaitKey();
	Wait(500);

	CreateSE("SE01","se8bit_�퓬_�_���[�W");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);

	Wait(200);


	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("�Q","R","E","C","E","I","V","E","D");
	Fami_Text_Fade03F("�Q","�P","�O","�Q","D","A","M","A","G");
	Fami_Text_Fade03S("E","�I",0,0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");


//�m�C�Y�́@�L���[�u�u���b�N��
//�Ȃ������I
//�������܂Ɂ@�Q�O�̃_���[�W�I
	CreateSE("SE01","se8bit_�퓬_�U������");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","�Q","T","H","R");
	Fami_Text_Fade01S("O","W","S","�Q","H","I","S",0,0);
	Fami_Text_Fade02F(2,"C","U","B","E","�Q","B","L","O","C");
	Fami_Text_Fade02S("C","K","�I",0,0,0,0,0,0);

	WaitKey();
	Wait(500);

	CreateSE("SE01","se8bit_�퓬_�_���[�W");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);

	Wait(200);


	Fami_Text_Fade03F(3,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade03S("�Q","R","E","C","E","I","V","E","D");
	Fami_Text_Fade04F("�Q","�Q","�O","�Q","D","A","M","A","G");
	Fami_Text_Fade04S("E","�I",0,0,0,0,0,0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	WaitKey();
	Delete("@window_fami/f*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������܂́@���K�z���Ł@�����񂾁Iakushima uses megaphone
//�u���J�[�[�[�[�[�[�[�I�I�I�I�vMIND YA EARS BITCHES
	CreateSE("SE01","se8bit_�퓬_�����̍U��");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02F("�Q","U","S","E","S","�Q","M","E","G");
	Fami_Text_Fade02S("A","P","H","O","N","E",0,0,0);
	Fami_Text_Fade03F(3,"�u","A","A","A","H","H");
	Fami_Text_Fade03S("H","�I","�I","�I","�I","�v",0,0,0);

	Wait(1000);
	SetVolumeEX("SE*", 0, 0, null);

	CreatePlainSP("�G��", 35000);
	CreateSE("SE01","se8bit_�퓬_�_���[�W");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G��", 500, 20, 30, 0, 0, 500, Dxl1, false);
	Wait(300);
	Delete("�G��");
	Wait(300);
	Delete("@window_fami/f*");


//�����΂Ɂ@�P�O�̃_���[�W�Iaoba takes 10 dmg pts
//�m�C�Y�Ɂ@�W�̃_���[�W�Inoiz takes 8 dmg pts
	Fami_Text_Fade01F(1,0,2,"A","O","B","A",0,0,0,0);
	Fami_Text_Fade01S("�Q","R","E","C","E","I","V","E","D");
	Fami_Text_Fade02F("�Q","�P","�O","�Q","D","A","M","A","G");
	Fami_Text_Fade02S("E","�I",0,0,0,0,0,0);
	WaitKey();

	Fami_Text_Fade03F(3,"N","O","I","Z","�Q","R","E","C");
	Fami_Text_Fade03S("E","I","V","E","D",0,0,0,0);
	Fami_Text_Fade04F("�Q","�W","�Q","D","A","M","A","G","E");
	Fami_Text_Fade04S("�I",0,0,0,0,0,0,0);

	WaitKey();
	Wait(500);
	Delete("@window_fami/f*");

//�����΂́@�����@�����������Iaoba uses ren
//��񂪁@�������܂Ɂ@���݂����Iren bit akushima
//�P�T�̃_���[�W�Iaku takes 15 dmg pts
	CreateSE("SE01","se8bit_�퓬_�U������");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","�Q","U","S","E");
	Fami_Text_Fade01S("S","�Q","R","E","N","�I",0,0,0);

	WaitKey();
	CreateSE("SE01","se8bit_�퓬_����");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se8bit_�퓬_����");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(500);


	Fami_Text_Fade02F(2,"R","E","N","�Q","B","I","T","�Q");
	Fami_Text_Fade02S("A","K","U","S","H","I","M","A","�I");

	WaitKey();
	CreateSE("SE01","se8bit_�퓬_�_���[�W");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);

	Wait(200);

	Fami_Text_Fade03F(3,"�P","�T","�Q","D","A","M","A","G");
	Fami_Text_Fade03S("E","�I",0,0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");


//�m�C�Y�́@�����������@�����Inoiz curses
//�������܂́@akushima's
//�ڂ������傭���@���������Idefense falls

	CreateSE("SE01","se8bit_�퓬_�m�C�Y�����r��");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G��/�G�F��", 50000, "WHITE");
	Fade("�G��/�G�F��", 25, 0, null, true);
	Wait(50);
	Fade("�G��/�G�F��", 25, 1000, null, true);
	Fade("�G��/�G�F��", 25, 0, null, true);
	Wait(50);
	Fade("�G��/�G�F��", 25, 1000, null, true);
	Fade("�G��/�G�F��", 25, 0, null, true);
	Wait(50);

	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","�Q","C","U","R");
	Fami_Text_Fade01S("S","E","S","�I",0,0,0,0,0);

	WaitKey();
	CreateSE("SE01","se8bit_�퓬_�h��ቺ");
	MusicStart("SE01",0,700,0,800,null,false);
	Wait(1000);

	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("S","�Q","D","E","F","E","N","S","E");
	Fami_Text_Fade03F("�Q","F","A","L","L","S","�I",0);


	WaitKey();
	Delete("@window_fami/f*");

//�������܂� akushima 
//���K�z�����@�Ȃ������Ithrows his megaphone
//�������@but
//�m�C�Y�́@����₩�Ɂ@���킵���I noiz dodges
	CreateSE("SE01","se8bit_�퓬_�U������");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade01S("�Q","T","H","R","O","W","S","�Q",0);
	Fami_Text_Fade02F("�Q","H","I","S","�Q","M","E","G");
	Fami_Text_Fade02S("A","P","H","O","N","E",0,0,0);

	WaitKey();
	CreateSE("SE01","se8bit_�퓬_���");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	Fami_Text_Fade03F(3,"B","U","T","�Q"0,0,0,0);
	Fami_Text_Fade04F(4,"N","O","I","Z","�Q","D","O","D");
	Fami_Text_Fade04S("G","E","S","�I",0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");
	CreateSE("SE01","se8bit_�퓬_�h��ቺ");
	MusicStart("SE01",0,700,0,1200,null,false);
	Wait(1000);

//�������܂� Akushima's offense
//����������傭���@�P�O���������Ifalls by 10
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade01S("S","�Q","O","F","F","E","N","S","E");
	Fami_Text_Fade02F("�Q","F","A","L","L","S","�Q",0);
	Fami_Text_Fade02S("B","Y","�Q","�P","�O","�I",0,0,0);
	

	WaitKey();
	Wait(500);
	Delete("@window_fami/f*");


//�����΂́@������@�͂Ȃ����Iaoba uses kick
//�������܂Ɂ@�P�T�̃_���[�W�Idoes a measly 15 dmg
	CreateSE("SE01","se8bit_�퓬_���");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","�Q","U","S","E");
	Fami_Text_Fade01S("S","�Q","K","I","C","K","�I",0,0);

	WaitKey();
	CreateSE("SE01","se8bit_�퓬_�_���[�W");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);

	Wait(200);

	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("�Q","R","E","C","E","I","V","E","D");
	Fami_Text_Fade03F("�Q","�P","�T","�Q","D","A","M","A","G");
	Fami_Text_Fade03S("E","�I",0,0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");


//�m�C�Y�́@�i�b�N�����@�Ȃ������Inoiz uses knuckle punch
//�q�b�g�Iit hits
//�������܂Ɂ@�T�O�́@�_���[�W�I50 fucking dmg
	CreateSE("SE01","se8bit_�퓬_���");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","�Q","U","S","E");
	Fami_Text_Fade01S("S","�Q","K","N","U","C","K","L","E");
	Fami_Text_Fade02F("�Q","P","U","N","C","H","�I",0,0);

	WaitKey();
	CreateSE("SE01","se8bit_�퓬_�_���[�W");
	MusicStart("SE01",0,700,0,1500,null,false);
	Wait(50);
	CreateSE("SE02","se8bit_�퓬_�_���[�W");
	MusicStart("SE02",0,700,0,1500,null,false);
	Wait(100);
	CreateSE("SE03","se8bit_�퓬_�_���[�W");
	MusicStart("SE03",0,700,0,1500,null,false);
	Wait(100);
	CreateSE("SE04","se8bit_�퓬_�_���[�W");
	MusicStart("SE04",0,700,0,2000,null,false);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);
	Fade("�G����*", 10, 0, null, true);
	Fade("�G����*", 10, 1000, null, true);

	Wait(200);
	
	Delete("@window_fami/f*");

	Fami_Text_Fade01F(1,0,2,"I","T","�Q","H","I","T","S","�I");

	WaitKey();

	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("�Q","R","E","C","E","I","V","E","D");
	Fami_Text_Fade03F("�Q","�T","�O","�Q","D","A","M","A","G");
	Fami_Text_Fade03S("E","�I",0,0,0,0,0,0);
	Wait(500);

	Delete("�G����*");

	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se8bit_�퓬_���ʉ�");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);

	Delete("@window_fami/f*");

//�������܂́@�����ꂽ�IAkushima faints
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade01S("�Q","F","A","I","N","T","S","�I",0);


	WaitKey();
	Delete("@window_fami/f*");


//�����΂����́@levelup
//�P�S�U�̂������񂿂��@�Ăɂ��ꂽ�I
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","�Q","��","�Q","N");
	Fami_Text_Fade01S("O","I","Z","�Q","G","A","I","N");
	Fami_Text_Fade02F(2,"�P","�S","�U","_","E","X","P");
	Fami_Text_Fade02S("_","P","O","I","N","T","S","�I");


	Wait(1000);

	CreateSE("SE01","se8bit_�퓬_���x���A�b�v");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);

//�����΂́@���x�����@���������I
//����������傭���@�R�@���������I
//���΂₳���@�S�@���������I
//������傭���@�Q�@���������I
//�u�܂��傤�̂����v��
//���x�����@���������I
	Fami_Text_Fade03F(3,"A","O","B","A","�Q","L","E","V");
	Fami_Text_Fade03S("E","L","E","D","�Q","U","P","�I",0);

	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_End_Delete();
	Fami_Text_Fade04F(4,"A","T","T","A","C","K",0,0);
	Fami_Text_Fade04S("�Q","��","�R","�I",0,0,0,0,0);
	Fami_Text_Scroll(1);

	Wait(1000);
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade01F(4,0,2,"S","P","E","E","D","�Q","��","�S");
	Fami_Text_Fade01S("�I",0,0,0,0,0,0,0,0);
	Fami_Text_Scroll(2);

	Wait(1000);
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade02F(4,"S","�D","A","T","T","K","�Q","��");
	Fami_Text_Fade02S("�Q","�I",0,0,0,0,0,0,0);
	Fami_Text_Scroll(3);

	Wait(1000);
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade03F(4,"�u","M","A","G","I","C","�Q","V");
	Fami_Text_Fade03S("O","I","C","E","�v",0,0,0,0);
	Fami_Text_Scroll(4);

	Fami_Text_Fade04F(4,"L","E","V","E","L","E","D","�Q");
	Fami_Text_Fade04S("U","P","�I",0,0,0,0,0,0);
	Fami_Text_Scroll(1);



	Wait(1000);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	CreateSE("SE01","se8bit_�퓬_���x���A�b�v");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);
	Delete("@window_fami/f*");

//�m�C�Y�́@���x�����@���������I
//����������傭���@�T�@���������I
//���������@�T�@���������I
//���΂₳���@�R�@���������I
//�u���Ԃ񂩂��āv�́@
//���x�����@���������I
	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","�Q","L","E","V");
	Fami_Text_Fade01S("E","L","E","D","�Q","U","P","�I",0);

	Wait(500);
	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_End_Delete();
	Fami_Text_Fade02F(2,"A","T","T","A","C","K","�Q","��");
	Fami_Text_Fade02S("�T","�I",0,0,0,0,0,0);

	Wait(1000);
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade03F(3,"D","E","F","E","N","S","E","�Q");
	Fami_Text_Fade03S("��","�T","�I",0,0,0,0,0,0);

	Wait(1000);
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade04F(4,"A","G","I","L","I","T","Y","�Q");
	Fami_Text_Fade04S("��","�R","�I",0,0,0,0,0,0);
	Fami_Text_Scroll(1);

	Wait(1000);
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade01F(4,0,2,"�u","S","E","L","F","I","S","H");
	Fami_Text_Fade01S("N","E","S","S","�v","�Q",0);
	Fami_Text_Scroll(2);

	Fami_Text_Fade02F(4,"L","E","V","E","L","E","D","�Q");
	Fami_Text_Fade02S("U","P","�I",0,0,0,0,0,0);
	Fami_Text_Scroll(3);
	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@window_fami/f*");

//�u�������܂̃g�����N�X�v��
//�Ăɂ��ꂽ�I
	Fami_Text_End_Delete();
	Fami_Text_Fade01F(1,0,2,"A","K","U","S",0,0,0,0,0);
	Fami_Text_Fade01S("�Q","�u","T","R","U","N","K","S","�v");
	Fami_Text_Fade02F(2,"O","B","T","A","I","N","E","D","�I");
	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_�ʏ�_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

//�u�������܂̂��Ȃ����������v��
//�Ăɂ��ꂽ�I
	Fami_Text_End_Delete();
	Fami_Text_Fade03F(3,"A","K","U","S","�Q","�u","O","L");
	Fami_Text_Fade03S("D","�Q","S","O","C","K","S","�v",0);
	Fami_Text_Fade04F(4,"O","B","T","A","I","N","E","D","�I");
	Fami_Text_Scroll(1);


	Wait(2000);

	CreateColorEX("�G�F��", 50000, "000000");
	Fade("�G�F��", 700, 1000, null, true);

	Delete("�t�@�~�L����01����*");
	Delete("�t�@�~�L����02����*");
	Delete("�G�w�i*");
	Delete("�G����*");
	Delete("@fami*");
	Delete("@window_fami/f*");



	CreateTextureEX("�G��/�G������", 1000, 464, 208, "cg/sys/ed/dot/dm_8����_4�E01.png");
	Fade("�G��/�G������", 0, 1000, null, true);

	Rotate("�G��/�G������", 0, @0, @0, -90, null,true);


	SoundPlay("@dm8bit001",0,450,true);
	FadeDelete("�G�F��", 700, null, true);



//���퓬�I��
//�������X���̏��ɂ��Ԃ��ɓ|��Ă���

	Wait(500);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//�y���t�z
//�u�͂��@�͂��v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","H","A","�Q","H","A","�v",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\



	Delete("@window_fami/f*");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�y�m�C�Y�z
//�u�ق�Ƃ����[�ȁ@�R�C�c�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","H","E","�Q","W","A","S","�Q");
	Fami_Text_Fade01S("T","O","U","G","H","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");


//���m�C�Y�A������͂ނƃh�A�܂ŉ^��ł����A�ہ[���Ǝ̂Ă�B

	Dot_Cara_Move("�m�C�Y","��",1,true);
	Dot_Cara_Fade("�m�C�Y","��",0,0);
	Wait(500);
	Dot_Cara_Move("�m�C�Y","��",1,100);
	Wait(100);
	CreateSE("SE01","se8bit_�퓬_�_���[�W");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G��/�G�F��", 50000, "WHITE");
	Fade("�G��/�G�F��", 100, 1000, Dxl1, true);
	Wait(50);
//	Delete("�G������");

	CreateSE("SE02","se8bit_�ʏ�_�ӂ����");
	MusicStart("SE02",0,700,0,1500,null,false);
	Rotate("�G��/�G������", 600, @0, @0, -1440, null,false);
//	BezierMove("�G��/�G������", 600, (@0,@0){368,112}{304,112}(208,208), AxlDxl, false);
	Move("�G��/�G������", 600, 208, -16, null, false);
	FadeDelete("�G��/�G�F��", 50, Dxl1, true);
	Wait(600);
	Delete("�G��/�G������");

	Wait(300);

	Dot_Cara_Move("���t","��",1,true);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);
//�y���t�z
//�u�����v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","A","H","�I","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();

	Dot_Cara_Move("�m�C�Y","��",1,true);
	Wait(300);
	Delete("@window_fami/f*");

//�y�m�C�Y�z
//�u����܂�����@�����Â����v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","H","E","�Q","W","A","S","�Q");
	Fami_Text_Fade01S("I","N","�Q","T","H","E","�Q",0,0);
	Fami_Text_Fade02F("�Q","�Q","W","A","Y","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@window_fami/f*");


//�y���t�z
//�u���[���c�c�voh maannnn
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","O","H","�Q","M","A","N","�c");
	Fami_Text_Fade01S("�c","�v",0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�y���t�z
//�u�c�c�c�c�v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","�c","�c","�c","�c","�v",0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");


//�y�m�C�Y�z
//�u�c�c�c�c�H�v
	Fami_Text_End_Delete();
	Dot_Cara_Fade("�m�C�Y","��",0,0);
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","�c","�c","�c","�c","�H","�v",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");

//�y�m�C�Y�z
//�u�ǂ������H�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","W","H","A","T","�H","�v",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");
	Dot_Cara_Fade("���t","��",0,0);

//�y���t�z
//�u����@�Ȃ񂩂ւ񂾂Ƃ������āv
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","N","O","�Q","J","U","S","T");
	Fami_Text_Fade01S("�c","I","T","�Q","F","E","E","L","S");
	Fami_Text_Fade02F(2,"�Q","O","F","F","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@window_fami/f*");

//�y�m�C�Y�z
//�u�Ȃɂ��H�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","W","H","A","T","�Q","D","O");
	Fami_Text_Fade01S("E","S","�H","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@window_fami/f*");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�y���t�z
//�u���ꂽ������v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","U","S","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();
	WaitKey();


	Dot_Cara_Fade("���t","�E",0,0);
	Wait(500);
	Dot_Cara_Fade("���t","��",0,0);
	Wait(500);
	Dot_Cara_Fade("���t","��",0,0);
	Wait(1000);

//�y���t�z
//�u�Ȃ񂩁@���̂�����
//�@���킩�񂪂���c�c�vfeel out of place
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"�u","I","�Q","J","U","S","T","�Q");
	Fami_Text_Fade02S("F","E","E","L",0,0,0,0,0);
	Fami_Text_Fade03F(3,"�Q","O","U","T","�Q","O","F","�Q");
	Fami_Text_Fade03S("P","L","A","C","E","�c","�c","�v",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");

//�y�m�C�Y�z
//�u�������H�v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","R","E","A","L","L","Y","�H");
	Fami_Text_Fade01S("�v",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");
	Dot_Cara_Fade("���t","��",0,0);
	Wait(500);

//�y���t�z
//�u����
//�@���ꂶ�Ⴂ���Ȃ��悤�ȁc�c�vthis cant be right
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","Y","E","A","H",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Wait(200);
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"�Q","L","I","K","E","�Q","T","H");
	Fami_Text_Fade02S("I","S","�Q","C","A","N","T","�Q",0);
	Fami_Text_Fade03F(3,"�Q","B","E","�Q","R","I","G","H");
	Fami_Text_Fade03S("T","�v",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");
//	Dot_Cara_Fade("���t","��",0,0);


//�y���t�z
//�u�Ȃɂ�
//�@�܂������Ă��܂����悤�ȁc�c�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","L","I","K","E",�Q,"S","O");
	Fami_Text_Fade01S("M","E","T","H","I","N","G",0);
	Fami_Text_Fade02F(2,"�Q","I","S","�Q","W","R","O","N");
	Fami_Text_Fade02S("G","�c","�c","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	//Fami_Text_Scroll(1);
	//Fami_Text_Scroll(2);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�y�m�C�Y�z
//�u�ȂɁ@�u�c�u�c�����Ă�񂾁H�v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","W","H","A","T","�Q","A","R");
	Fami_Text_Fade01S("E","�Q","Y","O","U","�Q",0,0,0);
	Fami_Text_Fade02F("�Q","�Q","M","U","T","T","E","R");
	Fami_Text_Fade02S("I","N","G","�H","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");
	Dot_Cara_Fade("���t","��",0,0);

//�y���t�z
//�u����@�Ȃ�ł��Ȃ��v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","N","O","�Q","N","O","T","H");
	Fami_Text_Fade01S("I","N","G","�v",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");


//�y�m�C�Y�z
//�u�����v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","O","H","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");
	Dot_Cara_Move("�m�C�Y","�E",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,true);
	Dot_Cara_Fade("���t","�E",0,0);
	Dot_Cara_Fade("�m�C�Y","��",0,0);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//�y�m�C�Y�z
//�u���C�����͂��܂�@�������v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","L","E","T","S","�Q","G","O");
	Fami_Text_Fade01S("�C","�Q","R","H","Y","M","E","�Q",0);
	Fami_Text_Fade02F(2,"�Q","I","S","�Q","S","T","A","R");
	Fami_Text_Fade02S("T","I","N","G","�v",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);


	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");


	Dot_Cara_Move("�m�C�Y","�E",1,200);
	Dot_Cara_Move("���t","�E",1,true);
	Dot_Cara_Move("�m�C�Y","�E",1,200);
	Dot_Cara_Move("���t","�E",1,true);
	Dot_Cara_Move("�m�C�Y","�E",1,200);
	Dot_Cara_Move("���t","�E",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","�E",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);
	Dot_Cara_Fade("���t","��",0,0);

	Wait(500);

//���m�C�Y�A���t�̘r�����������ăJ�E���^�[���o��B

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);


//�y���t�z
//�u�����@�݂��΂񂪁c�c�I�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","H","E","Y","�Q","T","H","E");
	Fami_Text_Fade01S("�Q","S","H","O","P","�c","�I","�v",0);
	SetVolumeEX("SE*", 0, 0, null);


	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");

	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);
	Dot_Cara_Move("�m�C�Y","��",1,200);
	Dot_Cara_Move("���t","��",1,true);

	CreateSE("SE01","se8bit_�ʏ�_�J��_b");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
//���m�C�Y�A���t�̘r�����������ăJ�E���^�[���o��B

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//�����t�A�m�C�Y�ɘA��Ă���ăh�A�̊O��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�y���t�z
//�u������ƁA�m�C�Y�c�c�I�v
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","W","A","I","T","�Q","N","O");
	Fami_Text_Fade01S("I","Z","�c","�I","�v",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);


	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");

	CreateSE("SE01","se8bit_�ʏ�_�ړ�");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@�t�@�~�L����01�m�C�Y*");
	Delete("@�t�@�~�L����02�m�C�Y*");
	Dot_Cara_Move("���t","��",1,true);
	CreateSE("SE01","se8bit_�ʏ�_�ړ�");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@�t�@�~�L����01���t*");
	Delete("@�t�@�~�L����02���t*");

	SetVolumeEX("@dm*", 1000, 0, null);
	Wait(2500);

//���N�����Ȃ��Ȃ����X���ŁA�����x��Ę@����ʒ[���瑖���ďo�Ă���B
	CreateSE("SE01","se8bit_�ʏ�_�ړ�");
	MusicStart("SE01",0,700,0,1000,null,false);
	Dot_Cara_Fade("�@��","��",11,3);
	Wait(1000);
	Dot_Cara_Move("�@��","�E",7,true);
	Dot_Cara_Move("�@��","��",2,true);
	Dot_Cara_Move("�@��","��",4,true);
	Dot_Cara_Move("�@��","��",1,true);
	Dot_Cara_Fade("�@��","��",0,0);
	Wait(500);
	Dot_Cara_Fade("�@��","�E",0,0);
	Wait(500);
	Dot_Cara_Fade("�@��","��",0,0);
	Wait(500);
	Dot_Cara_Fade("�@��","��",0,0);
	Wait(500);
	Dot_Cara_Fade("�@��","��",0,0);
	Wait(1000);
	Dot_Cara_Move("�@��","��",1,true);
	Dot_Cara_Move("�@��","�E",3,true);
	Dot_Cara_Move("�@��","��",3,true);
	Dot_Cara_Move("�@��","��",2,true);
	Dot_Cara_Fade("�@��","�E",0,0);
	Wait(500);
	Dot_Cara_Fade("�@��","��",0,0);
	Wait(500);
	Dot_Cara_Fade("�@��","��",0,0);
	Wait(500);
	Dot_Cara_Fade("�@��","��",0,0);
	Wait(1000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "�t�@�~�R���{�b�N�X");
	Fade("@famitextbox", 100, 1000, null, true);

//�y�@�z
//�u�����΁I�v
	CreateSE("SE01","se8bit_�ʏ�_��b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"�u","A","O","B","A","�I","�v",0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");

	Move("@�t�@�~�L����01�@��*", 300, @0, @128, Dxl1, false);
	Move("@�t�@�~�L����02�@��*", 300, @0, @128, Dxl1, true);

//	Dot_Cara_Move("�@��","��",4,true);
	CreateSE("SE01","se8bit_�ʏ�_�J��_b");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	CreateSE("SE01","se8bit_�ʏ�_�ړ�");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@�t�@�~�L����01�@��*");
	Delete("@�t�@�~�L����02�@��*");


	Wait(2000);

	CreateColorEX("�G�F��", 15000, "000000");
	Fade("�G�F��", 1500, 1000, null, true);


//���@�����A���t�̂��Ƃ��Q�ĂĂ��Ă����B

//����ʈÓ]
//�����񂾂�BGM���o�O���Ă����̂��A���B


//���L�t�H���g�X�s�[�h��

	Wait(1500);




//�c�c�c�c
//	CreateSE("SE01","se8bit_�ʏ�_��b_200L");
//	MusicStart("SE01",0,700,0,950,null,true);
	Fami_Text_Fade01F(1,200,5,"�c","�c","�c","�c",0,0,0,0);
//	SetVolumeEX("SE*", 0, 0, null);
//	jikauchi_moji01();


	WaitKey();
	Wait(500);
	Delete("@window_fami/f*");
	Delete("@�G����*");

//�\�E
//�I���^�`�m�@�C�c���g�@�J�����i�C
//�j�`�W���E�n�@�c�d�C�e�@�C�N
//	MusicStart("SE01",0,700,0,950,null,true);
	Fami_Text_Fade01F(1,200,5,"Y","E","S",0,0,0,0,0);
//	CreateSE("SE01","se8bit_�ʏ�_��b_200L");
//	MusicStart("SE01",0,700,0,950,null,true);
	Fami_Text_Fade02F(2,"O","U","R","�Q","N","O","R","M");
	Fami_Text_Fade02S("A","L","�Q","D","A","Y","S",0,0);
	Fami_Text_Fade03F(3,"W","I","L","L","�Q","C","O","N");
	Fami_Text_Fade03S("T","I","N","U","E","�Q","A","L","L");
	Fami_Text_Fade04F(4,"T","H","E","�Q","S","A","M","E",0);
//	SetVolumeEX("SE*", 0, 0, null);

//	jikauchi_moji02();

	WaitKey();
	Delete("@window_fami/f*");
	Delete("@�G����*");
	Wait(500);

	Delete("�G���}��");

//���L����Ƀt�H���g�X�s�[�h��

//�C�c�}�f���@�E�@�E�@�E
//	CreateSE("SE01","se8bit_�ʏ�_��b_1000L");
//	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,1000,5,"F","O","R","E","V","E","R","�c");
	SetVolumeEX("SE*", 0, 0, null);




//�e�F���L�����o�B
/*

//�����o�F�m�C�Y�̓���I�����Ɏ��s�����ꍇ
//�����o�F��ʂ��t�@�~�R�����ɂȂ�

//���r�d�F�v�����A�v�����A�Ɛ���d�b���鉹
//���r�d�F�K�`���b�Ǝ�b�����鉹

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000010a01">
�u�͂��A���d�b���肪�Ƃ��������܂��B�W�����N�V���b�v�w���}�x�ł��v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000020a01">
�u�͂��v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000030a01">
�u�͂��A�����Ă܂��B�͂��v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000040a01">
�u�������ł��傤���H�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000050a01">
�u�͂��A�킩��܂����B����ł͂��q�l�̌l
�f�[�^�������艺�����v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���s�b�A�s�s�b�݂����Ȍl�f�[�^��M����

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000060a01">
�u�c�c�͂��A���肪�Ƃ��������܂����I�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000070a01">
�u����ł͍���Ƃ����X�����Ђ����Ɂ`�v

//���r�d�F�҂��Ǝ�b���؂鉹

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000080a01">
�u�c�c�ӂ��v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000090a01">
�u���낻��X�����A���Ă��鍠���ȁH�v

//����������ƃh�A���J���ăm�C�Y�������Ă���

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000100a03">
�u�悧�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000110a01">
�u���O�c�c�A�m�C�Y�I�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000120a01">
�u�X�܂ŗ��ĉ��̗p����v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000130a03">
�u���̃`�[���ɓ����v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000140a01">
�u���C������H�@������v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000150a03">
�u�c�c�����v

//���m�C�Y�A�J�E���^�[�����z����B
//���t�̏�ɔn���ɂȂ�B

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000160a01">
�u�ȁc�c���I�@�ǂ���I�v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000170a03">
�u�`�[���ɓ���v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000180a01">
�u�������āc�c�A�I�H�v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000190a03">
�u�c�c�c�c�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000200a01">
�u��A�ށc�c�I�v

//�����L�X����Ă܂��B���t�����΂�

//���΂��[��ƃh�A���J���Ĉ����o��

{	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�����z
<voice name="����" class="����" src="voice/dm24/6000210b08">
�u���������I�@���̃e�����X�g�ǂ��[�I�I�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000220a01">
�u�I�v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000230a03">
�u�������̂������ȁv

{	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�����z
<voice name="����" class="����" src="voice/dm24/6000240b08">
�u�ߕ߂��Ă��[�I�I�v

//���G���J�E���g�^�퓬

���������ꂽ�I

���t�̍U���I
�����ɂP�O�̃_���[�W�I

�m�C�Y�̓L���[�u�u���b�N�𓊂������I
�����ɂQ�O�̃_���[�W�I

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
�����̓��K�z���ŋ��񂾁I
�u���J�[�[�[�[�[�[�[�I�I�I�I�v

���t�ɂP�O�̃_���[�W�I
�m�C�Y�ɂW�̃_���[�W�I

���t�͘@�������������I
�@�������Ɋ��ݕt�����I
�P�T�̃_���[�W�I

�m�C�Y�͈��Ԃ������I
�����̖h��͂����������I

�����̓��K�z���𓊂������I
�������m�C�Y�͌y�₩�ɂ��킵���I
�����̍U���͂��P�O���������I

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
���t�͏R���������I
�����ɂP�T�̃_���[�W�I

�m�C�Y�̓i�b�N���𓊂������I
�q�b�g�I
�����ɂT�O�̃_���[�W�I

�����͓|�ꂽ�I

���t�����͂P�S�U�̌o���l����ɓ��ꂽ�I

���t�̓��x�����オ�����I
�U���͂��R�オ�����I
�f�������S�オ�����I
�̗͂��Q�オ�����I
�u�����̐��v�̃��x�����オ�����I

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
�m�C�Y�̓��x�����オ�����I
�U���͂��T�オ�����I
�m�����T�オ�����I
�f�������R�オ�����I
�u��������v�̃��x�����オ�����I

�u�����̃g�����N�X�v����ɓ��ꂽ�I
�u�����̌������C���v����ɓ��ꂽ�I

//���퓬�I��
//�������X���̏��ɂ��Ԃ��ɓ|��Ă���

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000250a01">
�u�͂��A�͂��v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000260a03">
�u�ق�Ƃ����[�ȁA�R�C�c�v

//���m�C�Y�A������͂ނƃh�A�܂ŉ^��ł����A
�ہ[���Ǝ̂Ă�B

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000270a01">
�u�����v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000280a03">
�u�ז�������Еt�����v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000290a01">
�u���[���c�c�v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000300a01">
�u�c�c�c�c�v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000310a03">
�u�c�c�c�c�H�v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000320a03">
�u�ǂ������H�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000330a01">
�u����A�Ȃ񂩕ς��Ǝv���āv

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000340a03">
�u�����H�v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000350a01">
�u����������v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000360a01">
�u�Ȃ񂩂��̂�������a��������c�c�v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000370a03">
�u�������H�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000380a01">
�u����B���ꂶ�Ⴂ���Ȃ��悤�ȁc�c�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000390a01">
�u�����Ԉ���Ă��܂����悤�ȁc�c�v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000400a03">
�u���u�c�u�c�����Ă�񂾁H�v

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000410a01">
�u����A�Ȃ�ł��Ȃ��v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000420a03">
�u�����v

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/6000430a03">
�u���C�����n�܂�B�s�����v

//���m�C�Y�A���t�̘r�����������ăJ�E���^�[���o��B

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000440a01">
�u�����A�X�Ԃ��c�c�I�v

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�A�m�C�Y�ɘA��Ă���ăh�A�̊O��

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/6000450a01">
�u������ƁA�m�C�Y�c�c�I�v

//���N�����Ȃ��Ȃ����X���ŁA�����x���
�@����ʒ[���瑖���ďo�Ă���B

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm24/6000460a06">
�u���t�I�v

//���@�����A���t�̂��Ƃ��Q�ĂĂ��Ă����B

//����ʈÓ]
//�����񂾂�BGM���o�O���Ă����̂��A���B

�@�c�c�c�c

�@�\�E
�@�I���^�`�@�m�@�C�c���@�g�@�J�����i�C
�@�j�`�W���E�@�n�@�c�d�C�e�@�C�N�@

�@�C�c�}�f���@�E�@�E�@�E

//�������^�X�^�b�t���[��



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm9999.nss"]

*/


	Wait(800);

	CreateColorEX("�G�F��", 32000, "000000");
	Fade("�G�F��", 1500, 1000, null, true);


	//���b�N����
	LockVideo(false);


	Delete("�G��*");
	Delete("@fami*");
	Delete("@Pro*");
	Delete("@�t�@�~*");

	ClearFadeAll(2000, true);

	Wait(3000);

}
