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


scene dm1120.nss_MAIN
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
	#bg302061_5_�O���b�^�[�K�i=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1130.nss";

}


scene dm1120.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

//�e�F���L������������Ȃ獷���ւ�
//	OnBG(10,"bg302011_5_�O���b�^�[����01����");
//	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302011_5_�O���b�^�[����01�V��.jpg");
	CreateTextureEXmul("�G�w�i��", 101, Center, Middle, "cg/bg/bg302011_5_�O���b�^�[����01�V��.jpg");
	CreateColorEX("�G�F��", 4000, "000000");


	Fade("�G�w�i��", 0, 500, null, true);
	Fade("�G�F��", 0, 600, null, true);
	DrawTransition("�G�F��", 0, 0, 300, 1000, null, "cg/data/circle_02_01_1.png", true);


	CreateSE("SE01","se�l��_����_����05");
	MusicStart("SE01",0,300,0,1000,null,false);

	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);

	FadeDelete("��w�i", 1000, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I woke up early the next morning&.

More like something woke me up&.

Some sounds did&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F������ƂP�K���畨��
	CreateSE("SE01","se����_�O���b�^�[����_���J��01");
	MusicStart("SE01",0,150,0,800,null,false);

	Wait(500);

	SetVolumeEX("SE*", 2000, 0, null);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I can hear something from downstairs on the first floor&.

First floor&.&.&. the entryway?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�G�w�i*");
	Delete("�G�F��");

	OnBG(10,"bg302061_5_�O���b�^�[�K�i");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I get up&, leave my room&, and peek down the staircase&.

{
	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The entryway door was shut closed&.

That must've been Koujaku leaving&.

I look at my Coil&, and realize that it's extremely early 
in the morning&.

Koujaku&.&.&.

My suspicion towards him grows bigger&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(1000,true);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000020a01">
"&.&.&.Ren&. Where do you think Koujaku went?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I call out to Ren&, who is still inside my bedroom&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/2000030a06">
"It is unknown&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000040a01">
"I'm going to suggest something very bad&, is that okay?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/2000050a06">
"What is it?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000060a01">
"Let's follow Koujaku&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/2000070a06">
"I won't say whether that's good or bad&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000080a01">
"I mean&, it's obvious something's up&. There's no way he
 knows anyone in Platinum Jail either&. He might just be
 sneaking around or something&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/2000090a06">
"There is the possibility&.&.&."

{
	FwPro("fw���t_�ʏ�_normal2",4850,"fw���t_�ʏ�_serious");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000100a01">
"If he's just going out to buy some breakfast&, that's fine
 too&. Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);



	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	Wait(500);
	CreateSE("SE01","se����_�h�A��_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

	SoundPlay("@dm004",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I put Ren in my bag and quickly make my way out of Glitter&.

I feel awkward doing this&.
It's not as if I've lost all my bearings&, but&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/2000110a06">
"Aoba&, this way&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
I turn my head just as Ren says&, and see a man in casual 
red clothing some distance away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000120a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
He really doesn't look like he's out to get food or 
anything&.&.&.

And where is he going?
On a walk? Or&.&.&.

To that girl from yesterday's place?

No way&.&.&. didn't I tell him to be careful just last night?

&.&.&.Looks like he didn't listen at all&.

I'm not clear on where exactly he's heading&, but I try to 
decide quickly&.

&.&.&.Which is what I wanted to do&, but I'm not able to calm 
my suspicions at all&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0059]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/2000130a06">
"Aoba&, you're thinking too hard again&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/2000140a01">
"&.&.&.I know&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I wonder what Koujaku could be thinking&. All I can do is 
wait and believe in him&.

I can't just follow him around like this all day&, I need 
to get more information on Toue&.

&.&.&.But&.

I can't get my mind off Koujaku either&. Where is he going?

More than suspecting him&.&.&. I just want to know where 
he's heading to so I can feel at ease&.

I'm drowning in guilt&, and start to chase after Koujaku&, 
hoping I won't get caught&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//�����t�@�C��["dm1130.nss"]

}
