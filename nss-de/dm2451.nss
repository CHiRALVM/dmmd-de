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


scene dm2451.nss_MAIN
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
	$GameName = "dm2452ed.nss";

}


scene dm2451.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//cono�u���o�FBGM��قǒ����v


	PrintBG("��w�i", 30000);

//	OnBG(10,"bg101011_1_���Z����ʂ�\");
//	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);
CreateColor("under_color",0,0,0,1024,576,BLACK);
SetAlias("under_color","under_color");


//�����o�F����I�������s�F���܂݂�o�b�h

//�����o�F��ʐ^���ÂȂ܂�


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
�@The world<WAIT time=1000>�@I<WAIT time=1000>�@wish for


�@T{Wait(200);}h{Wait(200);}e{Wait(200);} w{Wait(200);}o{Wait(200);}r{Wait(200);}l{Wait(200);}d{Wait(1000);} I{Wait(1000);} r{Wait(200);}e{Wait(200);}a{Wait(200);}l{Wait(200);}l{Wait(200);}y{Wait(1000);} w{Wait(600);}i{Wait(600);}s{Wait(600);}h{Wait(600);} f{Wait(600);}o{Wait(600);}r


//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/5100010a03">
"&.&.&.The world&, I really&, wish for&, is&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm2452ed.nss"]


	ClearFadeAll(1000, true);

}
