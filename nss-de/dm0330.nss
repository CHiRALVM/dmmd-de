//<continuation number="320">
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


scene dm0330.nss_MAIN
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
	#ev033�k�����������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0340.nss";

}


scene dm0330.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg101022_5_���Z����ʂ藠�H�n02_m.jpg");

	SetShade("�G�w�i", MEDIUM);
	Rotate("�G�w�i", 0, @0, @0, @5, null,true);
	Request("�G�w�i", Smoothing);
	Move("�G�w�i", 0, -425, @0, null, true);

	Wait(1000);

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//	DrawDelete("��w�i", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("��w�i", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("��w�i", 500, 100, Dxl3, "slide_01_02_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Granny had fallen down&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
After I hang up the phone call from Yoshie-san&, I explain 
the situation to Mizuki and hurry out to Delivery Works&.

She fell down on her way to a patient's house where she was
going to deliver some medicine that she had prescribed&. 
She was then taken to the Delivery Works which happened to 
be nearby&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg101051_5_���Z����ʂ藠�H�n06_m.jpg");

	SetShade("�G�w�i", MEDIUM);
	Rotate("�G�w�i", 0, @0, @0, @-5, null,true);
	Request("�G�w�i", Smoothing);
	Move("�G�w�i", 0, @0, -200, null, true);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06");
	FadeBG(0,true);

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolumeEX("SE*", 3000, 0, null);

//	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_02_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Anyway&.&.&. I ran at full speed&.

My heart felt like it was about to explode and I had no 
breath left&.

My whole body is tense&, my fingers and toes tingling&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ef/efbg����001.jpg");
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	Rotate("�G�w�i", 0, @0, @0, @-30, null,true);

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolumeEX("SE*", 3000, 0, null);

//	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_02_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Granny's collapsed from overwork before&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreatePlainSP("�G��", 5000);
//	CreateTextureSP("�G�t", 100, Center, Middle, "cg/ev/ev900�̂̍r��Ă����t.jpg");
//	CreateColorEXsub("�G�t��", 4000, "WHITE");
//	Fade("�G�t��", 0, 300, null, true);
//	SetShade("�G�t", MEDIUM);
//	Wait(16);
//	Delete("�G��");
//
//	Wait(40);
//
//	CreatePlainSP("�G��", 5000);
//
//	Delete("�G�t*");
//	Wait(16);
//	Delete("�G��");
//
//
//	Wait(500);
//
//	CreatePlainSP("�G��", 5000);
//	CreateTextureSP("�G�t", 100, Center, Middle, "cg/ev/ev900�����t��.jpg");
//	CreateColorEXsub("�G�t��", 4000, "WHITE");
//	Fade("�G�t��", 0, 300, null, true);
//	SetShade("�G�t", MEDIUM);
//	Wait(16);
//	Delete("�G��");
//
//	Wait(40);
//
//	CreatePlainSP("�G��", 5000);
//
//	Delete("�G�t*");
//	Wait(16);
//	Delete("�G��");
//
//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
It was because of&.&.&. me&. 
It was because I made her worry all the time&.

I honestly regret what happened back then&.

When I think of actually losing Granny&, I get so scared it makes me tremble&.

