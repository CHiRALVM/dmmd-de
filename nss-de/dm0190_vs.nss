//<continuation number="590">
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


scene dm0190_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";

	CreateTxtinEffect("�@",4000);
	CreateTxtinEffect("�m�C�Y",4000);
	RMScaningSet();
	RMScaningCSet("���t");
	RMDefaultStatusSet();
	RMDControlSet();

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
	#bg201011_0_���C���p�u���b�N�t�B�[���h=true;
	#bg201012_0_���C���p�u���b�N�t�B�[���h=true;
	#bg201021_0_���C���m�C�Y01=true;
	#bg201022_0_���C���m�C�Y02=true;
	#ev900���C���ΐ푓�tVS�E�T�M��=true;

	//���Q��ڈȍ~�̃��[�r�[�͂����Ƃ΂���
	#dm0190_vs_Movie=true;

	//�R�m�^�r�n�����S����
	Delete0190moji();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($START0010==1){	$GameName = "dm0190sl.nss";
	}else {		$GameName = "dm0191_vs.nss";
	}

}


scene dm0190_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);
	CreateColorSPadd("�G�F��", 15000, "FFFFFF");

	CreateMovieSP("�G������", 20, Center, Middle, true, false, "dx/mv�t�B�[���h�p�u���b�N.ngs");
	CreateTextureSP("�G���w�i", 10, Center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	CreateSurfaceEX("�G���ʃT�t", 1000,1000,"@�G������");
	SetSurface("�G���w�i","�G���ʃT�t");
	Fade("�G���ʃT�t", 0, 1000, null, true);

	Zoom("�G���ʃT�t", 0, 3000, 3000, null, true);
	Move("�G���ʃT�t", 0, @0, @-560, null, true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 0, null, true);
	FadeDelete("�G�F��", 3000, null, true);

	Create0190moji();

	Wait(500);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024b]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000060a01">
"What is this place&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm010",0,450,true);//�d�]�o�g��
	CreateProcessEX("�v���Z�X", "Proc_dm0190_vs_01Act");
	Request("�v���Z�X", Start);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
It's&.&.&.

It's almost like I've been sucked into a game&.

The wire-frame floor emits light and continues on forever&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Request("�v���Z�X", Stop);

	if($Proc_dm0190_vs_01Act==true){
	}else{
	CreatePlainSP("�G��", 10000);
	Move("@�G���ʃT�t", 0, @0, 0, DxlAuto, true);
	Zoom("@�G���ʃT�t", 0, 1000, 1000, null, true);
	FadeDelete("�G��", 500, null, true);
	}
	$Proc_dm0190_vs_01Act=false;
	Delete("�v���Z�X");

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033a]
//�y�A�i�E���X�z
<voice name="�A�i�E���X" class="�A�i�E���X" src="voice/dm01/9000070e10">
"Configuring Rhyme field settings&. Configuring Rhyme field settings&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
*/

	CreateSoundAkk("�A�i�E���X", "voice/dm01/9000070e10");//�u���C���t�B�[���h�A�Z�b�e�B���O���B
	SoundEffect("�A�i�E���X","CONCERTHALL");
	MusicStart("�A�i�E���X",0,2000,0,1000,null,false);

	Wait(2000);

