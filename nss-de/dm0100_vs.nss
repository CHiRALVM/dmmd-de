//<continuation number="190">
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


scene dm0100_vs.nss_MAIN
{
$HALevel=1;//�V�i���I���̓��Ƀ��x��

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
	#ev010�K��=true;
	#ev010���C���̗l�q=true;
	#bg101051_5_���Z����ʂ藠�H�n06���C���������u=true;

	//�����o��̏���������
	Request("@�G�w�i�K��", UnLock);
	Request("@�G�K������", UnLock);
	Request("@�G�K������������", UnLock);
	Request("@�G�K��", UnLock);
	Request("@�G�K����", UnLock);
	Request("@�G�K���Q", UnLock);
	Request("@�G�Ō�K��", UnLock);
	Request("@�G�K��������", UnLock);
	Request("@�G�K����������", UnLock);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0110_vs.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=1;
}


scene dm0100_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�ʏ�w�i", 10, Center, Middle, "cg/bg/bg101011_3_���Z����ʂ�\.jpg");
	FadeDelete("��w�i", 0, null, true);

	CreateTextureEX("�G���w�i", 20, -512, -280, "cg/bg/m/bg101051_5_���Z����ʂ藠�H�n06���C���������u_m.jpg");

	CreateSE("SEL91","se��_����_���l������ʂ�02L");
	MusicStart("SEL91",2000,700,0,800,null,true);
	CreateSE("SEL92","se��_�K��_�����01L");
	MusicStart("SEL92",2000,400,0,800,null,false);

	Fade("�G���w�i", 600, 1000, null, false);
	Move("�G���w�i", 1800, -256, @0, DxlAuto, true);

	Wait(200);

//�e�F�K���o�ꕪ���ǂݍ���(1/3)
	CreateTextureEX("�G�w�i�K��", 1000, Center, InBottom, "cg/ev/ev010�K��_�w�i.jpg");
	Request("�G�w�i�K��", Lock);
	CreateTextureEX("�G�K������", 1005, Center, InBottom, "cg/ev/ev010�K��_���ʞ���.png");
	Request("�G�K������", Lock);
	CreateTextureEXadd("�G�K������������", 1005, Center, InBottom, "cg/ev/ev010�K��_���ʞ���.png");
	Request("�G�K������������", Lock);
	CreateTextureEX("�G�K��", 1005, Center, InBottom, "cg/ev/ev010�K��_�l���K���̂�.png");
	Request("�G�K��", Lock);
//�����܂Ł�����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Nachdem Mizuki's Silhouette komplett verschwunden ist&,
drehe mich in die Richtung in die jeder rennt&.

Ich hasse Rhyme nicht so sehr wie Mizuki&, aber es interessiert mich nicht wirklich&.

Wenn du Mizuki zum ersten Mal triffst und ueber Rhyme redest&, 
wirst du ihn danach wahrscheinlich hassen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G���w�i");
	CreateTextureSP("�G�ʏ�w�i", 10, Center, Middle, "cg/bg/bg101051_5_���Z����ʂ藠�H�n06���C���������u.jpg");
	FadeDelete("�G��", 500, null, true);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/0000010a06">
"Was ist los?"

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/0000020a01">
"Nichts&. Lass uns weiter gehen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
Ich taetschle Rens Kopf und laufe in die laute Gasse&.

