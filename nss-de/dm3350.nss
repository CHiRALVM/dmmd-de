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


scene dm3350.nss_MAIN
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

	#bg390011_5_�v���`�i�W�F�C���ėp��=true;
	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3360.nss";

}


scene dm3350.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	CreateColorSP("�G�F��", 5000, "000000");

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Late that night&, I slip out of my room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�F��", 1000, null, true);

	Wait(500);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(1000,true);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/l/bg302041_5_�O���b�^�[�L��_l.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I change into my clothes and put Ren on sleep mode&, 
keeping my footsteps as soft as possible when leaving 
the room&.

{
	Move("�G�w�i", 1000, @100, @0, Dxl1, false);
	Fade("�G�w�i", 1000, 1000, null, true);
}

I look towards Mink's room while down the corridor&.
I can't let myself be caught&.&.&.

{
	Move("�G�w�i", 1000, @100, @0, Dxl1, false);
	FadeDelete("�G�w�i", 700, null, true);
}

Where will I go&, what will I do when I get there?
I'm not thinking about either of those things&.

I just need to get out of here&.
That's all that's in my head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(1000,true);

	Wait(500);

	OnBG(10,"bg302061_5_�O���b�^�[�K�i");
	FadeBG(1000,true);

	Wait(500);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(1000,true);

	Wait(500);

	CreateTextureEX("�G�w�i", 100, Center, -50, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Keeping control of my breathing&, I go through the living 
room and head down the stairs&.

The only sound in this entire building is that of the air 
conditioner&.

{	Move("�G�w�i", 500, @0, @50, Dxl1, false);
	Fade("�G�w�i", 500, 1000, null, true);}
I checked upstairs just in case&, but I don't think Mink is 
awake&.

&.&.&.I think I'll be fine&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�w�i", 500, @0, @-50, Dxl1, false);
	FadeDelete("�G�w�i", 500, null, true);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/5000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	CreateSE("SE01","se����_�O���b�^�[����_���J��01b");
	MusicStart("SE01",0,300,0,900,null,false);
	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);
	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Anxious&, impatient&, lost&.&.&.all of these feelings pool
in my chest&. I try to shake them off when I leave through
the entryway&.

Quietly closing the door&, I slowly let out all the air I 
was holding in my lungs&.

It went well&.
Now I need to find a place to hide&.

I enter a back lane without stepping onto Main Street&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�������u�R�C���F�����̃V�[���͖�����ˁH�v
//�}�b�v�\���A���Ȃ��Ă������ƁB�R�C�����쉹�n���c�Ȃ��Ă悳�����ł��ȁi���q

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Wanting to go as far out into the outskirts as possible&, I 
walk while following the map on my Coil&.

While keeping a quick pace&, a thought comes to mind&.

Mink will search for me if I'm not there&.

And I even need to think of a way to get to Toue by myself&.

I didn't want to use it too much&.&.&. but could using Scrap 
get me there?

I need to take that USB stick out of Ren as well&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�H�΂���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/5000020a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

//�e�F���L�g�ʏ�g�p�s�Ȃ��蒼���܂��B
	CreateMaskEX("�G�����", 200, Center, Middle, "cg/mask/ci�X���b�V��_02_01.png", false);
	CreateTextureSP("�G���g", 1000, Center, Middle, "cg/mask/ci�X���b�V��_02_01z.png");//�t�@�C�����ύX�i���q
	CreateTextureSP("�G�����/�G�ꖇ�G", 100, -260, -360, "cg/ev/l/evf09�g�������_l.jpg");
	CreateColorEX("�G�����/�G�F��", 1000, "000000");

	SetVertex("�G�����/�G�ꖇ�G", 1536, 288);

	Request("�G�����/�G�ꖇ�G", Smoothing);

	Zoom("�G�����/�G�ꖇ�G", 0, 800, 1000, null, true);
	Fade("�G�����/�G�F��", 0, 300, null, true);
	Move("�G�����/�G�ꖇ�G", 6000, @-160, @-90, Dxl1, false);

	CreateSE("SE01","se����_����_�H�΂���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("�G�����/�G�ꖇ�G", 500, 2000, 2000, Dxl3, false);
	DrawTransition("�G��", 500, 1000, 0, 100, Dxl2, "cg/data/beam_04_00_1.png", true);
	Zoom("�G�����/�G�ꖇ�G", 6000, 2200, 2200, null, false);

	Wait(1400);

	DrawTransition("�G��", 500, 0, 1000, 100, Dxl2, "cg/data/beam_04_00_0.png", true);
	Delete("�G�����/�G*");
	Delete("�G��*");
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
&.&.&.I just heard the sound of wings flapping&.

When I look up&, I see a single bird passing by&.

&.&.&.No&, it can't be&.

I go straight into denial&.

I'm just being over-sensitive&.
It was just a bird&. Just my imagination&.

I persuade myself that it was so&.

But&.&.&. it was useless&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreatePlainSP("�G��", 5000);
//�e�F�f�ނ��啝�ɕς��Ƃ̂��ƂȂ̂ŁA���ł��B���Ŋg��
	CreateTextureSP("�G�ꖇ�G", 101, -840, 0, "cg/ev/l/evf09�g�������_l.jpg");
	CreateTextureSP("�G�ꖇ�G��", 100, -290, -100, "cg/ev/m/evf09�g�������_m.jpg");
	Zoom("�G�ꖇ�G", 0, 1500, 1500, null, true);
	CreateTextureEX("�G�ꖇ�w�i", 105, Center, Middle, "cg/bg/bg390011_5_�v���`�i�W�F�C���ėp��.jpg");

	Request("�G�ꖇ�G", Smoothing);
	Request("�G�ꖇ�G��", Smoothing);
	SetVertex("�G�ꖇ�G��", 1536, 288);

	CreateSE("SE01","se����_����_�H�΂�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�G�ꖇ�G", 3000, @-480, @-270, Dxl1, false);
	DrawDelete("�G��", 500, 100, Dxl1, "beam_04_00_1", true);

	Wait(1000);
	Fade("�G�ꖇ�w�i", 1000, 1000, null, true);
	Delete("�G�ꖇ�G");

	Wait(1000);

	CreateSE("SE01","se����_����_�H�΂���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�G�ꖇ�G��", 500, 1100, 1100, Axl2, false);
	Wait(100);
	Move("�G�ꖇ�G��", 6000, @-50, @-26, Dxl1, false);
	FadeDelete("�G�ꖇ�w�i", 500, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
The sound of flapping wings comes back&.

My breathe escapes me when I see something gracefully soar through the sky&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
It's a cockatoo dyed with brilliant colors&.

&.&.&.I've been found&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	Delete("�G��*");

	DrawDelete("�G����", 300, 100, Dxl1, "slide_02_01_1", true);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/5000030a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE11","se�l��_����_����01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
The fear drives me to run as fast as I possibly can&.

Without even looking at the map&, I only thought about 
running away as far as possible&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	Rotate("@OnBG*", 0, @0, 180, @-30, null,true);
	Zoom("@OnBG*", 0, 2500, 2500, null, true);
	FadeBG(0,true);
	DrawTransition("�G����", 200, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", true);
	Wait(300);

	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	Rotate("@OnBG*", 0, @0, 180, @30, null,true);
	Zoom("@OnBG*", 0, 3000, 3000, null, true);
	FadeBG(0,true);
	DrawTransition("�G����", 200, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", true);
	Wait(300);

	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);
	DrawTransition("�G����", 200, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", true);
	Wait(300);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
I dashed through an unknown alleyway&.

{
	CreateSE("SE01","se����_����_�H�΂���01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
But&.&.&. the flapping was still following me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/5000040a01">
"Ha&, hah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE11","se�l��_����_����01L");
	MusicStart("SE11",0,700,0,1000,null,true);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	OnBG(10,"bg301041_5_�v���`�i�W�F�C���ʂ�H�n02");
	FadeBG(0,true);

	DrawDelete("�G����", 300, 100, Dxl1, "slide_01_01_0", true);

	SetVolumeEX("SE11", 2000, 0, null);
	SetFrequency("SE11", 1600, 300, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
&.&.&.!

The alleyway suddenly stopped&. And so did I&.

I've run out of breath&, unable to speak&, slouched over 
with my hands on my knees&.

I was fully prepared for what was coming to me next&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm3360.nss"]

}
