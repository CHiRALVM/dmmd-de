//<continuation number="60">
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


scene dm5450_vs.nss_MAIN
{

$TEXTBOX_TYPE="���C��";

	RMAlarmSet(3000);

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
	#ev554�@�ڌ��A�b�v=true;
	#ev554�@�ڌ��A�b�va=true;

	//�����o������ݒ�
	$dm5450_vs_�o�g���Ȃ�=true;

	//�����o������������
	TiesMovieDelete();


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5460.nss";

}


scene dm5450_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);
	CreateColorSP("�G�F��", 5000, "000000");
	FadeDelete("��w�i", 0, null, true);

	TiesMovieSet("�]�����C��a",2000);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	if($nextrhymescene=="dm5450_vs.nss"){
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	Request("@EFWIN/SE01", UnLock);
	}else{
	CreateSE("SE01","se�[��_���C��_�����g01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	}

	TiesMovieStart();

	DrawDelete("�G�F��", 500, 100, Axl2, "slide_02_01_1", true);

	Wait(500);
	WaitKey(1000);
	TiesMovieNEXT();
	Wait(500);
	WaitKey(1000);

	SetVolumeEX("@EFWIN/SE*", 600, 0, null);
	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE020","se�[��_���__����01");
	MusicStart("SE020",0,700,0,1000,null,false);
	Fade("�G�F��", 1000, 1000, AxlAuto, true);

	Wait(650);
	WaitKey(1350);

	TiesMovieDelete();


//�����t�A�@�ɂ���ċ����I�Ƀ��C����Ԃֈ���������


	PrintGO("��w�i", 30000);

	SoundPlay("@dm010",0,450,true);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��2", 4000);
	Zoom("�G��2", 0, 1200, 1200, null, true);
	SetBlur("�G��2", true, 3, 500, 100, false);

	Zoom("�G��2", 1500, 1000, 1000, Dxl1, false);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);

	Wait(2000);

	Delete("�G��2");

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/5000010a01">
"Rhyme&.&.&.? A Drive-By? But who&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
When I realize who my opponent is&, I take a step back in 
disbelief&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//�������u�f�ޗv�]�F�d�u�A�����ł̌��@�G�~�����Ȃ��v

	CreateTextureEX("�G�w�i", 100, Center, -576, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	CreateTextureEX("�L����", 100, Center, Middle, "cg/st/x/stAM�@_�ʏ�_rage_x2.png");
	Zoom("�G�w�i", 0, 3000, 3000, null, true);
	SetShade("�G�w�i", HEAVY);

	Move("�G�w�i", 0, @-100, @0, null, true);
	Move("�L����", 0, @-200, @20, null, true);

	Move("�G�w�i", 1000, @100, @0, Dxl1, false);
	Move("�L����", 1000, @200, @0, Dxl1, false);

	Fade("�G�w�i", 300, 1000, null, false);
	Fade("�L����", 300, 1000, null, true);

	Wait(1000);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/5000020a01">
"Ren&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
No way&.&.&.

Was it him who dragged me into this Drive-By?

But I've never heard of an Allmate initiating a Drive-By&.

Can Allmates even do that sort of thing&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);


//�y�@�z���r�d����
//<voice name="�@" class="�@" src="voice/dm54/5000021a06">
//�u�O���������������v
	CreateVOICE("SE01","dm54/5000021a06");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	CreatePlainSP("�G��2", 5000);
	SetBlur("�G��2", true, 3, 300, 50, false);

	CreateSE("SE02","se�퓬_����_����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 500, 0, null);


	Delete("�G�w�i");
	Delete("�L����");

	Zoom("�G��2", 300, 1500, 1500, Dxl1, false);
	Fade("�G��2", 300, 0, Axl1, true);

	Delete("�G��2");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
As I stand there&, bewildered&, Ren begins to sprint towards me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/5000030a01">
"Ren! Wait&, hey!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
A question comes to mind when I avoid his charge&.

Why is he a dog?
He always changes into a human form in Rhyme&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 5000);
	Shake("�G��", 500, 2, 5, 0, 0, 1000, null, false);
	FadeDelete("�G��", 300, null, false);


	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/5000040a01">
"Guh-!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
During the second I was in thought&, Ren lunged at my arm&.

I push his face away before he's able to bite me with his 
sharp fangs&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I want to push him away with all of my strength&, but I 
can't do that to Ren&. I just can't&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_pinch",3500,"fw���t_�ʏ�_pain");
//	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/5000050a01">
"Ren&, let go&, Hey&.&.&. Gah!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);


//���r�d�F�@�����t�Ɋ��ݕt��
	CreateSE("SE01","se�퓬_����_�q�b�g01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "CC0000");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	Wait(300);

//���r�d�F�ǂ���ƐS���̌ۓ�
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("�G��", 2000);
	Zoom("�G��", 0, 1500, 1500, null, true);
	Fade("�G��", 0, 850, null, true);
	Wait(30);
	Zoom("�G��", 2000, 1000, 1000, null, false);
	Fade("�G��", 1000, 0, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
A sharp pain runs through my arm&.
He bit me&.&.&.!

But at the same time&.&.&.

Something strange happens&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(200);
	//�����݁F��ʃG�t�F�N�g���������\��

	CreatePlainEX("�G��", 450);
	SetShade("�G��", HEAVY);

	Fade("�G��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Where he bit me&, there's&.&.&.

Something running down&.&.&.?

What?

A whirlpool of warmness and sadness&.&.&.
Stealing away my pain and my consciousness&.

My eyes open wide&, and flashes of different images passed 
through them&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//���@�Ƃ̉ߋ��̓��X�������t���b�V���o�b�N�i�f�ޓI�ɉ\�Ȃ�j
	EfRecoIn1(10000,200);

	CreateTextureEX("��z�P", 500, -346, 259, "cg/ev/ev002���t�o��.jpg");
	Zoom("��z�P", 0, 2000, 2000, null, true);
	CreateTextureEX("��z�Q", 500, -312, 193, "cg/ev/ev022���t���y����a.jpg");
	Zoom("��z�Q", 0, 2000, 2000, null, true);
	CreateTextureEX("��z�R", 510, -785, -118, "cg/ev/l/ev026�@�����e_l.jpg");
	Zoom("��z�R", 0, 2000, 2000, null, true);
	CreateTextureEX("��z�S", 505, 58, 361, "cg/st/l/st���t_�ʏ�_smile2_l.png");
	Zoom("��z�S", 0, 2000, 2000, null, true);
	CreateTextureEX("��z�S�w�i", 500, center, middle, "cg/bg/bg101011_1_���Z����ʂ�\.jpg");
	SetShade("��z�S�w�i", HEAVY);
	Zoom("��z�S�w�i", 0, 2000, 2000, null, true);

	Request("��z*", Smoothing);

	Fade("��z�P", 0, 1000, null, true);

	EfRecoIn2(200);

	Wait(100);

	Fade("��z�Q", 100, 1000, null, true);

	Wait(200);

	Fade("��z�R", 100, 1000, null, true);
	Fade("��z�S*", 0, 1000, null, true);

	Wait(200);

	Fade("��z�R", 100, 0, null, true);
//	WaitKey();
	Wait(200);

	EfRecoOut1(100);

	Delete("��z*");

	EfRecoIn2(400);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
These images&.&.&.

What are these?

My memories?

&.&.&.No&.

These could be&.&.&.

Ren's?

Are they&.&.&. all of what Ren's seen up until now?

They're like my memories&, all of the things I've seen 
before&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
It was like Ren had always been watching through the same 
eyes as me&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//���l�^�̘@�̎p���\�������i�ڕ����ڊJ���j
//�����̏�ɑ��t���d�Ȃ�H�i�\�Ȃ�j

	CreateColorEX("�G������", 1900, "000000");

	CreateTextureEX("�G�w�i�t", 510, -27, -15, "cg/st/x/st���t_�ʏ�_serious_x00.png");
	CreateTextureEX("�G�w�i�@", 500, Center, Middle, "cg/ev/ev554�@�ڌ��A�b�v.jpg");
	CreateTextureEX("�G�w�i�@a", 500, Center, Middle, "cg/ev/ev554�@�ڌ��A�b�va.jpg");
	Fade("�G�w�i�@a", 1000, 1000, null, true);

	Fade("�G�w�i�@", 0, 1000, null, true);
	FadeDelete("�G�w�i�@a", 500, null, true);

	Wait(500);
	Fade("�G�w�i�t", 1000, 500, null, true);

	Fade("�G�w�i�t", 1000, 0, Axl1, true);

	Fade("�G������", 1000, 1000, null, true);

	Delete("�G�w�i�@");
	Delete("�G�w�i�t");
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
&.&.&.Ren?

&.&.&.!

&.&.&.I see&.

So that's how it is&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(100);
	CreatePlainSP("�G�ʓ�", 1900);

//�������t����u�\��
//�������u���o�F�����t�̗U�f�v
//�����t�A�����t�ɂȂ�

//�����݁F�����̉��o�ӏ����甲��
/*
	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev900�����P�l�̑��t.jpg");
	CreateColorSP("�G�����B", 1110, "000000");
	DrawTransition("�G�����B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	WaitAction("�G�����B", null);

	CreatePlainSP("�G�ʓ�", 1900);

	Fade("�G��", 0, 0, null, true);
	FadeFFR("�G�ʓ�", 0,1000, 100, 0, 0, 50,null, true);
	Fade("�G��", 0, 1000, null, true);

	Wait(500);
*/
	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u", 1000, Center, -110, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");
	Move("�G�d�u", 0, @0, @0, null, true);
	SetBlur("�G�d�u", true, 2, 300, 200, false);

	CreateTextureEXsub("�G������", 1000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������", 0, 1100, 1100, null, true);
	Shake("�G������", 3000, 20, 10, 0, 0, 1000, null, false);

	CreateColorEX("�G������", 1900, "000000");
	CreateColorEX("�G�����B", 1100, "000000");
	DrawTransition("�G�����B", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	MoveFTP1("@�G�d�u",3000,10,20);

//	Fade("@OnBG*", 0, 0, null, true);
	Fade("�G�d�u", 0, 1000, null, true);
	Fade("�G�����B", 0, 1000, null, true);
	Fade("�G������", 0, 1000, null, true);

	Fade("�G�ʓ�", 50, 0, null, false);

//	Fade("@OnBG*", 0, 1000, null, true);

	Wait(300);

	Fade("�G������", 300, 1000, null, true);

	MoveFTP1stop();
	Delete("�G�����B");
	Delete("�G�d�u");
	Delete("�G�ʓ�");
	Delete("�G������");

	Wait(100);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/5000060a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
In a single moment&, my vision went to black&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(50);

//���r�d�F�@��e����΂���
	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Delete("�G������");
	Wait(30);
	CreatePlainSP("�G�ʓ�", 1900);
	Shake("�G�ʓ�", 500, 6, 7, 0, 0, 1000, null, false);

	FadeDelete("�G�F��", 70, null, true);

	FadeDelete("�G�ʓ�", 500, null, false);

	Wait(500);


//���r�d�F�@�A�L���C���Ɣߖ��グ��
	CreateSE("SE01","se����_��_�@�ߖ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
&.&.&.The next thing I saw was myself pushing away Ren as he 
bit into my arm&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������t����u�\��
	CreatePlainSP("�G�ʓ�", 1900);
	CreateTextureEX("�G�d�u", 1000, Center, Middle, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	Move("�G�d�u", 0, @0, @0, null, true);
	SetBlur("�G�d�u", true, 2, 300, 200, false);

	CreateTextureEXsub("�G������", 1000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������", 0, 1100, 1100, null, true);
	Shake("�G������", 3000, 20, 10, 0, 0, 1000, null, false);

	CreateColorEX("�G�����B", 1100, "000000");
	DrawTransition("�G�����B", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("�G�d�u", 0, 1000, null, true);
	Fade("�G�����B", 0, 1000, null, true);
	Fade("�G������", 0, 1000, null, true);

	MoveFTP1("@�G�d�u",3000,10,20);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�ʓ�", 50, 0, null, false);


	Wait(300);

	Fade("�G�ʓ�", 300, 1000, null, true);

	MoveFTP1stop();
	Delete("�G�����B");
	Delete("�G�d�u");
	Delete("�G�ʓ�");
	Delete("�G������");

	Wait(100);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
It was him&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5460.nss"]

}
