//<continuation number="40">
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


scene dm0192_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";

	if($PreGameName=="dm0190_vs.nss"){
	}else if($PreGameName=="dm0192_vs.nss"){
	}else{
	CreateTxtinEffect("�@",4000);
	CreateTxtinEffect("�m�C�Y",4000);
	RMScaningSet();
	RMScaningCSet("���t");
	RMDefaultStatusSet();
	RMDControlSet();
	}

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
	$GameName = "dm0200_vs.nss";

}


scene dm0192_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm008",0,450,true);//����

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G��", 1310, -512, -302, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 550, 550, Dxl3, false);

	FadeDelete("��w�i", 0, null, true);

//==============================================
//���u�@��݂��v��I�񂾏ꍇ
//==============================================

	CreateSE("SE01a","se�퓬_����_������01");
	MusicStart("SE01a",0,700,0,1500,null,false);
	CreatePlainSP("�G��", 3900);
	SetBlur("�G��", true, 3, 500, 80, false);
	Zoom("�G��", 300, 1500, 1500, Axl3, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I move my body immediately and jump in front of Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

{	Fw("fw�@_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9200010a06">
"&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 10, Center, InBottom, "cg/bg/l/bg201021_0_���C���m�C�Y01_l.jpg");

	CreateSE("SE01a","se�퓬_����_������01");
	MusicStart("SE01a",0,700,0,1500,null,false);
	//CreatePlainSP("�G��", 3900);
	Zoom("�G��", 300, 5000, 5000, Axl3, false);
	Wait(200);
	Rotate("�G��", 300, @0, @0, 1080, Dxl3,false);
	Wait(200);

//���{�J�[���I�ӂ���΂����Q�l�B
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,850,0,1200,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);

	Fade("�G�w�i", 0, 1000, null, true);

	Delete("�G��");
	Delete("��");
	Delete("�G��*");
	Delete("�G��");
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE02","se�l��_�Ռ�_�]�|01");
	MusicStart("SE02",0,700,0,800,null,false);
	BGPlainShake(50,300,0,80,0,0,1000,null,true);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9200020a01">
"Gh&.&.&. Guah&.&.&."

{	Fw("fw�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9200030a06">
"Alles in Ordnung&, Aoba?"

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9200040a01">
"Es geht mir gut&.&.&. uhh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0200_vs.nss"]

}


/*
while(1){

	CreateTextureSP("�G�w�i��", 1100, Center, Middle, "cg/ev/ev950�@�o�g���ėp�h��y����01�z.jpg");

	WaitKey();

	CreateTextureSPadd("�G����", 1200, -211, -287, "cg/ef/efv��������_�@_�c_���t03b.png");
	Rotate("�G����", 0, @0, -50, @0, null,true);

	CreateTextureSPover("�G�w�i��", 1110, Center, Middle, "cg/ev/ev950�@�o�g���ėp�h��y����02�z.jpg");
	Zoom("�G�w�i��", 0, 1010, 1010, null, true);
	Wait(16);
	//Zoom("�G����", 10000, 10000, 10000, null, false);
	//FadeDelete("�G����", 200, null, false);
	//FadeDelete("�G�w�i��", 500, null, true);

while(1){

	Move("�G����", 0, -280, -287, null, true);
	Zoom("�G����", 0, 1000, 1000, null, true);
	Fade("�G����", 0, 1000, null, true);

	Zoom("�G����", 200, 1000, 3000, null, false);
	FadeFFR("�G����", 0,1000, 100, 0, 0, 30, null, false);
	Fade("�G�w�i��", 0, 1000, null, true);
	Wait(16);
	Fade("�G����", 20, 80, null, false);
	Fade("�G�w�i��", 100, 0, null, false);

	Wait(150);

}

	WaitKey();

}
*/