I don't want to think about it ever again&. 
Never again&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	Delete("�G�w�i");

	OnBG(10,"bg101011_3_���Z����ʂ�\");
	FadeBG(0,true);

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("�G����", 500, 100, Dxl3, "slide_01_02_0", true);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000010a01">
"&.&.&.Guh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I-I have to get to Granny quickly&.&.&.!

Granny&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("�G����", 5000, "BLACK");
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	SetVolumeEX("@dm*", 0, 0, null);

	Wait(1500);

	OnBG(10,"bg103011_5_�f���o���[���[�N�X�X��");
	FadeBG(0,true);

	CreateColorSP("�G����", 2000, "BLACK");
	Fade("�G����", 0, 500, null, true);

//	Wait(500);

//	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000020b03">
"You people are just exaggerating things&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G����", 1500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
&.&.&.That's the first thing I hear&.

When I rush into Delivery Works&, I see Granny leaning back in a chair&.

After seeing that&.&.&. 
I almost collapse on the spot&.

Granny had certainly fallen down&.

It turns out she can't move at all&.&.&. In other words&, she 
dislocated her hip&.

Apparently Yoshie-san who made the call had seen Granny in 
pain and was frightened to death&.

As soon as I enter the shop&, she apologizes earnestly with an "I'm so sorryyyy"&.

Honestly&, I'm a bit disappointed&, but&.&.&. I'm also glad 
it's nothing serious&.

What a relief&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Delete("�G����");

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
That said&, Granny can't walk so I have to carry her home&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

//������_�P�l����_�A�X�t�@���g�i�������j
	CreateSE("SE01","se�l��_����_����01�������L");
	MusicStart("SE01",0,600,0,800,null,true);

	Wait(1500);
	CreateTextureSP("�G�ꖇ�G��l", 100, Center, 0, "cg/ev/l/ev033�k�����������_l.jpg");
	CreateTextureSP("�G�ꖇ�G��l��", 50, Center, 0, "cg/ev/m/ev033�k�����������_m.jpg");

	Move("�G�ꖇ�G��l", 8000, @50, @0, null, false);
	FadeDelete("�G�F��", 2000, null, true);

	SetVolumeEX("SE*", 5000, 0, null);

	Wait(2000);

	FadeDelete("�G�ꖇ�G��l", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000030b03">
"Really&, you people are just exaggerating things&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm013",0,450,true);//����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000040a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Granny complains about the same thing as earlier while on 
my back&.

I walk home slowly to avoid moving her too much&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000050a01">
"It can't be helped&. Everyone's worried about you&, Granny&.
 I am too&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000060b03">
"I'm still healthy enough&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000070a01">
"I know that&, but still&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�ꖇ�G�@", 200, -974, -480, "cg/ev/l/ev033�k�����������_l.jpg");
	CreateTextureSP("�G�ꖇ�G�@��", 100, -512, -288, "cg/ev/m/ev033�k�����������_m.jpg");

	CreateSE("SE01","se����_����_����@01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Move("�G�ꖇ�G�@", 8000, @50, @0, null, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(1500);

	FadeDelete("�G�ꖇ�G�@", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Behind us&, Ren follows&, tapping along with his small legs&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreatePlainSP("�G��", 5000);

	Delete("�G�ꖇ*");

	CreateTextureSP("�G�ꖇ�G", 200, Center, 0, "cg/ev/ev033�k�����������.jpg");
	CreateTextureSP("�G�ꖇ�G��", 100, Center, 0, "cg/ev/ev033�k�����������.jpg");

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000080b03">
"When I can't move a little you treat me like I'm going to
 die right away&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,800,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000090a01">
"Owowow&. Don't kick me&. Anyway&, let's go to the hospital
 tomorrow? Okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
Since Granny is quite rowdy for her age&, I'm afraid I 
might drop her&.

And&.&.&. 
She was light&.

I never really thought too much about it&, but was she 
always this small?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
This is the first time I'd ever carried her on my back&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01�������L");
	MusicStart("SE01",0,600,0,800,null,true);

	CreateTextureEX("�G�ꖇ�G��l", 1000, 0, -70, "cg/ev/l/ev033�k�����������_l.jpg");
	Move("�G�ꖇ�G��l", 60000, -540, @0, null, false);
	Fade("�G�ꖇ�G��l", 1000, 1000, null, true);

	SetVolumeEX("SE*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000100a01">
"Thinking back&, you used to be the one to carry me around&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000110b03">
"Hmm?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000120a01">
"I was just talking about the past&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000130b03">
"&.&.&.Hmph&. Because you always went off on your own&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000140a01">
"On my own?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000150b03">
"Yes&. I would look away for a moment&, and before I knew it
 you'd be gone&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000160a01">
"Is that so? I can't remember at all&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000170b03">
"I'd get lonely&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000180a01">
"Lonely? Why?"

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000190b03">
"Because you only started to go off on your own once your
 parents were gone&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000200a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
I see&.

My memory of my parents is hazy&.

But I do remember the times when Granny carried me on her 
back&.

It was warm and smelled like her&. I would always calm down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000210b03">
"Well&, that was when you were small&, so I won't blame you&.
 But now you're all grown up and stupid&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000220a01">
"That's just how it is&. At this age it's normal to act
 differently than you did as a kid&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000230b03">
"Nobody said anything about that&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000240a01">
"Granny&, could you carry me on your back like in the old
 days? A challenge&, seeing as we're both healthy enough?"

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000250b03">
"Don't spout nonsense&. Are you trying to kill me?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000260a01">
"I'm just joking&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000270b03">
"Hmph&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�ꖇ�G��l", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000280a01">
"&.&.&.Granny&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000290b03">
"What is it?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000300a01">
"You're light&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm03/3000310b03">
"Shut your hole!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ߎC��or�y���@�����
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,800,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(200);

	CreateSE("SE02","se�l��_����_�@��02");
	MusicStart("SE02",0,900,0,1000,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/3000320a01">
"Ouch!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
I'm slapped hard on the side of my head&.

But for some reason I begin to feel happy and smile to 
myself&.

I'm so relieved that Granny's safe&.

When I think that someday this noisiness will be gone&, I 
feel lonely&.

I walk silently down the darkening road&, feeling Granny's 
warmth on my back&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(3000);

//�����t�@�C��["dm0340.nss"]

}
