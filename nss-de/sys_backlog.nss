$Revision: 10 $

//=============================================================================//
//���o�b�N���O��
//=============================================================================//

chapter main
{
	Wait(16);

	//����������̕ϑJ�p
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//���t���O�֌W
	//�o�b�N���O�֌W�V�X�e���ϐ�
	//����s������̕������̓V�X�e���̓s����uSystem.ini�v�́u�o�b�N���O�v�Z�N�V�����Őݒ肵�Ă��������B
	$SYSTEM_backlog_row_max=32;			//�o�b�N���O�\���̍ő�s��
	$SYSTEM_backlog_voice_icon_x=168;	//�o�b�N���O�\���̉������s�[�g�A�C�R���w���W
	$SYSTEM_backlog_position_x=210;		//�o�b�N���O�\���̕��͊J�n�ʒu�w���W
	$SYSTEM_backlog_position_y=42;		//�o�b�N���O�\���̕��͊J�n�ʒu�x���W
	$SYSTEM_backlog_row_interval=26;	//�o�b�N���O�\���̍s�ԃT�C�Y
	$SYSTEM_backlog_character_width=11;	//�o�b�N���O�\���̊e������ was 9 yo
	$SYSTEM_backlog_word_in_row=64;
	#SYSTEM_backlog_word_in_row=64;
	#SYSTEM_backlog_voice_icon_shift_y=1;	//�o�b�N���O�\���̉����A�C�R����Y��

	//���I���X�N���v�g�ɂăo�b�N���O���o���Ȃ��悤�ɂ���
	if($SYSTEM_backlog_lock_a){
		return;
	}

//	$tekitou=MilliTime();

	//�����[�h�t�@�C��
//	LoadFile("cg/sys/backlog/�x�[�X.png", true);

	//�������u�X�N���[���v//���E�N���b�N���痈�Ă��Ȃ����
	if(!$SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,VIDEO);
		CreateTexture("bkd�w�i�Q",10100,center,middle,VIDEO);
	}else if($SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,SCREEN);
		CreateTexture("bkd�w�i�Q",10100,center,middle,SCREEN);
	}
	Wait(16);

	//SetFont("�l�r �S�V�b�N",20,000000,000000,100);
	SetFont("�l�r �S�V�b�N",21,FFFFFF,000000,100,AROUND);

	//����`�u�w�i�v
	CreateTexture("bkf��",10010,0,0,"cg/sys/backlog/���Z��.png");
	SetAlias("bkf��", "bkf��");
	CreateTexture("bk���Q",10110,0,0,"cg/sys/backlog/���Z��.png");
	SetAlias("bk���Q", "bk���Q");

	CreateTexture("bkf�w�i",10010,117,0,"cg/sys/backlog/�x�[�X.png");
	SetAlias("bkf�w�i", "bkf�w�i");
	CreateTexture("bk�w�i�Q",10110,117,0,"cg/sys/backlog/�x�[�X.png");
	SetAlias("bk�w�i�Q", "bk�w�i�Q");

	CreateTexture("bkf����",10010,914,199,"cg/sys/backlog/����{�^������.png");
	SetAlias("bkf����", "bkf����");


	//����`�u��y�[�W����v
	CreateTexture("bkf��y�[�W",10050,868,172,"cg/sys/backlog/���߂�_off.png");
