//<continuation number="140">
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


scene dm5500scr.nss_MAIN
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

	#bg206011_0_�\�I�@=true;
	#ev900���C���ΐ푓�tVS�o�O�@=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5510sl.nss";

}


scene dm5500scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg206011_0_�\�I�@");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/l/bg206011_0_�\�I�@_l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 800, 800, null, true);
	CreateTextureSP("�G�w�iEF", 100, Center, Middle, "cg/bg/bg206011_0_�\�I�@.jpg");
	Zoom("�G�w�iEF", 0, 2030, 2030, null, true);
	DrawEffect("�G�w�iEF", 0, "Ripple", 200, 200, null);
	Fade("�G�w�iEF", 0, 1000, null, true);
	Fade("�G�w�i", 0, 500, null, true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("��w�i");
	Zoom("�G�w�i", 4500, 500, 500, Dxl1, false);
	Zoom("�G�w�iEF", 4500, 1000, 1000, Dxl1, false);
	FadeDelete("�G�F��", 2000, null, true);

	Wait(1000);
	Fade("�G�w�i", 1500, 1000, null, true);
	Delete("�G�w�iEF");

//�������̓��̒��֓��������t
//�����t�̉f�������ɂ�񂮂ɂ��ɂȂ����D�����������ȃt�B�[���h�̒��A�l�^�̘@�������Ă���B

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
This is&.&.&.

I'm inside of my own head&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	Zoom("�G�w�i", 1500, 1000, 1000, AxlDxl, true);
	Wait(500);
	Move("�G�w�i*", 1000, @-500, @0, AxlDxl, true);

	Wait(500);
	Move("�G�w�i*", 2000, @1000, @0, AxlDxl, true);
	WaitKey();
*/

	Zoom("�G�w�i", 1500, 1000, 1000, AxlDxl, false);
	BezierMove("�G�w�i", 3000, (@0,@0){-500,0}{-600,-10}(-773,-88), AxlDxl, true);
	BezierMove("�G�w�i", 1000, (-773,-88){-770,-100}{-770,-100}(-790,-93), AxlDxl, true);
	BezierMove("�G�w�i", 2000, (-790,-93){-400,-100}{-300,-100}(-22,-173), AxlDxl, true);
	BezierMove("�G�w�i", 1000, (-22,-173){-25,-160}{-30,-180}(-22,-173), AxlDxl, true);
	BezierMove("�G�w�i", 1000, (-22,-173){-30,-200}{-15,-250}(-12,-288), AxlDxl, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010a]
The scenery that expands in front of my eyes leaves me 
dumbfounded&.

Pictures of me are everywhere&, filling the dome-like area&.

It resembles a public Rhyme field&, but it's a little 
different&.

It's not like one because this time&, it's in my head&.

And probably&.&.&. where Ren's consciousness is hiding&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(200);
	CreateTextureSP("�L�����@", 500, 1024, -52, "cg/bu/bu�@_�ʏ�}���g�Ȃ�_normal.png");
	Fade("�L�����@", 0, 500, null, true);
	CreateTextureSP("�L�����@2", 300, 1024, -52, "cg/bu/bu�@_�ʏ�}���g�Ȃ�_normal.png");
	Fade("�L�����@2", 0, 500, null, true);

	CreateTextureEX("�@�o�O01", 300, 167, -52, "cg/bu/bu�@_�ʏ�o�O_normal.png");
	CreateTextureEXmul("�@�o�O02", 300, 167, -52, "cg/bu/bu�@_�ʏ�o�O_normal.png");
	CreateTextureEXsub("�@�o�O03", 300, 167, -52, "cg/bu/bu�@_�ʏ�}���g�Ȃ�_normal.png");

	DrawEffect("�@�o�O01", 0, "SuperWave", 20, 20, null);
	//DrawEffect("�@�o�O02", 0, "SuperWave", 300, 200, null);
	//DrawEffect("�@�o�O03", 0, "Ripple", 50, 50, null);

	DrawTransition("�@�o�O01", 0, 300, 300, 200, null, "cg/data/check_03_00_0.png", true);
	DrawTransition("�@�o�O02", 0, 300, 300, 200, null, "cg/data/check_02_00_1.png", true);
	//DrawTransition("�@�o�O03", 0, 500, 500, 100, null, "cg/data/check_02_00_1.png", true);

	$���C�g�i�b�g���P = @�@�o�O01;
	$���C�g�i�b�g���Q = @�@�o�O02;
	$���C�g�i�b�g���R = @�@�o�O03;
	$���C�g�^�C�� = 550;

	CreateProcess("�v���Z�X�\���P", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("�v���Z�X�\���P","�v���Z�X�\���P");

	RhymeDrawSet("�L�����Ԃ�",1000,167,-52,"cg/bu/bu�@_�ʏ�o�O_normal.png");

	//RhymeDrawLoop();
	CreateProcess("�v���Z�X�Ԃ�P", 150, 0, 0, "RhymeDrawLoop");
	SetAlias("�v���Z�X�Ԃ�P","�v���Z�X�Ԃ�P");

	Move("�L�����@", 300, 167, @0, AxlDxl, false);
	Move("�G�w�i*", 300, @-500, @0, AxlDxl, false);
	Move("�L�����@2", 300, 162, @0, AxlDxl, true);

	SetBlur("�L�����@2", true, 2, 200, 100, false);
	MoveFTP1("@�L�����@2",3000,15,4);

	Request("�v���Z�X�Ԃ�P", Start);
	Request("�v���Z�X�\���P", Start);

	Wait(1000);
	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	SoundPlay("@dm017",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I turn and find Ren standing behind me&.

The human version&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000020a01">
"Ren&.&.&.!"

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/0000030a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
He glares at me&, motionless&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(300);
	CreateTextureEX("event", 10000, -539, -259, "cg/ev/l/ev900���C���ΐ푓�tVS�o�O�@_l.jpg");
	Request("event", Smoothing);

	Zoom("event", 0, 700, 700, null, true);

	Zoom("event", 800, 600, 600, Dxl1, false);
	Fade("event", 500, 1000, null, true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024a]
His body&.&.&. had changed an awful lot&.

Maybe because of that bug&. He's covered in errors&, and his arm is distorted like I've never seen before&.

Just looking at him makes it painful to breathe&.

Why&.&.&.
Probably because I couldn't save him earlier&.

Before he turned out this way&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(200);

	FadeDelete("event", 500, null, true);

	Wait(500);

	CreateTextureEX("�G��", 2000, Center, Middle, "cg/ef/efbg����01.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 1000, 1000, null, true);
	SetBlur("�G��", true, 3, 500, 50, false);
	Request("�G��", Smoothing);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G��", 100, 1000, null, false);
	Zoom("�G��", 250, 1500, 1500, Dxl1, true);

	Request("�v���Z�X*", Stop);
	Delete("�L����*");
	Delete("�v���Z�X*");
	Delete("�@*");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Before I could even speak to him&, Ren dashed towards me 
across the surface of the smooth floor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 200, Center, Middle, "cg/bg/l/bg206011_0_�\�I�@_l.jpg");
	Request("�G�w�i", Smoothing);
	Fade("�G�w�i", 0, 1000, null, true);

	CreateTextureEXadd("�G�w�iEF01", 3000, center, -729, "cg/ef/efx01���M02.jpg");
	Rotate("�G�w�iEF01", 0, @0, @0, 90, null,true);

	CreateSE("SE01","se�퓬_����_���؂荂01");
	CreateSE("SE02","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�iEF01", 0, 1000, null, true);
	Move("�G�w�iEF01", 300, @0, 0, Dxl2, false);

	FadeDelete("�G�w�iEF01", 200, Axl1, false);

	Move("�G�w�i", 300, 0, @0, Dxl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("�G��", 200, 2000, 2000, Dxl1, false);
	FadeDelete("�G��", 200, null, true);

	Wait(100);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000040a01">
"-!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I somehow avoid his attack by jumping&, and fall 
in a heap to the side&.

When I try to get up&, Ren jumps up and slashes me with his arms which were as sharp as blades&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	CreateTextureEX("�L�����@", 500, 280, -50, "cg/bu/bu�@_�ʏ�o�O_normal.png");
	Zoom("�L�����@", 0, 800, 800, null, true);

	Zoom("�L�����@", 200, 1000, 1000, Dxl1, false);
	Shake("�L�����@", 200, 5, 0, 0, 0, 1000, null, false);
	Fade("�L�����@", 200, 1000, null, false);
	Move("�G�w�i", 200, -50, @0, Dxl2, false);
	Move("�L�����@", 200, 162, @0, Dxl2, false);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000050a01">
"&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(100);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE03","se�퓬_����_������01");

	CreateTextureEXadd("�G�w�iEF01", 1000, -716, -729, "cg/ef/efx01���M01.jpg");
	CreateTextureEXadd("�G�w�iEF02", 1000, 0, -729, "cg/ef/efx01���M03.jpg");
	Rotate("�G�w�iEF02", 0, @0, @0, 180, null,true);

	MusicStart("SE03",0,700,0,1000,null,false);

	Zoom("�L�����@", 120, 2000, 2000, Axl1, false);
	FadeDelete("�L�����@", 120, Axl2, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�iEF01", 0, 1000, null, true);
	Move("�G�w�iEF01", 200, 0, 0, Dxl2, false);
	FadeDelete("�G�w�iEF01", 200, Axl2, false);

	Wait(80);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("�G�w�iEF02", 0, 1000, null, true);
	Move("�G�w�iEF02", 200, -716, 0, Dxl2, false);
	FadeDelete("�G�w�iEF02", 200, Axl2, true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I dodge both of his swings&. But his offensive is in no way slow&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	Shake("�G��", 500, 10, 5, 0, 0, 1000, null, false);
	FadeDelete("�G��", 500, null, false);


	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000060a01">
"Guh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Unable to escape this attack&, I guard myself with my fists against his arms&.

The back of my hand is shocked and numbed by the ferocity 
of the blows raining down on it&.

Ren&.&.&. is seriously trying to kill me&.

Even with Ren as close as he is&, his eyes don't show 
any emotion&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000070a01">
"&.&.&.I'm sorry&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
The words come out of my mouth&.

And at that moment&, Ren threw me away&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G��", 2000, Center, Middle, "cg/ef/efbg����03.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 1000, 1000, null, true);
	SetBlur("�G��", true, 3, 500, 50, false);
	Request("�G��", Smoothing);

	CreateTextureEXadd("�G�w�iEF01", 3000, center, middle, "cg/ef/efx01���M01.jpg");
	CreateColorEX("�G�F��", 5000, "BLACK");

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��03");
	CreateSE("SE02","se�퓬_����_����01");

	MusicStart("SE02",0,700,0,1000,null,false);

	Zoom("�G�w�iEF01", 200, 2000, 2000, Dxl1, false);
	Shake("�G�w�iEF01", 300, 10, 20, 0, 0, 1000, null, false);

	Fade("�G�w�iEF01", 0, 1000, null, true);
	FadeDelete("�G�w�iEF01", 300, null, false);

	Fade("�G��", 100, 1000, null, false);
	Zoom("�G��", 350, 1500, 1500, Dxl1, false);

	Wait(150);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G�w�i", 1000, 0, 10, 0, 0, 1000, null, false);
	Move("�G�w�i", 300, -512, @0, Dxl2, false);
	FadeDelete("�G��", 200, null, false);

	Fade("�G�F��", 500, 1000, Axl1, true);
	CreateSE("SE04","se�l��_�Ռ�_�]�|01");
	MusicStart("SE04",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000080a01">
"&.&.&.!!"

{	DeleteFw();}
Without any defenses&, I took the blow and hit the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(50);

	CreateTextureEX("�G�w�i", 200, Center, Middle, "cg/bg/bg206011_0_�\�I�@.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);

	CreateTextureSP("�L�����@", 500, 1024, -52, "cg/bu/bu�@_�ʏ�}���g�Ȃ�_normal.png");
	Fade("�L�����@", 0, 500, null, true);
	CreateTextureSP("�L�����@2", 300, 1024, -52, "cg/bu/bu�@_�ʏ�}���g�Ȃ�_normal.png");
	Fade("�L�����@2", 0, 500, null, true);

	CreateTextureEX("�@�o�O01", 300, 167, -52, "cg/bu/bu�@_�ʏ�o�O_normal.png");
	CreateTextureEXmul("�@�o�O02", 300, 167, -52, "cg/bu/bu�@_�ʏ�o�O_normal.png");
	CreateTextureEXsub("�@�o�O03", 300, 167, -52, "cg/bu/bu�@_�ʏ�}���g�Ȃ�_normal.png");

	DrawEffect("�@�o�O01", 0, "SuperWave", 20, 20, null);
	//DrawEffect("�@�o�O02", 0, "SuperWave", 300, 200, null);
	//DrawEffect("�@�o�O03", 0, "Ripple", 50, 50, null);

	DrawTransition("�@�o�O01", 0, 300, 300, 200, null, "cg/data/check_03_00_0.png", true);
	DrawTransition("�@�o�O02", 0, 300, 300, 200, null, "cg/data/check_02_00_1.png", true);
	//DrawTransition("�@�o�O03", 0, 500, 500, 100, null, "cg/data/check_02_00_1.png", true);

	$���C�g�i�b�g���P = @�@�o�O01;
	$���C�g�i�b�g���Q = @�@�o�O02;
	$���C�g�i�b�g���R = @�@�o�O03;
	$���C�g�^�C�� = 550;

	CreateProcess("�v���Z�X�\���P", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("�v���Z�X�\���P","�v���Z�X�\���P");

	RhymeDrawSet("�L�����Ԃ�",1000,167,-52,"cg/bu/bu�@_�ʏ�o�O_normal.png");

	//RhymeDrawLoop();
	CreateProcess("�v���Z�X�Ԃ�P", 150, 0, 0, "RhymeDrawLoop");
	SetAlias("�v���Z�X�Ԃ�P","�v���Z�X�Ԃ�P");

	Move("�L�����@", 0, 167, @0, null, false);
	Move("�G�w�i*", 0, @-500, @0, null, false);
	Move("�L�����@2", 0, 162, @0, null, true);

	Request("@�L����*", Smoothing);
	Request("@�@*", Smoothing);

	//Rotate("�G�w�i", 0, @0, @0, -15, null,true);
	//Rotate("@�L����*", 0, @0, @0, -15, null,true);
	//Rotate("@�@*", 0, @0, @0, -15, null,true);
	Zoom("@�L����*", 0, 1200, 1200, null, true);
	Zoom("@�@*", 0, 1200, 1200, null, true);

	//SetBlur("�L�����@2", true, 2, 200, 100, false);
	//MoveFTP1("@�L�����@*",3000,5,3);
	//MoveFTP2("@�G�w�i",3000,4,2);

	Request("�v���Z�X�Ԃ�P", Start);
	Request("�v���Z�X�\���P", Start);

	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
While I was rolling over on the floor&, I saw Ren walking 
up to me&.

Ren&.&.&.

The mortifying way Ren was acting hurt more than the 
pain&.&.&. I was sad&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000090a01">
"&.&.&.Ren&, I'm sorry&. It&.&.&. It must hurt so much&."

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/0000100a06">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000110a01">
"I'm sorry for not realizing&.&.&. I'm so sorry for not
 understanding you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I hold the pain and stand up as Ren looked directly at me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000120a01">
"I finally understood&. I remembered you&. Ren&, you&.&.&. were
 always inside of me&. You always watched over me&, didn't
 you?"

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/0000130a01">
"But I still didn't realize&, and kept being spoiled by
 you&.&.&. I'm so sorry&."

{	DeleteFw();}
//�l�^
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/0000140a06">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateMovieEX("�G����", 1000, 270, 40, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G����",0,2800,2750,null,true);
	Request("�G����",Smoothing);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G����", 80, 1000, null, false);

	Zoom("@�L����*", 200, 1400, 1400, Dxl2, false);
	Zoom("@�@*", 200, 1400, 1400, Dxl2, true);

	Fade("�G����", 300, 0, Axl1, true);

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
When I try to take a step forward&, Ren glares at me&.


{	CreateSE("SE01","se�l��_�Ռ�_�r���^01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSPadd("�G�F��", 5000, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	FadeDelete("�G�F��", 300, null, true);

}
And just then&, a strong spark flashed&, the sound as loud 
as fireworks&.

Unable to even see myself moving forward&, my legs buckle 
and I trip over my own feet&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�ȉ��Adm5510sl.nss�ֈړ��i���q
//�@����́c�c
//�@�c�c���܂�Ă�H
//�@�@�������ߕt���܂��Ƃ��āA�h��́u�ǁv�𒣂菄�点��B

	SetVolumeEX("@dm*", 5000, 0, null);

	TextBoxDelete(0);
	Wait(100);
	CreatePlainEX("�G��", 5000);
	SetShade("�G��", HEAVY);
	Fade("�G��", 1500, 1000, null, true);

	Request("�v���Z�X*", Stop);
	Delete("�L����*");
	Delete("�v���Z�X*");
	Delete("�@*");

//�����t�@�C��["dm5510sl.nss"]

}
