//<continuation number="10">
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


scene dm1460sl.nss_MAIN
{
$TEXTBOX_TYPE="";//�\�I
//�������ݒ�Ȃ�


	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	//#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	//
	

}


scene dm1460sl.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);
	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev145�g���ϑz�̑��t.jpg");
	FadeDelete("��w�i", 0, null, true);
	//Fade("@boxH*", 0, 0, null, true);
	DrawTransition("@boxH*", 1000, 1000, 0, 100, null, "cg/data/blind_01_01_0.png", true);



	$express_logS1=#SYSTEM_skip_express;
	$skip_logS1=$SYSTEM_skip;
	$auto_logS1=$SYSTEM_text_auto;

//�I������O�ŃN�C�b�N�Z�[�u�A�I�����ɖ߂������ɂ͂��Ȃ��t���O
$quick_save_once1460=1;

$WHILEIN=1;
while($WHILEIN==1)
{

	if(!$�G�L�X�g���^�C�g��){
		Save(9999);
	}

		PrintBG("��w�i", 30000);
	
		CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev145�g���ϑz�̑��t.jpg");
	
	$ANS_STR="Do Not Give In ";
	$ANS_TXT="��";
		S1SetChoiceBase();
	
	
		FadeDelete("��w�i", 0, null, true);
	

//�����t����͂���i�����F������ȁj
//�������ł̓��͂��ԈႦ���ꍇ�̓o�b�h�G���h��

	S1WaitChoice();


/*
//�{�C�X�^�O�ԍ��s���A�Z���t�ƂQ���͖{�Ԃ̃e�L�X�g����Ă��������i���q
//12/12�{�C�X�^�O�ǉ����܂����i�[�x

�����͊m�F

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6000020a01">
"Is this really okay?"

*/

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_skip_lock=true;


	CreateVOICEEX("vc���t","dm14/6000020a01","���t");
//	MusicStart("vc���t",0,1000,0,1000,null,false);//#SYSTEM_sound_volume_voice
	Fade("@boxH*", 0, 0, null, true);
	DrawTransition("@boxH*", 0, 0, 1000, 100, null, "cg/data/blind_01_01_0.png", true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//<voice name="���t" class="���t" src="voice/dm14/6000020a01">
{SetVolume("vc���t", 0, 1000, null);
Request("vc���t", Play);
Request("vc���t", Disused);
}
�u <VALUE name=$ANS_TXT>�v

//�y���t�z
//<voice name="���t" class="���t" src="voice/dm14/7000010a01">
//"...Don't give in."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//�w<VALUE name=$ANS_NTH>�x


/*
�����͊m�F��̂Q��

����ł����͂���
���������l���悤

*/
	//���I����
	$select_fade=true;
	SetChoice02("This should be fine","Think harder");
	WaitChoice02();

	if($SetChoiceSelect==0){		$WHILEIN=0;}
	else if($SetChoiceSelect==1){	$WHILEIN=1;}

}


	$SYSTEM_skip_lock=false;
	if(#keep_auto_and_skip){
		if($express_logS1){
			#SYSTEM_skip_express=$express_logS1;
		}

		if($skip_logS1){
			$SYSTEM_skip=true;
		}else if($auto_logS1){
			$SYSTEM_text_auto=true;
		}
	}


/*
$select_fade=true;
SetChoice02("����","���s");
WaitChoice02();
if($SetChoiceSelect==0){		$ANS_TXT=$ANS_STR;}
else if($SetChoiceSelect==1){	$ANS_TXT=$ANS_STR+1;}
*/

	if($ANS_TXT==$ANS_STR){	$GameName = "dm1470scr.nss";$�g���I����8=1;}
	else{$GameName = "dm1461.nss";$�g���I����8=0;}

//	ClearFadeAll(1000, true);


	if($�g���I����8==1){
		CreateColorEXadd("�G�F��", 5000, "FFFFFF");
		Fade("�G�F��", 1000, 1000, null, true);
	}else{
	}

}
