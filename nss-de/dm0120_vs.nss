//<continuation number="90">
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


scene dm0120_vs.nss_MAIN
{
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
	$GameName = "dm0130.nss";

}


scene dm0120_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);//�o�g��

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg101011_3_���Z����ʂ�\");
	FadeBG(0,true);

	CreateTextureSP("�G���w�i", 20, -500, -520, "cg/bg/m/bg101011_3_���Z����ʂ�\_m.jpg");
	Move("�G���w�i", 450, -300, @0, Dxl3, false);

	Delete("��w�i");
	DrawDelete("�G�F��", 300, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Ich entscheide mich weiter zur Aoyagi Strasse zu gehen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G���w�i", 450, -200, @0, Dxl3, false);

//���o�C�N���}���ɋߕt���Ă���
	CreateSE("SE01","se�敨_�����O�o�C�N_���s01L");
	MusicStart("SE01",2000,1000,0,800,Axl3,true);
	SetFrequency("SE01", 4000, 1400, null);

	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�G�w�i", 100, Center, 200, "cg/ef/efbg����001.jpg");
	Zoom("�G�w�i", 0, 1200, 2000, null, true);

	CreateMovieEX("�G������", 1000, Center, Middle, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G������", 0, 4000, 3000, null, true);
	Fade("�G������", 0, 400, null, true);

	CreateColorSP("�G�F��", 1100, "FFFFFF");

	CreateTextureSPadd("�G���Ɩ�", 1100, Center, Middle, "cg/data/circle_04_00_1.png");
	MoveFFP1("@�G���Ɩ�",100);
	Zoom("�G���Ɩ�", 100000, 4000, 4000, null, false);
	SetBlur("�G���Ɩ�", true, 2, 200, 50, false);

	Wait(400);

	FadeDelete("�G����", 150, null, true);
	Wait(500);
	FadeDelete("�G�F��", 2000, null, false);
	DrawTransition("�G�F��", 2000, 1000, 0, 100, Axl3, "cg/data/circle_04_00_1.png", true);

	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/2000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 5000, "000000");
	Zoom("�G���Ɩ�", 300, 4000, 4000, null, false);
	Fade("�G�F��", 300, 1000, Axl3, true);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 300, 0, null);

//���o�C�N�̋}�u���[�L���A���t�]�|
	CreateSE("SE02","se�敨_�����O�o�C�N_�}�u���[�L01");
	MusicStart("SE02",0,1200,0,1000,null,false);

	Delete("�G���Ɩ�");
	Delete("�G������");
	Delete("�G�w�i");
	MoveFFP1stop();

	CreateTextureSP("�G���w�i", 20, -660, -2165, "cg/bg/l/bg101011_3_���Z����ʂ�\_l.jpg");
	Zoom("�G���w�i", 0, 3000, 3000, null, true);
