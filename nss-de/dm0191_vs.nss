//<continuation number="30">
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


scene dm0191_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";

	if($PreGameName=="dm0190_vs.nss"){
	}else if($PreGameName=="dm0191_vs.nss"){
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


scene dm0191_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm008",0,450,true);//����

	PrintBG("��w�i", 30000);

	//OnBG(10,"bg101011_1_���Z����ʂ�\");
	//FadeBG(0,true);

	CreateTextureSP("�G��", 1310, -512, -302, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 550, 550, Dxl3, false);

	FadeDelete("��w�i", 0, null, true);

//==============================================
//���u�K�[�h����v��I�񂾏ꍇ
//==============================================

	CreateSE("SE01","se�퓬_����_������01");

	CreateStencil("��",0,1024,-600,128,"cg/ev/ev950�@�o�g���ėp�ːia_�l���@.png",false);
	SetAlias("��","��");
	Zoom("��", 0, 1500, 1500, null, true);

	CreateColorSP("��/�@�e", 1420, "000000");
	Position("��", $x1, $y1);
	CreateTextureSP("�G���@", 1410, $x1, $y1, "cg/ev/ev950�@�o�g���ėp�ːia_�l���@.png");
	Zoom("�G���@", 0, 1500, 1500, null, true);
	SetBlur("�G���@", true, 3, 500, 60, false);

	CreateTextureEX("�G���@�w�i", 1400, Center, Middle, "cg/ev/ev950�@�o�g���ėp�ːia_�w�i.jpg");

	MusicStart("SE01",0,700,0,1250,null,false);
	$MovePosX=-30;
	$MovePosY=-340;
	$MoveT=400;
	Move("�G���@", $MoveT, $MovePosX, $MovePosY, Dxl2, false);
	Move("��", $MoveT, $MovePosX, $MovePosY, Dxl2, false);
	Zoom("�G���@", $MoveT, 1000, 1000, Dxl2, false);
	Zoom("��", $MoveT, 1000, 1000, Dxl2, false);

	Wait(180);
	Fade("�G���@�w�i", 800, 1000, null, false);
	Fade("��/�@�e", 1400, 0, null, false);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Ren jumps in front of me when I miss the chance to 
escape&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G�w�i", 10, Center, InBottom, "cg/bg/l/bg201021_0_���C���m�C�Y01_l.jpg");

	CreateSE("SE01a","se�퓬_����_������01");
	MusicStart("SE01a",0,700,0,1500,null,false);
	CreatePlainSP("�G��", 3900);
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

{	Fw("fw�@_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9100020a06">
"&.&.&.Ngh&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9100030a01">
"Ren&, are you okay!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0200_vs.nss"]

}
