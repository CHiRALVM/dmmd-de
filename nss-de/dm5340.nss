//<continuation number="180">
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


scene dm5340.nss_MAIN
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
	#ev900�����t��a=true;
	#bg304051_5_���]�^���[�����G���A�L��01=true;
	#bg304052_5_���]�^���[�����G���A�L��02=true;
	#bg304053_5_���]�^���[�����G���A�L��03=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5350.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;

}


scene dm5340.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm016",0,450,true);

	PrintGO("��w�i", 30000);

	OnBG(10,"bg304051_5_���]�^���[�����G���A�L��01");
	FadeBG(0,true);

	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
This floor had a completely different atmosphere than the 
party hall&.

The gaudiness was gone&, and in its place was a cold&, 
lightly blue colored hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("�G�w�i100", 100, Center, Middle, "cg/bg/bg304052_5_���]�^���[�����G���A�L��02.jpg");
	Rotate("�G�w�i100", 0, @0, @180, 0, null, true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	HAFade(2000, 0,true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/4000010a01">
"&.&.&.Haah&, haa&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I have to keep moving&, some guards may still be coming 
after me&.

I want to keep moving but my headache keeps pounding 
harder and harder&.

I can't think straight&.

I took my meds earlier&, why aren't they working&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I shove my hands into my bag in search of my pills&, and 
when I find them&, I immediately hold up the case and pour 
its contents inside my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se����_�s���P�[�X_��������01");
	MusicStart("SE02",0,500,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
A number of them spill out of my mouth onto the floor&, and the case in my hand becomes empty&.

It's a really bad idea to take all of them at once&, but&.&.&.

All I want now is to make the pain stop&.

I dropped the empty case into my bag and slowly made my 
way down the white hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("�G�w�i101", 101, -479, -572, "cg/bg/l/bg304053_5_���]�^���[�����G���A�L��03_l.jpg");
	Rotate("�G�w�i101", 0, @0, @180, 0, null, true);
	Delete("�G�w�i100");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Wild breaths escaped from my lips as I pulled myself along 
with my hand on the wall&.

It doesn't feel like the headache is calming down&.
My vision goes blurry and my throat goes dry&.

If anyone were to find me right now&, I'd be in trouble&.
But&.&.&. I need to keep pushing forward with all I have&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I dragged myself along&, and then heard the sound of a door opening&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureSP("�G�w�i102", 100, Center, Middle, "cg/bg/bg304051_5_���]�^���[�����G���A�L��01.jpg");
	Rotate("�G�w�i102", 0, @0, @180, 0, null, true);

	Move("�G�w�i101", 800, 0, -476, Dxl1, false);
	FadeDelete("�G�w�i101", 800, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
It was a type of door that cuts into the passageway&, and 
two men in white robes came out of it&.

&.&.&.Oh shit&.

I have to hide&, or get away somewhere&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm���A_���_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�������`�z
<voice name="�������`" class="�������`" src="voice/dm53/4000020e27">
"Hey&, over there&."

{	Fw("fwm���B_���_normal");}
//�y�������a�z
<voice name="�������a" class="�������a" src="voice/dm53/4000030e28">
"Who's he?"

{	Fw("fwm���A_���_normal");}
//�y�������`�z
<voice name="�������`" class="�������`" src="voice/dm53/4000040e27">
"A trespasser&.&.&.?"

{	Fw("fwm���B_���_normal");}
//�y�������a�z
<voice name="�������a" class="�������a" src="voice/dm53/4000050e28">
"Call security&. Quickly&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/4000060a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Shit&.&.&.
I can't let myself get caught now&.&.&.!

I'm already this far&.&.&.

All of my efforts would be wasted&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 12000, "000000");

//�����Ƀ��x���F�S
$HALevel=4;
//��������A�ƂЂǂ����ɂ�����i�����t�j
//���S���̌ۓ��A�O���������`���������t�̌��e
	SetVolumeEX("@dm*", 100, 0, null);
	HAFade(2000, 0, false);
	Fade("�G�F��", 300, 1000, null, true);

	CreateTextureSP("�G�����t", 200, Center, Middle, "cg/ev/ev900�����P�l�̑��t.jpg");
	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/ev900�����P�l�̑��t.jpg",1000,1000);
	CreateColorEX("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f���B", 0, 1000, null, true);
	Fade("�G�������t�U�f", 0, 1000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	Wait(500);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(500,true);

	Wait(500);

	TemptationAobaSet("�G�������t�U�f",1100,-501,30,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",2000,2000);
	DrawTransition("�G�������t�U�f���B", 0, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	Wait(500);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(500,true);

	Wait(1000);

	TemptationAobaSet("�G�������t�U�f",1100,-501,30,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);
	DrawTransition("�G�������t�U�f���B", 0, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(500,true);

	Wait(1500);

	CreatePlainSP("�G��", 12100);

	TemptationDelete("@�G�������t�U�f���B");
	Delete("�G�F��");
	Delete("�G��*");

	CreateTextureSP("�G�ꖇ�G", 500, Center, Middle, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	FadeDelete("�G��", 1500, null, true);

	HAFade(2000, 0, false);
	Wait(50);
	CreateColorEXsub("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, null, true);
//
	Delete("�G�ꖇ�G");

	Wait(500);

	FadeDelete("�G�F��", 500, null, true);

	Wait(1000);

//���l�i�`�F���W
	Fw("fw�����t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/4000070b01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���Q�l�̌������̂��Ƃւ����ƕ����Ă������t�B
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
	CreateTextureEX("�G�ꖇ�G", 100, Center, Middle, "cg/ev/ev900�����t��.jpg");#ev900�����t��a=true;

	SetVolumeEX("SE*", 1000, 0, null);
	Fade("�G�ꖇ�G", 1000, 1000, null, true);

//	Wait(1000);

	Fw("fwm���A_���_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�������`�z
<voice name="�������`" class="�������`" src="voice/dm53/4000080e27">
"H-Hey&, what the&.&.&."

{	Fw("fwm���B_���_normal");}
//�y�������a�z
<voice name="�������a" class="�������a" src="voice/dm53/4000090e28">
"Don't move! I'm calling security!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�ꖇ�G", 3000, @0, 0, AxlDxl, true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/4000100b01">
"You there&, don't move&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	CreateTextureEXadd("�G���o", 1000, Center, 0, "cg/ev/ev900�����t��.jpg");
	SetBlur("�G���o", true, 3, 500, 200, false);

	SetVertex("�G���o", 640, 128);

	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,300,0,1000,null,false);
	Fade("�G�F��", 300, 1000, Axl2, false);
	Zoom("�G���o", 1000, 2000, 2000, Dxl2, false);
	Fade("�G���o", 300, 500, null, true);
	Wait(200);
	FadeDelete("�G�F��", 300, Dxl1, false);
	FadeDelete("�G���o", 300, null, true);

	Wait(500);

	Fw("fwm���A_���_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
//�y�������`�z
<voice name="�������`" class="�������`" src="voice/dm53/4000110e27">
"&.&.&.!? My body won't move&.&.&.!"

{	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/4000120b01">
"Don't get in my way&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm���B_���_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�������a�z
<voice name="�������a" class="�������a" src="voice/dm53/4000130e28">
"What the hell are you!?"

{	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/4000140b01">
"It's your unlucky day&."

{	Fw("fwm���A_���_normal");}
//�y�������`�z
<voice name="�������`" class="�������`" src="voice/dm53/4000150e27">
"U-Uwahhh!"

{	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/4000160b01">
"I'll free you from your 'life' now&. I'll break it apart&.&.&. I'll smash your memories&, senses&, everything to bits&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	Fw("fwm���B_���_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y�������a�z
<voice name="�������a" class="�������a" src="voice/dm53/4000170e28">
"Ah&, ahhhhhhhhh!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fwm���A_���_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�������`�z
<voice name="�������`" class="�������`" src="voice/dm53/4000180e27">
"Uwahhhhhhhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�Ɉӎ����߂�

	ClearFadeAll(3000, true);

	Wait(1000);

//�����t�@�C��["dm5350.nss"]

}