//	Request("�G���w�i", Smoothing);

	CreateSE("SE03","se�l��_�Ռ�_�]�|01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Delete("�G�F��");
	BGPlainShake(50,300,0,80,0,0,1000,null,true);

	Wait(500);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/2000020a01">
"&.&.&.Egh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Ich wurde fast von einem Motorrad ueberfahren&, als ich mich an der Ecke umdrehte&.

Ich rolle mich schnell zur Seite&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���o�C�N�̃A�C�h�����A�~���N���o�C�N�ɏ�����܂ܒn�ʂɕБ������i�u�[�c�j
	CreateSE("SE01","se�敨_�����o�C�N_�A�C�h�����O01L");
	MusicStart("SE01",2000,700,0,800,null,true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/2000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G���P�ԕ�U", 1100, -252, -207, "cg/ev/x/ev920�~���N�Ƒ��t�o�C�N_�l��_�O�֕���_xm.png");
	Request("�G���P�ԕ�U", Smoothing);

	CreateTextureEX("�G���P��", 1100, -252, -207, "cg/ev/x/ev920�~���N�Ƒ��t�o�C�N_�l��_�O�֕���_xm.png");
	Request("�G���P��", Smoothing);

	SetShade("�G���P��", SEMIHEAVY);

	CreateTextureSP("�G�w�i��", 15, 0, -520, "cg/bg/m/bg101011_3_���Z����ʂ�\_m.jpg");

/*
	Move("�G�w�i��", 2000, @0, @60, Dxl2, false);

	Move("�G���P��*", 2000, @0, @60, Dxl2, false);
	Fade("�G���P��*", 800, 1000, null, false);

	Move("�G���w�i", 2000, @0, @60, Dxl2, false);
	Fade("�G���w�i", 800, 0, null, true);
*/

//�������u���F���͕������܂����v

	CreateProcessEX("�v���Z�X", "LProc_dm0120_vs_01Act");
	Request("�v���Z�X", Start);

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Ich schaue zum Motorrad auf&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G������", 3110, Center, 90, "cg/fu/fu�~���N_�ʏ�_serious.png");
	Request("�G������", Smoothing);
	Zoom("�G������", 0, 3000, 3000, null, true);
	DrawTransition("�G������", 1, 0, 300, 100, null, "cg/data/slide_05_01_1.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Der Mann macht sich keinen Spass daraus&.<?>
{
	if($LProc_dm0120_vs_01Act==true){
	}else{
	Request("�v���Z�X", Stop);
	CreatePlainSP("�G��", 9900);
	Fade("@�G���w�i", 0, 0, null, true);
	Move("@�G�w�i��", 0, @0, -460, null, false);
	Move("@�G���P��*", 0, @0, -147, null, false);
	SetShade("@�G�w�i��", SEMIHEAVY);
	SetShade("@�G���P��*", null);
	Delete("�G��");
	Delete("@LProc_dm0120_vs_01ActEFP");
	FadeDelete("�G��", 300, null, true);
	$LProc_dm0120_vs_01Act=true;
	}
	Delete("�v���Z�X");
	SetVolumeEX("SE*", 150, 2, null);
	CreateSE("SE02","se�l��_�S��_�ۓ�01");
	MusicStart("SE02",0,1200,0,1000,null,false);
	FadeFFR("�G������", 0,1000, 100, 0, 0, 30,null, true);
	Wait(50);
	Delete("�G������");
}
 Seine Augen sind auf mich fokusiert&.

{
	SetVolumeEX("SE01", 4000, 700, null);
}
&.&.&.Als ich ihm in die Augen sehe&, jagt eine Kaelte durch meinen Koerper&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, null);
	CreateSE("SE01","se�敨_�����O�o�C�N_���苎��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G���P��*", 600, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0027]
Der Mann sagt nichts und rasst mit seinem Motorrad davon&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se�퓬_����_����01a");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateTextureEX("�G�w�i", 2110, Center, -156, "cg/bg/bg101011_3_���Z����ʂ�\.jpg");
	Move("�G�w�i", 400, @0, -90, Dxl3, false);
	Fade("�G�w�i", 200, 1000, null, true);

	CreateSE("SE04","se��_����_���l������ʂ�02L");
	MusicStart("SE04",6000,700,0,1000,null,true);

{	Fw("fw���t_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/2000040a01">
"! &.&.&.Hey!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
Ich stehe schnell auf&, doch es ist zu spaet&.

{	SetVolume("SE01", 3000, 0, null);}
Das Motorrad heult auf und rast die Strasse in einem Augenblick herunter&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_hard");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/2000050a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Dieser Bastard&.&.&.!

Er hat fast einen Verkehrsunfall verursacht und hat sich nicht mal dafuer entschuldigt&, 
dass er fast jemanden ueberfahren haette!

Es ist in dieser Stadt nicht unueblich&, aber ich bin trotzdem wuetend&.

Mich schuettelt es bei dem Gedanken&, von diesem Typen ueberfahren zu werden&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/2000060a06">
"Aoba&, geht es dir gut?"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/2000070a01">
"Ja&, gerade noch&. Aber das war knapp&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/2000080a06">
"Es ist eine Erleichterung das es dir gut geht&."

{	Fw("fw���t_�ʏ�_sigh3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/2000090a01">
"Ja&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Rens besorgte Worte beruhigen mich und meine Wut schwindet dahin&.

Tja&, da ich sicher bin&, sollte Alles in Ordnung sein&.&.&.

Meine Stimmung bessert sich und ich gehe nach Hause&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 1250, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm0130.nss"]

}