//	CreateChoice("bk��y�[�W",0,0,0,0,0,0);
	CreateChoice("bk��y�[�W");
	CreateTexture("bk��y�[�W/MouseUsual/hit",0,868,172,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk��y�[�W/MouseUsual/button",10050,868,172,"cg/sys/backlog/���߂�_off.png");
	CreateTexture("bk��y�[�W/MouseOver/button",10050,868,172,"cg/sys/backlog/���߂�_over.png");
	CreateTexture("bk��y�[�W/MouseClick/button",10050,868,172,"cg/sys/backlog/���߂�_on.png");

	//����`�u�ド�C������v
	CreateTexture("bkf�ド�C��",10050,868,218,"cg/sys/backlog/�߂�_off.png");
//	CreateChoice("bk�ド�C��",0,0,0,0,0,0);
	CreateChoice("bk�ド�C��");
	CreateTexture("bk�ド�C��/MouseUsual/hit",0,868,218,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk�ド�C��/MouseUsual/button",10050,868,218,"cg/sys/backlog/�߂�_off.png");
	CreateTexture("bk�ド�C��/MouseOver/button",10050,868,218,"cg/sys/backlog/�߂�_over.png");
	CreateTexture("bk�ド�C��/MouseClick/button",10050,868,218,"cg/sys/backlog/�߂�_on.png");

	//����`�u�����C������v
	CreateTexture("bkf�����C��",10050,868,265,"cg/sys/backlog/����_off.png");
//	CreateChoice("bk�����C��",0,0,0,0,0,0);
	CreateChoice("bk�����C��");
	CreateTexture("bk�����C��/MouseUsual/hit",0,868,265,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk�����C��/MouseUsual/button",10050,868,265,"cg/sys/backlog/����_off.png");
	CreateTexture("bk�����C��/MouseOver/button",10050,868,265,"cg/sys/backlog/����_over.png");
	CreateTexture("bk�����C��/MouseClick/button",10050,868,265,"cg/sys/backlog/����_on.png");

	//����`�u���y�[�W����v
	CreateTexture("bkf���y�[�W",10050,868,311,"cg/sys/backlog/������_off.png");
//	CreateChoice("bk���y�[�W",0,0,0,0,0,0);
	CreateChoice("bk���y�[�W");
	CreateTexture("bk���y�[�W/MouseUsual/hit",0,868,311,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk���y�[�W/MouseUsual/button",10050,868,311,"cg/sys/backlog/������_off.png");
	CreateTexture("bk���y�[�W/MouseOver/button",10050,868,311,"cg/sys/backlog/������_over.png");
	CreateTexture("bk���y�[�W/MouseClick/button",10050,868,311,"cg/sys/backlog/������_on.png");

	//����`�u�o���v
	CreateTexture("bkf�o����{",10050,744,538,"cg/sys/backlog/�d�w�h�s�{�^��_off.png");
//	CreateChoice("bk�o��",0,0,0,0,0,0);
	CreateChoice("bk�o��");
	SetAlias("bk�o��", "bk�o��");
	CreateTexture("@bk�o��/MouseUsual/hit",0,744,538,"cg/sys/backlog/exit_hit.png");
//	CreateTexture("@bk�o��/MouseUsual/button",10050,744,538,"cg/sys/backlog/�d�w�h�s�{�^��_off.png");
	CreateTexture("@bk�o��/MouseOver/button",10050,744,538,"cg/sys/backlog/�d�w�h�s�{�^��_over.png");
	CreateTexture("@bk�o��/MouseClick/button",10050,744,538,"cg/sys/backlog/�d�w�h�s�{�^��_on.png");
	CreateSound("@bk�o��/MouseOver/se", SE, "sound/se/SE_�V�X�e��_���j���[_�I��.ogg");

	//����`�u�o�b�N���O�v
	$ScrollbarX=843;
	$ScrollbarY=493;
	CreateScrollbar("bk�X�N���[���o�[",0,$ScrollbarX,$ScrollbarY,$ScrollbarX,32,0,VERTICAL,"cg/sys/backlog/�X���C�_off.png");
	SetAlias("bk�X�N���[���o�[", "bk�X�N���[���o�[");
	CreateBacklog("bk�o�b�N���O",10010);
	SetScrollbar("bk�X�N���[���o�[","bk�o�b�N���O");


	//����`�u���v
	CreateChoice("bk���");
	SetAlias("bk���", "bk���");
	CreateTexture("@bk���/MouseUsual/hit",10050,$ScrollbarX,$ScrollbarY,"cg/sys/backlog/�X���C�_off.png");
	CreateProcess("@bk���/MouseOver/button", 10050, 0, 0, "BackLogProcessOpen");
	CreateProcess("@bk���/MouseLeave/button", 10050, 0, 0, "BackLogProcessStop");

	CreateTexture("bkf�J�[�\��01",10050,$ScrollbarX,$ScrollbarY,"cg/sys/backlog/�X���C�_off.png");
	SetAlias("bkf�J�[�\��01", "bkf�J�[�\��01");
	CreateTexture("bk�J�[�\��02",10050,$ScrollbarX,$ScrollbarY,"cg/sys/backlog/�X���C�_over.png");
	SetAlias("bk�J�[�\��02", "bk�J�[�\��02");

//�l�N�X�g�t�H�[�J�X
	SetNextFocus("bk��y�[�W/MouseUsual/hit","bk�ド�C��/MouseUsual/hit",LEFT);
	SetNextFocus("bk�ド�C��/MouseUsual/hit","bk�����C��/MouseUsual/hit",LEFT);
	SetNextFocus("bk�����C��/MouseUsual/hit","bk���y�[�W/MouseUsual/hit",LEFT);
	SetNextFocus("bk���y�[�W/MouseUsual/hit","@bk�o��/MouseUsual/hit",LEFT);
	SetNextFocus("@bk�o��/MouseUsual/hit","bk��y�[�W/MouseUsual/hit",LEFT);

	SetNextFocus("bk��y�[�W/MouseUsual/hit","@bk�o��/MouseUsual/hit",RIGHT);
	SetNextFocus("bk�ド�C��/MouseUsual/hit","bk��y�[�W/MouseUsual/hit",RIGHT);
	SetNextFocus("bk�����C��/MouseUsual/hit","bk�ド�C��/MouseUsual/hit",RIGHT);
	SetNextFocus("bk���y�[�W/MouseUsual/hit","bk�����C��/MouseUsual/hit",RIGHT);
	SetNextFocus("@bk�o��/MouseUsual/hit","bk���y�[�W/MouseUsual/hit",RIGHT);

	//������
	Request("*/*/hit", Erase);
	Fade("bk*", 0, 0, null, false);
	Fade("bk*/*", 0, 0, null, false);
	Fade("bk*/*/*", 0, 0, null, true);
	Fade("bkf*", 0, 1000, null, false);
//	Fade("bk*/MouseUsual/button", 0, 1000, null, false);
	Fade("bkd�w�i�Q", 0, 1000, null, true);

	//���`��
	Fade("bk�w�i�Q", 0, 1000, null, false);
	Move("bk�w�i�Q", 0, @0, @-576, null, true);

	Move("bk�w�i�Q", 150, @0, @576, Dxl1, false);
	Fade("bk���Q", 150, 1000, null, true);

	CreateTexture("bk�X�N���[��", 10200, 0, 0, SCREEN);
	Wait(16);

	Fade("bk�w�i�Q", 0, 0, null, false);
	Fade("bk���Q", 0, 0, null, false);
	Fade("bkd�w�i�Q", 0, 0, null, true);

	Fade("bk�X�N���[��", 100, 0, null, true);

	WaitAction("bk�X�N���[��", null);

//	Message("�f�o�b�O�p�E�B���h�E",String("%d",MilliTime()-$tekitou));

	//���I����
	$SYSTEM_backlog_enable=true;
	$PreBackLogPositionY=465;

	$SYSTEM_r_button_down=false;
	while(EnableBacklog()&&$SYSTEM_backlog_enable)
	{
		select
		{
			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
			if($SYSTEM_keydown_b||$SYSTEM_r_button_down){$SYSTEM_backlog_enable=false;break;}

			case bk�o��{$SYSTEM_backlog_enable=false;break;}
			case bk�ド�C��{Request("bk�X�N���[���o�[",Decrement);}
			case bk��y�[�W{Request("bk�X�N���[���o�[",Prev);}
			case bk�����C��{Request("bk�X�N���[���o�[",Increment);}
			case bk���y�[�W{Request("bk�X�N���[���o�[",Next);}

			//���J�[�\���A�C�R��
			case bk�X�N���[���o�[{}
			case bk���{}
			Position("bk�X�N���[���o�[",$BackLogPositionX,$BackLogPositionY);
			if($BackLogPositionY!=$PreBackLogPositionY){
				Move("@bk���/MouseUsual/hit", 0, @0, $BackLogPositionY, null, true);
				Move("bkf�J�[�\��01", 0, @0, $BackLogPositionY, null, true);
				Move("bk�J�[�\��02", 0, @0, $BackLogPositionY, null, true);
			}
			$PreBackLogPositionY=$BackLogPositionY;

			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}

			//���L�[�_�E���n
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}/*else if($SYSTEM_keydown_r){
				call_chapter nss/sys_backselect.nss;
			}*/
		}

		if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
		Wait(16);
	}

	Wait(100);


	//���I������u�`��v
	CreateSound("bk�T�E���h�P", SE, "sound/se/SE_�V�X�e��_���j���[_�I��.ogg");
	Request("bk�T�E���h�P", Play);

	Fade("bk*/MouseOver/button", 0, 0, null, false);
	Fade("bk�o��/MouseClick/button", 0, 1000, null, true);

	Fade("bk�X�N���[��", 100, 1000, null, true);

	Fade("bkd�w�i�Q", 0, 1000, null, true);

	Fade("bk�w�i�Q", 0, 1000, null, false);
	Fade("bk���Q", 0, 1000, null, false);
	Fade("bk�X�N���[��", 0, 0, null, true);

	Move("bk�w�i�Q", 150, @0, @-576, null, false);
	Fade("bk���Q", 150, 0, null, true);

	if(!$SYSTEM_menu_enable){
//		Fade("bkd�w�i�Q", 300, 1000, null, false);
//		WaitAction("bkd�w�i�Q", null);

		Delete("bk*/*/*");
		Delete("bk*");
	}else if($SYSTEM_menu_enable){
//		Fade("bkd�w�i�Q", 300, 1000, null, false);
//		WaitAction("bkd�w�i�Q", null);

		Delete("bk*/*/*");
		Delete("bk*");
	}

	$SYSTEM_r_button_down=false;
	$SYSTEM_keydown_b=false;
	$SYSTEM_backlog_enable=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}


//���v���Z�X�}�N��
function BackLogProcessOpen()
{
	Fade("@bk�J�[�\��02", 0, 1000, null, false);
	Fade("@bkf�J�[�\��01", 0, 0, null, true);
}
function BackLogProcessStop()
{
	Fade("@bkf�J�[�\��01", 0, 1000, null, false);
	Fade("@bk�J�[�\��02", 0, 0, null, false);
//	SetVolume("@Config1a_BVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}