Dann&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, Dxl3);

	CreateStencil("�G�g",1000,center,InBottom,128,"cg/st/st�Z�C_�o��_normal.png",false);
	SetAlias("�G�g","�G�g");
	Move("�G�g", 0, @0, @60, null, true);
	SetShade("�G�g", HEAVY);
	CreateColorEXadd("�G�g/�G�F��", 750, "FFFFFF");

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N01");
	MusicStart("SE01",0,700,0,8000,null,false);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�g/�G�F��", 0, 150, null, true);
	DrawTransition("�G�g/�G�F��", 1000, 0, 200, 1000, null, "cg/data/mosaic_01_00_0.png", false);
	Fade("�G�F��", 300, 950, Axl3, true);

	Wait(500);

	CreateSurfaceEX("�G���ʃT�t", 900,1000,"@�G�ʏ�w�i");
	Fade("�G���ʃT�t", 0, 1000, null, true);
	SetSurface("@�G�g*","�G���ʃT�t");

	Fade("�G�F��", 3000, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
Ploetzlich bin ich in weisses Licht getaucht&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/0000030a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DrawTransition("�G�g/�G�F��", 30000, 200, 500, 1000, null, "cg/data/mosaic_01_00_0.png", false);
	Fade("�G�g/�G�F��", 30000, 400, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Licht erscheint vor mir und ich kann nichts mehr erkennen&.

Langsam nimmt es menschliche Form an und es streckt seinen Arm nach mir aus&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Fade("�G�g/�G�F��", 2500, 0, DxlAuto, false);
	Fade("�G�F��", 2000, 0, DxlAuto, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Seine Fingerspitzen streifen meine Wange - und verschwinden&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/0000040a01">
"Eh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ǂ���ƃ��C���ɌQ����l�X�̊���
	CreateSE("SE91","se��_�K��_����01");
	MusicStart("SE91",1400,700,0,800,Axl3,false);
	CreateSE("SE92","se��_�K��_����02");
	MusicStart("SE92",1400,1000,0,1000,Axl3,false);
	Delete("@�G���ʃT�t");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026b]
Waehrend ich mich frage was gerade passiert ist&, schwaermen ploetzlich  Menschen um mich herum&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 100);
	CreateSE("SEP011","se�l��_����_�͂�01");
	MusicStartSet("SEP011",700,0,1000,null,false);
	CreateSE("SEP012","se�l��_�Ռ�_�@��02");
	MusicStartSet("SEP012",1000,0,1000,null,false);
	CreateSE("SEP013","se�l��_�Ռ�_�]�|01");
	MusicStartSet("SEP013",1000,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "000000");

	CreateProcessEX("�v���Z�X", "LProc_dm0100_vs_01Act");
	Request("�v���Z�X", Start);

	FwPro2("fw���t_�ʏ�_shock",1000,"fw���t_�ʏ�_pinch",1800,"fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026c]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/0000050a01">
"E&, &.&.&.Eh? Wow!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	if($LProc_dm0100_vs_01Act==true){
	Request("�v���Z�X", Stop);
	$LProc_dm2170_01Act=true;
	}else{
	}
	Delete("�G��");
	Delete("�v���Z�X");
	SetVolumeEX("SEP01*", 150, 0, null);

//�e�F�K���o�ꕪ���ǂݍ���(2/3)
	CreateTextureEXadd("�G�K����", 1015, Center, -320, "cg/ev/ev010�K��_�l���K���O.png");
	Request("�G�K����", Lock);
	RhymeDrawSet("�K��",2000,center,InBottom,"cg/ev/ev010�K��_�l���K���̂�.png");
//�����܂Ł�����

	CreateTextureEX("�G���w�i", 100, 450, -1050, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06���C���������u_l.jpg");
	SetBlur("�G���w�i", true, 3, 500, 50, false);
	Zoom("�G���w�i", 1, 3000, 3000, null, true);

	Delete("SEP01*");

	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,1000,0,800,null,false);
	Fade("�G�F��", 30, 0, null, true);
	FadeFFR2("�G���w�i", 0,1000, 180, 0, 0, 60,null, true);
	Fade("�G�F��", 70, 1000, null, true);

	Wait(100);

	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE02",0,1000,0,1200,null,false);
	Fade("�G�F��", 30, 0, null, true);
	FadeFFR2("�G���w�i", 0,1000, 180, 0, 0, 60,null, true);
	Fade("�G�F��", 70, 1000, null, true);

	//Wait(100);

	//Fade("�G�F��", 300, 0, null, true);

//�e�F�K���o�ꕪ���ǂݍ���(3/3)
	CreateTextureEX("�G�K���Q", 1014, Center, -320, "cg/ev/ev010�K��_�l���K��.png");
	Request("�G�K���Q", Lock);
	CreateTextureEX("�G�Ō�K��", 1025, Center, -320, "cg/ev/ev010�K��.jpg");
	Request("�G�Ō�K��", Lock);
	CreateTextureEXadd("�G�K��������", 1100, Center, InBottom, "cg/ev/ev010�K��_���ʞ����O.png");
	Request("�G�K��������", Lock);
	CreateTextureEX("�G�K����������", 1004, Center, InBottom, "cg/ev/ev010�K��_���ʞ����O.png");
	Request("�G�K����������", Lock);
//�����܂Ł�����

	Delete("�G���w�i");
	Delete("�G�ʏ�w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Ich werde von einer aufgeregten Gruppe belagert&. 
Ich denke nicht das ich hier rauskomme&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06���C���������u");
	FadeBG(0,true);

	CreateSE("SE81","se��_�K��_����01");
	MusicStart("SE81",1400,700,0,800,Axl3,false);
	CreateSE("SE82","se��_�K��_����02");
	MusicStart("SE82",1400,1000,0,1000,Axl3,false);

//�K���o��F�����ɃA�b�v
	//CreatePlainSP("�G��", 5000);
	PrintGO("��w�i", 10000);

	DeleteAllSt(0,true);
	//CreateTextureSP("�G�w�i", 100, Center, InBottom, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06_l.jpg");
	//CreateColorSP("�G�w�i", 100, "000000");

	SetVertex("�G�K������*", 512, 1067);
	Zoom("�G�K������", 0, 0, 0, null, true);
	Rotate("�G�K������*", 0, @-30, @0, @0, null,true);

	SetVolumeEX("SE*", 1000, 0, null);
	Delete("�G�F��");
	FadeDelete("��w�i", 500, null, true);

	Request("�G�w�i�K��", UnLock);
	Request("�G�K������", UnLock);
	Request("�G�K������������", UnLock);
	Request("�G�K��", UnLock);
	Request("�G�K����", UnLock);
	Request("�G�K���Q", UnLock);
	Request("�G�Ō�K��", UnLock);
	Request("�G�K��������", UnLock);
	Request("�G�K����������", UnLock);


//�K���o��F�����w������
	Zoom("�G�K������������", 0, 1100, 1100, null, true);
	CreateSE("SE11","se�[��_���C��_����01");
	MusicStart("SE11",0,700,0,1500,null,false);
	Fade("�G�K������", 0, 1000, null, false);
	Fade("�G�K������������", 0, 1000, null, false);
	DrawTransition("�G�K������", 500, 0, 1000, 50, null, "cg/data/zzex_turn_02_00_1 .png", false);
	DrawTransition("�G�K������������", 500, 0, 1000, 50, null, "cg/data/zzex_turn_02_00_1 .png", false);
	Zoom("�G�K������", 200, 990, 990, Dxl3, false);
	Zoom("�G�K������������", 200, 990, 990, Dxl3, false);
	Wait(190);
	Zoom("�G�K������", 300, 1000, 1000, Dxl1, false);
	Zoom("�G�K������������", 300, 1000, 1000, Dxl1, false);
	FadeDelete("�G�K������������", 800, null, true);
	Wait(50);

	Fw("fwm���B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�j�̊����P�z
<voice name="�j�̊����P" class="�j�̊����P" src="voice/dm01/0000060e37">
"Usui&, Usui!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
//�y�j�̊����Q�z
<voice name="�j�̊����Q" class="�j�̊����Q" src="voice/dm01/0000070e38">
"Hier ist sie! Usui!"
*/

//�K���o��F�����w�p�x�ς���ĉK������
	CreateSE("SE21","se�[��_���C��_�����G���J�E���g01");
	MusicStart("SE21",0,700,0,1000,null,false);
	Fade("�G�w�i�K��", 0, 1000, Dxl1, false);
	DrawTransition("�G�w�i�K��", 500, 0, 1000, 1000, Dxl1, "cg/data/circle_17_00_0.png", false);
	Fade("�G�K��������", 500, 500, Dxl1, false);

	Move("�G�w�i�K��", 1000, @0, @200, Dxl1, false);
	Rotate("�G�K������*", 1000, @30, @0, @0, Dxl1,true);
	Wait(200);

//�K���o��F�K������
	CreateSE("SE31","se�[��_���C��_����01");
	MusicStart("SE31",0,700,0,1000,null,false);
	Fade("�G�K��������", 500, 1000, Dxl1, false);
	RhymeDrawFade("�K��");
	Fade("�G�K��", 200, 1000, null, true);
	Fade("�G�K����������", 500, 1000, Dxl3, false);
	Fade("�G�K��������", 500, 0, Dxl1, true);

	Wait(100);

	Move("�G�K��", 1000, @0, @-30, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034a]
Ein grosser Kreis aus Licht schwebt ueber dem Boden und darin ist&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�K���o��F�K����ɃJ�����ړ�
	Move("�G�K��", 2000, @0, -320, AxlDxl, false);
	Move("�G�K������*", 2000, @0, -320, AxlDxl, false);
	Move("�G�w�i�K��", 2000, @0, -320, AxlDxl, true);
	Delete("�G�K������");
	Delete("�G�K��������");

	CoilStartSet();
	Wait(200);

	CreateSE("SE41","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SE42","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SE43","se�[��_���C��_�����G���J�E���g01");

	MusicStart("SE41",0,700,0,1300,null,false);
	CoilStartFade();
	Fade("�G�K����", 300, 1000, Dxl1, false);
	Fade("�G�K���Q", 300, 1000, Dxl1, true);
	MusicStart("SE42",0,700,0,1300,null,false);
	Wait(50);
	Fade("�G�K��*", 1000, 0, Dxl1, false);
	Fade("�G�Ō�K��", 1000, 1000, Dxl1, false);
	Wait(150);
	MusicStart("SE43",0,700,0,1300,null,false);
	Wait(850);
	Delete("�G�K��*");
	Delete("�G�w�i�K*");

/*
	Fw("fwm���B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034b]
//�y�j�̊����P�z
<voice name="�j�̊����P" class="�j�̊����P" src="voice/dm01/0000080e37">
"Usuiii!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	CreateVOICE("�j�̊����P","dm01/0000080e37");
	MusicStart("�j�̊����P",0,1500,200,1000,null,false);

	CreateVOICE("�j�̊����Q","dm01/0000070e38");
	MusicStart("�j�̊����Q",0,1500,-200,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034c]
Der Koerper der Frau aus Licht schwankt leicht&, doch kommt bald zur Ruhe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�K���o��F���̉�ʂɖ߂�
	CreatePlainSP("�G��", 5000);

	CoilIntoDelete();
	Delete("�G�Ō�*");
	Delete("�K��*");
	Delete("�G�w�i*");

	CreateTextureSP("�G�d�u", 1000, -470, -260, "cg/ev/l/ev010���C���̗l�q_l.jpg");
	Move("�G�d�u", 1300, @0, -190, DxlAuto, false);
	FadeDelete("�G��", 1300, null, true);

	CreateSE("SE91","se��_�K��_����01");
	MusicStart("SE91",0,700,0,800,Axl3,false);
	CreateSEEX("SE92","se��_�K��_����02");
	MusicStart("SE92",0,1000,0,1000,Axl3,true);

	SoundPlay("@dm010",0,450,true);//�d�]�o�g��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm01/0000090c06">
"Nun&, es tut mir Leid das ihr alle warten musstet! Rhyme startet jetzt!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Request("�G�d�u", Smoothing);
	Zoom("�G�d�u", 800, 500, 500, DxlAuto, false);
	Move("�G�d�u", 800, -512, -328, DxlAuto, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm01/0000100c06">
"Der erste Kampf heute ist zwischen 'Player' und 'Route 44'!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE92", 2000, 600, null);

	CreateSE("SE81","se��_�K��_����01");
	MusicStart("SE81",0,700,0,800,Axl3,false);
	CreateSE("SE82","se��_�K��_����02");
	MusicStart("SE82",0,1000,0,1000,Axl3,false);

//�������u���F�Z���t�ꏊ�����v

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm01/0000110c06">
"'Player' hat 5 Mal teilgenommen und 3 Mal gewonnen&. Im Gegensatz dazu&,ist das 'Route 44's erster Kampf!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
&.&.&.Das ist Rhyme&.

Ich habe es schon einige Male aus der Ferne gesehen&, aber ich war noch nie so nah 
dran&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Move("�G�d�u", 0, -490, -190, null, true);
	Zoom("�G�d�u", 0, 1000, 1000, null, true);
	FadeDelete("�G��", 300, null, true);

	CreateVOICE("�K��","dm01/0000110c06");
	MusicStart("�K��",0,1800,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
Innerhalb des Lichts erscheint das Symbol und der Schiedsrichter von Rhyme&, Usui&.

Usui hat eine tiefe Stimme&, was nicht ihrem Aussehen entspricht&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("�K��", 300, 0, null);
	Move("�G�d�u", 2000, @0, 0, null, true);


	CreateMovieEX("�G������", 1120, Center, -80, true, false, "dx/mv�t�B�[���h�p�u���b�N_s.ngs");
	Rotate("�G������", 1, 20, @0, @0, null,true);
	SetTone("�G������", KitanoBlue);
	Zoom("�G������", 0, 0, 0, null, true);

	CreateSE("SE01","se����_�R�C��_�^�[�Q�b�g�W�J");
	MusicStart("SE01",0,1000,0,500,null,false);

	Fade("�G������", 0, 500, null, true);
	Zoom("�G������", 300, 1500, 100, Axl3, true);
	Zoom("�G������", 300, 1500, 1500, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0049a]
Waehrend sie das Licht erhellt und mit ihren Armen schaukelt&,
erscheint ein grosser Monitor ueber ihrem Kopf&.

Das Publikum kann den aktuellen Stand des Spieles ueber den Monitor beobachten&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateWindowEX("�G����", 0, 0, 1024, 576, false);
	CreateMaskEX("�G����/�G��", 0, Center, Middle, "cg/mask/ci�X���b�V��_05_00.png", false);
	CreateTextureEX("�G����/�G�g", 2990, Center, Middle, "cg/mask/ci�X���b�V��_05_00z.png");
	Move("�G����/�G*", 0, @-150, @0, null, true);
	CreateTextureEX("�G����/�G��/�G��", 2110, -260, -20, "cg/ev/l/ev010���C���̗l�q_l.jpg");
	Fade("�G����*", 0, 0, null, true);

	CreateWindowEX("�G���E", 0, 0, 1024, 576, false);
	CreateMaskEX("�G���E/�G��", 0, Center, Middle, "cg/mask/ci�X���b�V��_05_01.png", false);
	CreateTextureEX("�G���E/�G�g", 2990, Center, Middle, "cg/mask/ci�X���b�V��_05_01z.png");
	Move("�G���E/�G*", 0, @150, @0, null, true);
	CreateTextureEX("�G���E/�G��/�G��", 2110, -270, 0, "cg/ev/m/ev010���C���̗l�q_m.jpg");
	Fade("�G���E*", 0, 0, null, true);

	Wait(16);

	Fade("�G����/�G�g", 0, 1000, null, true);
	DrawTransition("�G����/�G�g", 500, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", false);
	Fade("�G����/�G��/�G��", 0, 1000, null, true);
	DrawTransition("�G����/�G��/�G��", 500, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", false);

	Fade("�G���E/�G�g", 0, 1000, null, true);
	DrawTransition("�G���E/�G�g", 500, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", false);
	Fade("�G���E/�G��/�G��", 0, 1000, null, true);
	DrawTransition("�G���E/�G��/�G��", 500, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0049c]
Die Teilnehmer stehen bereits auf den beiden Seiten und veraendern die Einstellungen ihres Allmates&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm01/0000120c06">
"Kann der Newcomer die Siegesserie beenden!? Oder&.&.&.!?"

//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm01/0000130c06">
"Okay&, 'Player' hat die Vorbereitung abgeschlossen! 'Route 44'&.&.&. Bist du auch bereit?"

//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm01/0000140c06">
"Beide scheinen bereit zu sein! Nun denn&, lasst uns anfangen!
 SPIEL&.&.&. START!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_���C��_�A���[�g01");
	MusicStart("SE01",0,1200,0,500,null,false);

	WaitKey(300);

	CreateSE("SE82","se��_�K��_����02");
	MusicStart("SE82",0,1000,0,1000,Axl3,false);

	PrintGO("��w�i", 5000);

	CreateTextureSP("�G�w�i", 100, -160, -480, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06���C���������u_l.jpg");

	FadeDelete("��w�i", 500, null, true);

	SetVolumeEX("SE8*", 10000, 0, null);
	SetVolumeEX("SE9*", 10000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
Usui laechelt und hebt ihre Hand mit einer Bewegung&,
die nicht recht zu ihrer Stimme passt&.

Der Monitor strahlt ein weisses Licht aus und projeziert das Kampffeld&.

Das Publikum jubelt und johlt zu gleich&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 300, 0, null);

	CreateTextureEXsub("�G�������t", 4010, Center, Middle, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");
	CreateColorEX("�G�F��", 4000, "FFFFFF");

//�������u���F�ŏ��̓��ɁH�@�Ȃ̂ŏ������߂Ɂv

	Fade("�G�������t", 0, 200, null, true);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Delete("�G�������t");
	CreatePlainEX("�G��", 100);
	Zoom("�G��", 0, 1100, 1100, null, true);
	Fade("�G��", 0, 500, null, true);
	Shake("�G��", 300, 0, 6, 0, 0, 1000, Dxl1, false);
	FadeDelete("�G�F��", 70, null, true);

//�����Ƀ��x���F�O���P
//��������A�Ɠ���
$HALevel=1;
	HAFade(2000, 0,false);
	//���ɃG�t�F�N�g(0)

	SetBlur("�G��", true, 3, 500, 30, false);
	Fade("�G��", 2000, 0, null, false);
	Zoom("�G��", 6000, 1000, 1000, DxlAuto, false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/0000150a01">
"&.&.&.Agh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Ploetzlich spuere ich einen stechenden Kopfschmerz&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Zoom("�G��", 0, 1050, 1050, null, true);
	Fade("�G��", 0, 500, null, true);
	Shake("�G��", 300, 0, 6, 0, 0, 1000, Dxl1, false);

//�����Ƀ��x���F�O
//��������A������Ɠ����ɂ�
	//���ɃG�t�F�N�g(0)
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,false);

	Fade("�G��", 2000, 0, null, false);
	Zoom("�G��", 6000, 1000, 1000, DxlAuto, false);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/0000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
Ich halte mir meine Stirn und mein Blick wandert&.

Was? Nur weil das Publikum so laut ist?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/0000170a06">
"Aoba&, geht es dir gut?"

{	Fw("fw���t_�ʏ�_worry2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/0000180a01">
"&.&.&.Ja&, Alles in Ordnung&. Aber lass uns gehen&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/0000190a06">
"Das waere wohl das Beste&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��2", 7000);
	Delete("�G�w�i");
	Delete("�G��");
	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06���C���������u");
	FadeBG(0,true);
	FadeDelete("�G��2", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Ich draenge mich durch die in den Bann von Rhyme gezogenen Zuschauer und 
schlaengle mich aus dem Haufen von Schaulustigen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G�w�i", 100, -1190, -1600, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06���C���������u_l.jpg");
	Zoom("�G�w�i", 0, 3000, 3000, null, true);
	Request("�G�w�i", Smoothing);

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 600, @0, -1656, DxlAuto, false);
	Fade("�G�w�i", 600, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Ich lehne mich an eine nahegelegene Wand&, atme aus und starre auf den Boden&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0110_vs.nss"]

}