{	Fw("fw���t_�ʏ�_worry4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033b]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000080a01">
"Rhyme&.&.&. That kind of Rhyme!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("�A�i�E���X", 300, 0, null);

	CreatePlainSP("�G��", 5000);

	Zoom("�G���ʃT�t", 0, 3000, 3000, null, true);
	Move("�G���ʃT�t", 0, @0, -560, null, true);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateTextureEXover("�G��/�G�����G", 2950, Center, -340, "cg/st/x/st�@_�ʏ�_normal_m����01.png");
	Position("@�G��/�G�����G", $x1, $y1);

	CreateStencil("�G��/�G�����O",0,$x1,$y1,128,"cg/st/x/st�@_�ʏ�_normal_m����01.png",false);
	SetShade("�G��/�G�����O", HEAVY);
	SetAlias("�G��/�G�����O","�G��/�G�����O");
	CreateColorEXadd("�G��/�G�����O/�G�F��", 2800, "00CCFF");

	CreateStencil("�G��/�G����",0,$x1,$y1,128,"cg/st/x/st�@_�ʏ�_normal_m����01.png",false);
	SetAlias("�G��/�G����","�G��/�G����");
	CreateColorEXadd("�G��/�G����/�G�F��", 2810, "FFFFFF");

	Wait(6);
$SYSTEM_full_scene_update=true;
	Move("�G��", 0, @0, 576, null, true);

	FadeDelete("�G��", 300, null, true);

	Fade("�G��/�G�����O/�G�F��", 0, 900, null, true);
	Fade("�G��/�G����/�G�F��", 0, 900, null, true);

	CreateSE("SE01","se����_�R�C��_�Q�[�W���܂�05L");
	MusicStart("SE01",0,700,0,500,null,true);

	Shake("�G��", 2000, 10, 100, 0, 0, 1000, null, false);
	Fade("�G��/�G�����G", 2000, 1000, null, false);
	Move("�G��", 2000, @0, 0, null, true);
$SYSTEM_full_scene_update=false;
	SetVolumeEX("SE01", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
As I continue to look around&, the space before me shines 
pale blue&.

The shape of a person begins to form&, starting from their 
feet&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G��");

	Zoom("�G���ʃT�t", 0, 1000, 1000, null, true);
	Move("�G���ʃT�t", 0, 0, 0, null, true);

	FadeDelete("�G��", 300, null, true);

	CoilStartSet();
	St("C",1740, @0,@0,"st�@_�ʏ�_normal");
	Position($C_��, $x1, $y1);
	RhymeDrawSet("�@�O���l�^",1750,$x1,$y1,"cg/st/st�@_�ʏ�_normal.png");
	CreateSE("SE01a","se�[��_���C��_����01");

	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("�@�O���l�^");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0037]
The sight of the person that forms in front of me almost 
causes me to fall backwards&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	St("C",1740, @0,@0,"bu�@_�ʏ�_normal");
	FadeSt("C",0,true);
	Zoom("@�G���ʃT�t", 0, 1500, 1500, null, true);

	Delete("�G��");
	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000090a01">
"Ren!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000100a06">
"Aoba&, are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000110a01">
"What&, what just happened? And why do you look like that?"

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000120a06">
"It seems that Allmates are reflected in their online mode
 here&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000130a01">
"Isn't online mode used mainly in Rhyme? I've only seen you in that form on the setting screen&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000140a01">
"And the announcement earlier said something about
 Rhyme&.&.&."

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000150a06">
"Looks like it&. Only&, our present location is the same as
 before coming here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�A�i�E���X�z
<voice name="�A�i�E���X" class="�A�i�E���X" src="voice/dm01/9000160e10">
"Rhyme field set-up completed&. Developing field&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/

	CreateSoundAkk("�A�i�E���X", "voice/dm01/9000160e10");//�u���C���t�B�[���h�A�Z�b�e�B���O���B
	SoundEffect("�A�i�E���X","CONCERTHALL");
	MusicStart("�A�i�E���X",0,2000,0,1000,null,false);

	$SETime = RemainTime("�A�i�E���X");
	Wait($SETime);

	SetVolumeEX("�A�i�E���X", 300, 0, null);

	CreateSE("SE01","se�[��_���C��_�A���[�g01");
	MusicStart("SE01",0,700,0,500,null,false);

	SetVolumeEX("@dm*", 1250, 0, null);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 1000, 1000, Axl1, true);

	Wait(2000);

	Delete("�@�O��*");
	Delete("@�G���ʃT�t");
	DeleteAllSt(0,true);

	CreateMovieSPvol("�G������", 4900, Center, Middle, false, false, "dx/mv�t�B�[���h�ω��m�C�Y.ngs",750);
	//SetAlias("�G������","�G������");

	FadeDelete("�G�F��", 300, null, true);
	MovieSkipPlay("@�G������","dm0190_vs_Movie");
/*

	if(#dm0190_vs_Movie==true){
	$SETime = RemainTime("�G������");
	WaitKey($SETime);
	Request("�G������", Stop);
	}else{
	WaitPlay("�G������", null);
	}
	#dm0190_vs_Movie=true;
*/
	OnBG(10,"bg201021_0_���C���m�C�Y01");
	Move("@OnBG*", 0, @0, -576, null, true);
	FadeBG(0,true);

	Request("�G������", Stop);
	FadeDelete("�G������", 500, null, true);

//�������u���F�@�͍����t���o�Ă���܂ł͕\��ς��Ȃ��悤�ɂ��Ă��܂��v

	Fw("fw�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000170a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE01a","se�퓬_����_������01");
	MusicStart("SE01a",0,700,0,1500,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|01");
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000180a01">
"Gah!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
Ren pushes me away and I roll onto the floor while a 
fierce wind goes over my head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000190a01">
"What was that&.&.&.!?"

{	St("C",740, @0,@0,"st�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000200a06">
"Aoba&, this is a public Rhyme field&. It seems we were
 forcibly dragged into Rhyme&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000210a01">
"What!? Is that even&.&.&."

{	St("C",740, @0,@0,"st�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000220a06">
"Aoba&, something's coming&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateTextureEX("�G��", 1120, 807, 1222, "cg/ev/l/ev900���C���ΐ푓�tVS�E�T�M��_�A�b�v_l.jpg");
	Zoom("�G��", 0, 3000, 3000, null, true);
	Rotate("�G��", 0, @0, @0, -17, null,true);
	CreateTextureEXsub("�G���e��", 1200, 807, 1222, "cg/ev/ev900���C���ΐ푓�tVS�E�T�M��_�A�b�v.jpg");
	Zoom("�G���e��", 0, 6000, 6000, null, true);
	Rotate("�G���e��", 0, @0, @0, -17, null,true);

	CreateSE("SE01","se�[��_����_�m�C�Y01L");
	MusicStart("SE01",0,700,0,2000,null,true);
	FadeFFR3("�G��", 0,1000, 150, 0, 0, 50,null, false);
	FadeFFR2("�G���e��", 0,1000, 150, 0, 0, 50,null, true);
	Delete("�G���e��");
	Fade("�G��", 0, 0, null, true);
	SetVolumeEX("SE01", 0, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0066]
I follow Ren's line of sight and what I see shocks me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Zoom("�G��", 0, 1000, 1000, null, true);
	Rotate("�G��", 0, @0, @0, 0, null,true);
	Move("�G��", 0, -370, -170, null, true);
	Fade("�G��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0067]
A rabbit's head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	St("C",740, @0,@0,"st�E�T�M��_�ʏ�_normal");
	FadeSt("C",0,true);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068]
&.&.&.A person wearing a rabbit head stands there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000230a01">
"Does this mean Rhyme started already&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���g�ݍ��݁F�������o�v
//����܂����i���q
	//�Ǎ��A�z�u�����Ɉړ�


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�����������I�Ȑ��ς�
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000240a03">
//�u�c�c�R�m�^�r�n�v
{Start0190moji01("�u ...This time�v","voice/dm01/9000240a03");}<BR>

{Show0190moji01();}

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Delete0190moji01();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�����������I�Ȑ��ς�
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000250a03">
//�u�R�m�^�r�n�A�I�z�V�C�^�_�L���Ɍ��h�v
{Start0190moji02("�u This time, it is such an honor.�v","voice/dm01/9000250a03");}<BR>

{Show0190moji02();}

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete0190moji02();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�����������I�Ȑ��ς�
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000260a03">
//�u�\���f�n�A�y�V�C���[�ރ��n�����E�v
{Start0190moji03("�u So let's have a fun game, shall we?�v","voice/dm01/9000260a03");}<BR>

{Show0190moji03();}

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Delete0190moji03();

//���r�d�F�T�C����
	CreateSE("SE01","se�[��_���C��_�A���[�g01");
	MusicStart("SE01",0,700,0,500,null,false);

//�������u���F�퓬�ȁA�Ȃ��c�c�v
	SoundPlay("@dm008",0,450,true);//����

	CreateTextureEX("�G��O", 1130, 0, 0, "cg/ev/l/ev900���C���ΐ푓�tVS�E�T�M��_l.jpg");
	Move("�G��O", 500, -720, -330, Dxl2, false);
	Fade("�G��O", 500, 1000, null, true);

{	DeleteFw();}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000270a06">
"Aoba&, it's coming&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000280a01">
"Coming!? What should I&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 4990, "000000");
	DrawTransition("�G�F��", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreatePlainSP("�G��", 5000);
	CreateColorSP("�G�F��", 4990, "000000");

	CreateTextureEX("�G���w�i", 2020, Center, InBottom, "cg/bg/l/bg201021_0_���C���m�C�Y01_l.jpg");
	Zoom("�G���w�i", 0, 1500, 1500, null, true);
	Fade("�G���w�i", 0, 1000, null, true);

//�E�T�M�u���b�N�ό`�f�ޒ�`���������火

//�ό`��̃E�T�M
	CreateTextureEX("�G���e", 2750, Center, Middle, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png");
//�E�T�M�̃}�X�N
	Position("@�G���e", $x1, $y1);
	CreateStencil("��",0,$x1,$y1,128,"cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png",false);
	SetAlias("��","��");

//��������u���b�N
	CreateTextureSP("�G���e�l�p", 2755, Center, Middle, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm.png");
	Request("�G���e�l�p", Smoothing);
	Zoom("�G���e�l�p", 0, 800, 800, null, true);
//��������u���b�N������
	CreateTextureEXadd("��/�G���e�l�p��", 2760, Center, Middle, "cg/st/x/stAM�E�T�M���h�L_�ʏ�_normal_xm����.png");
	Request("��/�G���e�l�p��", Smoothing);
	Zoom("��/�G���e�l�p��", 0, 800, 800, null, true);

//�ό`���̉�
	CreateTextureEX("�G���e����", 2760, 340, 200, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���̂�01.png");
	CreateTextureEX("�G���e�E��", 2760, 600, 180, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���̂�02.png");

//�r�d�n�ʂɂ�����u���b�N��
	CreateSE("SE01","se����_�O���X_�e��01");
	SoundEffect("SE01","SEWERPIPE");

//�r�d�ό`���̉�
	CreateSEEX("SE02","se�퓬_���K�C_�`���[�W01");

//�r�d�ό`�����A�R�~�J���ŗ���
	CreateSE("SE03","se�[��_�R�~�J��_�{����02");

//�E�T�M�u���b�N�ό`�f�ޒ�`�������܂Ł�

	Delete("�G��");
	DrawDelete("�G�F��", 150, 100, null, "slide_01_02_1", true);

//��������E�T�M�u���b�N
	Move("�G���e�l�p", 1000, @0, 250, null, false);
	Move("��/�G���e�l�p��", 1000, @0, 250, null, false);
	Rotate("�G���e�l�p*", 1000, @0, @0, 1080, null,false);
	Rotate("��/�G���e�l�p��", 1000, @0, @0, 1080, null,false);
	Move("�G���w�i", 1000, @0, -2304, null, true);

//�n�ʂ��璵�˂�E�T�M�u���b�N
	MusicStart("SE01",0,700,0,1750,null,false);
	Move("�G���e�l�p*", 50, @0, 220, null, false);
	Move("��/�G���e�l�p��", 50, @0, 220, null, true);

	MusicStart("SE02",0,600,0,100,null,true);
	SetFrequency("SE02", 12000, 300, Dxl3);
	Fade("��/�G���e�l�p��", 2000, 1000, null, false);

	Move("��/�G���e�l�p��", 6000, @0, 180, null, false);
	Move("�G���e�l�p*", 6000, @0, 180, null, false);
	Wait(2000);
	Delete("�G���e�l�p");

	Zoom("��/�G���e�l�p��", 7000, 1400, 3000, AxlDxl, false);
	Wait(2400);
	SetVolumeEX("SE02", 600, 0, Dxl3);
	Wait(100);
	MusicStart("SE03",0,700,0,1000,null,false);
	Zoom("��/�G���e�l�p��", 300, 5000, 10000, null, true);
	Fade("�G���e", 0, 1000, null, true);
	FadeDelete("��/�G���e�l�p��", 200, null, false);

	Wait(80);

//�����|������
	Move("�G���e����", 600, 310, 190, Dxl3, false);
	Move("�G���e�E��", 600, 630, 170, Dxl3, false);
	Fade("�G���e����", 300, 1000, null, false);
	Fade("�G���e�E��", 300, 1000, null, true);

	Fade("�G���e����", 300, 0, null, false);
	Fade("�G���e�E��", 300, 0, null, true);

	//CreateTextureEX("�G���w�i", 2020, Center, -2304, "cg/bg/l/bg201021_0_���C���m�C�Y01_l.jpg");
	//Zoom("�G���w�i", 0, 1500, 1500, null, true);
	//Fade("�G���w�i", 0, 1000, null, true);

	CreateWindowEX("�G����", 0, 0, 1024, 576, false);
	SetVertex("�G����", center, 90);
	CreateWindowEX("�G���O", 0, 0, 1024, 576, false);
	SetVertex("�G���O", center, 230);
	CreateWindowEX("�G���l", 0, 0, 1024, 576, false);
	SetVertex("�G���l", center, 0);
	CreateWindowEX("�G����", 0, 0, 1024, 576, false);
	SetVertex("�G����", center, 330);

	CreateTextureEX("�G����/�G���e��", 2800, -300, -10, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png");//�P
	CreateTextureEX("�G���l/�G���e�l", 2640, -90, -360, "cg/st/x/stAM�E�T�M���h�L_���[�_�[_normal_xm01.png");//�Q
	CreateTextureEX("�G����/�G���e��", 2640, 300, -300, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png");//�R
	CreateTextureEX("�G���O/�G���e�O", 2800, 540, -130, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png");//�S
	Zoom("�G����/�G���e��", 0, 2000, 2000, null, true);
	Zoom("�G���l/�G���e�l", 0, 500, 500, null, true);
	Zoom("�G����/�G���e��", 0, 300, 300, null, true);
	Zoom("�G���O/�G���e�O", 0, 750, 750, null, true);
	Request("�G����/�G���e*", Smoothing);
	Request("�G���l/�G���e*", Smoothing);
	Request("�G���O/�G���e*", Smoothing);
	Request("�G����/�G���e*", Smoothing);

	Rotate("�G����/�G���e��", 0, @0, @180, @0, null,true);
	Rotate("�G���O/�G���e�O", 0, @0, @180, @0, null,true);
	Rotate("�G����/�G���e��", 0, @0, @180, @0, null,true);

	Position("@�G����/�G���e��", $x1, $y1);
	CreateStencil("�G����/����",0,$x1,$y1,128,"cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png",false);//�P
	SetAlias("�G����/����","�G����/����");
	Rotate("�G����/����", 0, @0, @180, @0, null,true);
	Zoom("�G����/����", 0, 2000, 2000, null, true);
	SetShade("�G����/����", SEMIHEAVY);
	CreateColorEXadd("�G����/����/�G�F��", 2805, "FFFFFF");

	Position("@�G���l/�G���e�l", $x1, $y1);
	CreateStencil("�G���l/���l",0,$x1,$y1,128,"cg/st/x/stAM�E�T�M���h�L_���[�_�[_normal_xm01.png",false);//�Q
	SetAlias("�G���l/���l","�G���l/���l");
	Zoom("�G���l/���l", 0, 500, 500, null, true);
	SetShade("�G���l/���l", MEDIUM);
	CreateColorEXadd("�G���l/���l/�G�F��", 2645, "FFFFFF");

	Position("@�G����/�G���e��", $x1, $y1);
	CreateStencil("�G����/����",0,$x1,$y1,128,"cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png",false);//�R
	SetAlias("�G����/����","�G����/����");
	Zoom("�G����/����", 0, 300, 300, null, true);
	SetShade("�G����/����", SEMIHEAVY);
	Rotate("�G����/����", 0, @0, @180, @0, null,true);
	CreateColorEXadd("�G����/����/�G�F��", 2645, "FFFFFF");

	Position("@�G���O/�G���e�O", $x1, $y1);
	CreateStencil("�G���O/���O",0,$x1,$y1,128,"cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_xm���Ȃ�.png",false);//�S
	SetAlias("�G���O/���O","�G���O/���O");
	Rotate("�G���O/���O", 0, @0, @180, @0, null,true);
	Zoom("�G���O/���O", 0, 750, 750, null, true);
	SetShade("�G���O/���O", SEMIHEAVY);
	CreateColorEXadd("�G���O/���O/�G�F��", 2805, "FFFFFF");

	Wait(16);

	Zoom("�G����", 0, @0, 0, Dxl2, true);
	Zoom("�G���O", 0, @0, 0, Dxl2, true);
	Zoom("�G���l", 0, @0, 0, Dxl2, true);
	Zoom("�G����", 0, @0, 0, Dxl2, true);

	CreateProcessEX("�v���Z�X�P", "Proc_dm0190_vs_01aAct");
	CreateProcessEX("�v���Z�X�Q", "Proc_dm0190_vs_01bAct");
	CreateProcessEX("�v���Z�X�R", "Proc_dm0190_vs_01cAct");
	CreateProcessEX("�v���Z�X�S", "Proc_dm0190_vs_01dAct");

	CreateSE("SE_Proc_dm0190_vs_01aAct","se�[��_�R�~�J��_�{����02");
	CreateSE("SE_Proc_dm0190_vs_01bAct","se�[��_�R�~�J��_�{����02");
	CreateSE("SE_Proc_dm0190_vs_01cAct","se�[��_�R�~�J��_�{����02");
	CreateSE("SE_Proc_dm0190_vs_01dAct","se�[��_�R�~�J��_�{����02");
	MusicStartSet("SE_Proc_dm0190_vs_01aAct",700,0,1000,null,false);
	MusicStartSet("SE_Proc_dm0190_vs_01bAct",700,0,1000,null,false);
	MusicStartSet("SE_Proc_dm0190_vs_01cAct",700,0,1000,null,false);
	MusicStartSet("SE_Proc_dm0190_vs_01dAct",700,0,1000,null,false);

	Request("�v���Z�X�P", Start);
	Request("�v���Z�X�Q", Start);
	Request("�v���Z�X�R", Start);
	Request("�v���Z�X�S", Start);

	Request("�v���Z�X�P", Stop);
	Request("�v���Z�X�Q", Stop);
	Request("�v���Z�X�R", Stop);
	Request("�v���Z�X�S", Stop);

//���m�C�Y���̍U���B�E�T�M���h�L�̎i�ߊ������߁B

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("�G��", 3110, 0, 0, "cg/ev/l/ev960�E�T�M���h�L�퓬�\��_l.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 600, 1500, 1500, Dxl3, false);
	Move("�G��", 600, 190, -140, Dxl3, false);
	Fade("�G��", 500, 1000, null, true);

	Delete("�v���Z�X�P");
	Delete("�v���Z�X�Q");
	Delete("�v���Z�X�R");
	Delete("�v���Z�X�S");
	Delete("�G��*");
	Delete("��*");
	Delete("�G��*");
	Delete("�G��O*");
	Delete("SE_Proc_dm0190_vs_01*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm01/9000290c10">
"DEATH set!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1500,null,false);
	SetBlur("�G��", true, 3, 500, 60, false);
	Wait(16);
	Move("�G��", 500, -512, -367, DxlAuto, false);
	Zoom("�G��", 500, 500, 500, DxlAuto, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm01/9000300c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���u�S�v�Z�b�g�B�����̃E�T�M���h�L�����������؂�ɑ��t�ڊ|���Ĕ��ł���B
	EffectTxtinA("�m�C�Y","�S");
	EffectTxtinB("�m�C�Y","�S");

	Wait(16);

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_������01");
	CreateSE("SE05","se�퓬_����_������01");

	Delete("�G��");

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("�G���", 3110, -980, -10, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Wait(80);
	MusicStart("SE02",0,700,0,2000,null,false);
	Move("�G���", 0, -250, -330, null, true);
	Wait(80);
	MusicStart("SE03",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, 0, null, true);
	Wait(80);
	MusicStart("SE04",0,700,0,2000,null,false);
	Move("�G���", 0, 0, -360, null, true);
	Wait(80);
	MusicStart("SE05",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, -576, null, true);
	Zoom("�G���", 200, 550, 550, Dxl3, false);
	Move("�G���", 200, -512, -302, Dxl3, true);

	FadeFFR("�G���", 0,1000, 150, 0, 0, 20,null, true);

	CreateSE("SEProc_dm0190_vs_02Act","se�퓬_����_������01");
	MusicStartSet("SEProc_dm0190_vs_02Act",700,0,2000,null,false);

	CreateProcessEX("�v���Z�X", "Proc_dm0190_vs_02Act");
	Request("�v���Z�X", Start);

	FwPro("fw���t_�ʏ�_shock",900,"fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000310a01">
"Eh!? Aaaah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	if($Proc_dm0190_vs_02Act==true){
	}else{
	Request("�v���Z�X", Stop);
	Zoom("@�G���", 0, 2000, 2000, Dxl2, true);
	}
	Delete("�v���Z�X");
	$Proc_dm0190_vs_02Act=false;

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureSP("�G���w�i", 1010, -1024, InBottom, "cg/bg/l/bg201022_0_���C���m�C�Y02_l.jpg");
	SetBlur("�G���w�i", true, 3, 500, 30, false);
	Move("�G���w�i", 300, 0, @0, Dxl3, false);
	FadeDelete("�G���", 300, null, true);

{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000320a01">
"That was dangerous! Hey&, wait a minute!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("SEProc_dm0190_vs_02Act");

	CreateSE("SE02","se�l��_����_���01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureEX("�G��", 1110, 0, -50, "cg/ev/ev900���C���ΐ푓�tVS�E�T�M��.jpg");
	Move("�G��", 600, @0, 0, DxlAuto, false);
	Fade("�G��", 600, 1000, null, true);
	Fade("�G���w�i", 0, 0, null, true);


	//Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000330a01">
"I want nothing to do with Rhyme! Cut it out!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G���O", 1210, Center, 0, "cg/ev/ev900���C���ΐ푓�tVS�E�T�M��_�A�b�v.jpg");
	Move("�G���O", 600, @0, -70, DxlAuto, false);
	Fade("�G���O", 600, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000340a03">
"Rhyme name&, Sly Blue&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000350a01">
"Wha?"

{	DeleteFw();}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000360a03">
"Seragaki Aoba&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000370a01">
"Why do you know my name&.&.&.? And what's this Sly thing?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000380a03">
"Fight&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000390a01">
"I've never done Rhyme before!"

{	DeleteFw();}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000400a03">
"Fight&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000410a01">
"But I said I've never done this before&.&.&.!"

{	DeleteFw();}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm01/9000420a03">
"&.&.&.Fight&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//������I�ɍU�����Ă���m�C�Y
//�{�J�[���I�{�J�[���I

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_������01");
	CreateSE("SE05","se�퓬_����_������01");

	Delete("�G��");

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("�G���", 1310, -980, -10, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Wait(80);
	MusicStart("SE02",0,700,0,2000,null,false);
	Move("�G���", 0, -250, -330, null, true);
	Wait(80);
	MusicStart("SE03",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, 0, null, true);
	Wait(80);
	MusicStart("SE04",0,700,0,2000,null,false);
	Move("�G���", 0, 0, -360, null, true);
	Wait(80);
	MusicStart("SE05",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, -576, null, true);
	Zoom("�G���", 200, 550, 550, Dxl3, false);
	Move("�G���", 200, -512, -302, Dxl3, true);

	FadeFFR("�G���", 0,1000, 150, 0, 0, 20,null, true);

	Wait(30);

	CreateSE("SE06","se�퓬_����_����01");
	MusicStart("SE06",0,700,0,1500,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Fade("�G���w�i", 0, 1000, null, true);
	Delete("�G���O");
	Delete("�G���");
	DeleteAllSt(0,true);
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE06a","se����_���]�^���[_�n����01");
	MusicStart("SE06a",0,700,0,1500,null,false);
	BGPlainShake(2000,300,0,20,0,0,1000,null,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000430a01">
"It's useless&, he won't listen!"

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000440a01">
"Let's run!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����o�����t�B
//�E�T�M���h�L���ǂ��Ă���B
	CreateSE("SE01","se�l��_����_����03L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�G�����ʔw�i", 2100, Center, Middle, "cg/ef/efbg����02.jpg");

	DrawDelete("�G����", 200, 100, null, "slide_01_01_1", true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000450a01">
"Ren&, can't we do something!? Is there a way to get out of
 here or something?"

{	Fw("fw�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000460a06">
"I tried&, but the logout function itself seems to have been disabled&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000470a01">
"Seriously&, what's up with this Rhyme!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�m�C�Y�̍U�����������B
//�{�J�[���I�I�I

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_������01");
	CreateSE("SE05","se�퓬_����_������01");

	Delete("�G�����ʔw�i");

	SetVolumeEX("SE*", 300, 0, null);

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("�G���", 1310, -980, -10, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Wait(80);
	MusicStart("SE02",0,700,0,2000,null,false);
	Move("�G���", 0, -250, -330, null, true);
	Wait(80);
	MusicStart("SE03",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, 0, null, true);
	Wait(80);
	MusicStart("SE04",0,700,0,2000,null,false);
	Move("�G���", 0, 0, -360, null, true);
	Wait(80);
	MusicStart("SE05",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, -576, null, true);
	Zoom("�G���", 200, 550, 550, Dxl3, false);
	Move("�G���", 200, -512, -302, Dxl3, true);

	Zoom("�G���", 500, 8000, 8000, Dxl3, false);
	FadeFFR("�G���", 0,1000, 150, 0, 0, 20,null, true);

	Wait(50);

	CreateSE("SE06","se�퓬_����_������01");
	MusicStart("SE06",0,700,0,500,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G�w�i");
	Delete("�G���");
	Delete("�G���w�i");

	CreateTextureSP("�G����ʔw�i", 100, -720, -1400, "cg/bg/l/bg201022_0_���C���m�C�Y02_l.jpg");
	SetBlur("�G����ʔw�i", true, 3, 500, 30, false);
	CreateSurfaceEX("�G���ʃT�t", 1000,2150,"@�G����ʔw�i");
	Fade("�G���ʃT�t", 0, 1000, null, true);

	Fade("�G�F��", 70, 0, null, true);

	Zoom("�G���ʃT�t", 750, 8000, 8000, Dxl3, false);
	Rotate("�G���ʃT�t", 1000, @0, @0, 1080, Dxl3,false);
	Move("�G����ʔw�i", 500, -710, -1190, Dxl3, true);

	CreateColorSP("�G�F��", 10, "000000");

	CreateSE("SE07","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE07",0,1200,0,500,null,false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G���ʃT�t", 0, 0, null, true);
	Fade("�G�F��", 0, 0, null, true);

	Wait(150);

	CreateSE("SE08","se�l��_�Ռ�_�]�|01");
	MusicStart("SE08",0,1000,0,1000,null,false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000480a01">
"Uah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����ɐ�����΂���ăt�B�[���h��̃u���b�N�ɂԂ���B

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 5000, "000000");
	Fade("�G���ʃT�t", 0, 1000, null, true);
	Zoom("�G���ʃT�t", 0, 1000, 1000, null, true);
	Rotate("�G���ʃT�t", 0, @0, @0, 0, null,true);
	Move("�G����ʔw�i", 0, 0, -1636, null, true);
	Wait(16);
	SetBlur("�G����ʔw�i", false, 3, 500, 200, false);
	Move("�G����ʔw�i", 800, 0, -1536, DxlAuto, false);
	FadeDelete("�G�F��", 500, null, true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000490a01">
"Ouuch&.&.&.!"


{	WaitAction("@�G����ʔw�i", null);
	St("C",1740, @0,@0,"st�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000500a06">
"Aoba&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000510a01">
"&.&.&.It hurts pretty badly&."

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000520a06">
"Rhyme doesn't inflict damage on the real body&. It is all
 an illusion in the brain&. It is controlled so that it does
 not cause any further influence&."

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000530a06">
"But in this field&, the control of the damage level seems
 to be excluded for some reason&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000540a01">
"Doesn't that mean&.&.&."

{	St("C",1740, @0,@0,"st�@_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/9000550a06">
"When taking damage here&, some influences may be exerted on the real body&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/9000560a01">
"Then isn't this the worst case scenario&.&.&.!?"

{	Fw("fwAM�E�T�M���h�L_�{�N�T�[_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm01/9000570c09">
"You can't get away&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,500,0,1500,null,false);
	SetBlur("�G����ʔw�i", true, 3, 500, 30, false);
	Move("@StNameC/C*", 500, @0, @686, Dxl1, false);
	Move("�G����ʔw�i", 500, 0, -850, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0153]
When I look up&, a rabbit peeps at me from a block nearby&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���m�C�Y���̍U���B�E�T�M���h�L�̎i�ߊ������߁B

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�G���w�i", 1110, Center, Middle, "cg/ev/ev960�E�T�M���h�L�퓬�\��.jpg");

	DeleteAllSt(0,true);
	Delete("�G�F��");
	Delete("�G���ʃT�t");
	Delete("�G����ʔw�i");
	DrawDelete("�G����", 200, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0154]
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm01/9000580c10">
"'LOSS' set!"

//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm01/9000590c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���u���v�Z�b�g�B�E�T�M���h�L�����������~�T�C���̂悤�ɂЂ��Ђ����ł���
	EffectTxtinA("�m�C�Y","��");
	EffectTxtinB("�m�C�Y","��");

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_������01");
	CreateSE("SE05","se�퓬_����_������01");

	Delete("�G�����ʔw�i");

	SetVolumeEX("SE*", 300, 0, null);

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("�G���", 1310, -980, -10, "cg/ev/l/ev960�E�T�M���h�L�퓬�ːi_l.jpg");
	Request("�G���", Smoothing);
	Wait(80);
	MusicStart("SE02",0,700,0,2000,null,false);
	Move("�G���", 0, -250, -330, null, true);
	Wait(80);
	MusicStart("SE03",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, 0, null, true);
	Wait(80);
	MusicStart("SE04",0,700,0,2000,null,false);
	Move("�G���", 0, 0, -360, null, true);
	Wait(80);
	MusicStart("SE05",0,700,0,2000,null,false);
	Move("�G���", 0, -1024, -576, null, true);
	Zoom("�G���", 200, 550, 550, Dxl3, false);
	Move("�G���", 200, -512, -302, Dxl3, true);

	FadeFFR("�G���", 0,1000, 150, 0, 0, 20,null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
Crap&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�����t�@�C��["dm0190sl.nss"]�����d�c�N���A��o��
//�����t�@�C��["dm0191_vs.nss"]


	//ClearFadeAll(1000, true);

}

/*
//�������u���o�F�T���v���X�N���v�g�A�������ʓo�ꉉ�o�y�j���z�v
//�������ʓo�ꉉ�o�y�j���z
	CreateTextureSP("�G�x�[�X", 1090, Center, Middle, "cg/ev/ev950�@�A���픭��.jpg");

while(1){

	CreateTextureEXmul("�G�����ʓ�", 1100, Center, Middle, "cg/ef/efv��������_�@_�c_���t03a.png");
	Request("�G�����ʓ�", Smoothing);
	Zoom("�G�����ʓ�", 0, 2000, 2000, null, true);
	//Zoom("�G�����ʓ�", 0, 4000, 4000, null, true);
	Rotate("�G�����ʓ�", 0, @0, @0, 900, null,true);
	SetBlur("�G�����ʓ�", true, 2, 500, 50, false);

	Zoom("�G�����ʓ�", 300, 1000, 1000, null, false);
	//Zoom("�G�����ʓ�", 300, 2000, 2000, null, false);
	Fade("�G�����ʓ�", 300, 1000, null, false);
	Rotate("�G�����ʓ�", 300, @0, @0, 0, null,true);

	WaitKey(50);

	FadeFFR2("�G�x�[�X", 0,1000, 200, 0, 0, 20,DxlAuto, false);

	CreateTextureSPadd("�G�����ʈ�", 1120, Center, Middle, "cg/ef/efv��������_�@_�c_���t03b_s.png");
	Request("�G�����ʈ�", Smoothing);
	//Zoom("�G�����ʈ�", 0, 1150, 1150, null, true);
	Zoom("�G�����ʈ�", 0, 2300, 2300, null, true);

	//CreateTextureSPadd("�G�����ʓ�", 1100, Center, Middle, "cg/ef/efv��������_�@_�c_���t03a.png");
	Request("�G�����ʓ�", AddRender);
	SetBlur("�G�����ʓ�", false);
	//Zoom("�G�����ʓ�", 0, 2000, 2000, null, true);
	//Request("�G�����ʓ�", Smoothing);
	CreateTextureEX("�G�����ʓ����", 1100, Center, Middle, "cg/ef/efv��������_�@_�c_���t03a_s.png");
	Request("�G�����ʓ����", Smoothing);
	DrawEffect("�G�����ʓ����", 0, "Ripple", 0, 250, null);
	Zoom("�G�����ʓ����", 0, 2000, 2000, null, true);


	Wait(80);
	Request("�G�����ʓ�", NormalRender);
	Fade("�G�����ʈ�", 500, 0, AxlAuto, false);
	Zoom("�G�����ʈ�", 500, 6000, 6000, Dxl3, false);
	//Zoom("�G�����ʈ�", 500, 3000, 3000, Dxl3, false);
	Wait(300);
	FadeDelete("�G�����ʈ�", 400, null, false);
	Wait(100);

	//Zoom("�G�����ʈ�", 10000, 2500, 2500, Dxl2, false);
	Zoom("�G�����ʈ�", 10000, 5000, 5000, Dxl2, false);

	Wait(400);

	DrawEffect("�G�����ʓ����", 150, "Ripple", 0, 400, null);
	Fade("�G�����ʓ����", 150, 1000, Dxl3, false);
	FadeDelete("�G�����ʓ�", 150, null, true);
	Wait(100);
	Zoom("�G�����ʓ����", 2000, 1700, 1700, null, false);
	FadeDelete("�G�����ʓ����", 1000, null, true);

	Wait(100);

	WaitKey();

}

	WaitKey();

	FadeFFR2("�G�x�[�X", 0,1000, 200, 0, 0, 20,DxlAuto, false);
	CreateTextureSPadd("�G�����ʈ�", 1090, Center, Middle, "cg/ef/efv��������_�j�����t02.png");

	CreateTextureSP("�G�����ʓ�", 1100, Center, Middle, "cg/ef/efv��������_�j�����t01.png");

	Fade("�G�����ʈ�", 1000, 0, null, true);

	WaitKey();
*/
/*
&.�{�c�X�N���v�g
&.&.�m�C�Y�̑����Ɍ�������E�T�M���h�L�a
	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G�}�X�N�E", 3000, 0, 0, "ci�X���b�V��_03_01", true, "ci�X���b�V��_03_01z");
	CreateTextureSP("�G�}�X�N�E/�G���w�i", 2010, Center, Middle, "cg/ef/efbg����03.jpg");
	Rotate("�G�}�X�N�E/�G���w�i", 0, @0, @180, @0, null,true);
	Zoom("�G�}�X�N�E/�G���w�i", 0, 1050, 1050, null, true);
	SetShade("�G�}�X�N�E/�G���w�i", SEMIHEAVY);

	CreateTextureSP("�G�}�X�N�E/�G�����G", 2750, 1024, -1350, "cg/st/x/st�E�T�M��_�ʏ�_l_�S�g.png");

	CreateTextureEX("�G�}�X�N�E/�G�����G�e��", 2770, 140, 576, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_x01_����.png");
	CreateTextureEX("�G�}�X�N�E/�G�����G�e��", 2760, -1024, 90, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_x01_����.png");
	CreateTextureEX("�G�}�X�N�E/�G�����G�e�O", 2730, 270, 576, "cg/st/x/stAM�E�T�M���h�L_�{�N�T�[_normal_x01_����.png");
	Rotate("�G�}�X�N�E/�G�����G�e��", 0, @0, @180, @0, null,true);
	Rotate("�G�}�X�N�E/�G�����G�e�O", 0, @0, @180, @0, null,true);

	Move("�G�}�X�N�E/�G�����G", 600, 100, @0, Dxl2, false);
	DrawDelete("�G��", 300, 100, null, "slide_01_02_0", true);

	WaitAction("@�G�}�X�N�E/�G�����G", null);

	WaitKey();

	Fade("�G�}�X�N�E/�G�����G�e*", 0, 1000, null, true);
	Move("�G�}�X�N�E/�G�����G�e��", 500, 50, -220, DxlAuto, false);
	Wait(300);
	Move("�G�}�X�N�E/�G�����G�e��", 500, -390, 0, DxlAuto, false);
	Wait(150);
	Move("�G�}�X�N�E/�G�����G�e�O", 500, 330, -300, DxlAuto, true);
*/