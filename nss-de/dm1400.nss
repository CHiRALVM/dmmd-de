//<continuation number="20">
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


scene dm1400.nss_MAIN
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

	//����q���o�Ɏg�p�����t���O��O�̂��߃��Z�b�g
	$MugenKairouProcFirst=false;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1410.nss";

}


scene dm1400.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i",19000);
	SoundPlay("@dm017",0,450,true);

	if($DM1390C==1&&$PreGameName == "dm1390.nss"){
	}else{
	CreateCamera("�b", 0, 0, 15000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G���w�i��", 0, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i��", 0, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i�E", 0, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	CreateTextureSP("�b/�G���w�i���ʉ�", -2500, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i���ʍ�", -2500, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i���ʉE", -2500, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	CreateTextureSP("�b/�G���w�i����ʉ�", -11250, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i����ʍ�", -11250, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i����ʉE", -11250, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	Request("�b*", Lock);
	Request("�b/�G*", Lock);
	MoveCamera("�b", 0, @0, @0, 1000, AxlDxl, true);
	$DM1390C=1;//�����Ή��p
	}

	Move("@�b/�G���w�i��", 0, 374, @0, DxlAuto, false);
	Move("@�b/�G���w�i�E", 0, 514, @0, DxlAuto, true);
	Move("@�b/�G���w�i���ʍ�", 0, 374, @0, DxlAuto, false);
	Move("@�b/�G���w�i���ʉE", 0, 514, @0, DxlAuto, true);
	MoveCamera("@�b", 0, @0, @0, 3500, AxlDxl, true);

	Wait(16);

	FadeDelete("��w�i", 0, null, true);

	CreateColorSP("�G�F�ĉ��n", 0, "000000");

	CreateSE("SE01","se����_�h�A��q_���J������01");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Move("@�b/�G���w�i��", 600, @-140, @0, DxlAuto, false);
	Move("@�b/�G���w�i�E", 600, @140, @0, DxlAuto, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
As if to make sure I'm not caught by the tattoo&, I run over
to a sliding door and violently jerk it open&.

The same room comes up again&.

From behind me the tattoo is pursuing me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/0000010a01">
"What is up with this place&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SEM01","se�l��_����_����02");
	MusicStartSet("SEM01",700,0,1200,null,false);
	CreateSE("SEM02","se����_�h�A��q_���J������01");
	MusicStartSet("SEM02",1200,0,1000,null,false);
	MugenKairou(1500,500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
I run over frantically and open another door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F��𑖂�A��q���K���I�ƊJ����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
It's the same room again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//$MugenKairouMoveT=1000;
	//$MugenKairouOpenT=500;
	//$MugenKairouWait="true";

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(1250,500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Again&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(1000,500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Again!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SEM01","se�l��_����_����02");
	MusicStartSet("SEM01",700,0,1300,null,false);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(750,500,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(750,500,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(750,500,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(750,500,true);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/0000020a01">
"Ha&, Hah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(600,500,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou(600,500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
How long will this go on for!?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreateSE("SEM01","se�l��_����_����02");
	MusicStartSet("SEM01",700,0,1500,null,false);

	$MugenKairouMoveAllT = 200;
	$MugenKairouOpenAllT = 200;

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	CreateSE("SEM01","se�l��_����_����02");
	MusicStartSet("SEM01",700,0,1750,null,false);

	$MugenKairouMoveAllT = 100;
	$MugenKairouOpenAllT = 100;

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	CreateSE("SEM01","se�l��_����_����02");
	MusicStartSet("SEM01",700,0,1800,null,false);

	$MugenKairouMoveAllT = 100;
	$MugenKairouOpenAllT = 100;

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//���r�d�F��𑖂�A��q���K���I�ƊJ����
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	CreateSE("SEM01","se�l��_����_����02");
	MusicStartSet("SEM01",700,0,2000,null,false);

	$MugenKairouMoveAllT = 50;
	$MugenKairouOpenAllT = 50;

	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	$MugenKairouMoveAllT = 0;
	$MugenKairouOpenAllT = 40;

	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);


	CreateSE("SE11","se�l��_����_����02");
	MusicStart("SE11",0,700,0,1000,null,false);
	SetFrequency("SE11", 3000, 800, null);
	MoveCamera("@�b", 3000, @0, @0, 14000, DxlAuto, true);
	SetVolumeEX("SE11", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
No matter what I do&, it's always the same&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F��𑖂�A��q���K���I�ƊJ����

//�����t�@�C��["dm1410.nss"]

}
