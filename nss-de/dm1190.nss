//<continuation number="280">
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


scene dm1190.nss_MAIN
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
	#ev118�g���̎h��=true;
	#bg302031_5_�O���b�^�[�o�[�J�E���^�[=true;
	#bg302011_5_�O���b�^�[����01�x�b�h�p=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1200.nss";

}


scene dm1190.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���o�F�u�����o�v
	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	DrawTransition("�G�F��", 500, 1000, 800, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("�G�F��", 500, 800, 1000, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
	DrawTransition("�G�F��", 1500, 1000, 0, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);

	Wait(1000);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Blinking slowly&, I stare up at the ceiling&.

Looks like I've been out for some time&.

I'm not sure how long I was asleep&, but my body feels much better than before&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, -17, -207, "cg/bg/m/bg302011_5_�O���b�^�[����01_m.jpg");
	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	Move("�G�w�i", 0, @0, @-50, Dxl1, true);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i", 1000, @0, @50, Dxl1, false);
	FadeDelete("�G��", 1000, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I carefully get up from the bed&, making sure not to throw 
off Ren by accident&.

The nausea has faded away&, and I feel pretty good as a 
whole&.

{
	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�w�i", 500, null, true);
}
I get off the bed and drink the glass of water on the 
table in one sip&.

I was a lot more thirsty than I thought&.

I leave the room&, wanting more to drink&.

I feel just a little dizzy&, but I keep walking anyway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg302031_5_�O���b�^�[�o�[�J�E���^�[");
	FadeBG(0,true);

	Delete("�G�w�i");

	FadeDelete("�G��", 1000, Dxl1, true);


	CreateSE("SE11","se�[��_��_�V�����[01");
	MusicStart("SE11",2000,300,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I go over to the bar counter and pour myself some more 
water&. I hear some sounds come from downstairs&.

The dim sound of water&. Koujaku?

&.&.&.I should go apologize for before&.
It would be bad if I just left it&.

I want to speak with Koujaku&.
There's even more we need to discuss&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE11", 500, 500, null);
	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(800,true);
	Wait(500);
	SetVolumeEX("SE11", 500, 700, null);
	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(500,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
I go downstairs and head towards the bathroom&.

I walk down the hallway and stand in front of the door 
where the sound is coming from&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev118�g���̎h��.jpg");
	CreateTextureSP("�G�d�u��", 1101, Center, Middle, "cg/ev/ev118�g���̎h��.jpg");

	Move("�G�d�u*", 0, @10, @0, null, true);
	Move("�G�d�u��", 0, @8, @0, null, true);

	CreateColorSP("�G�F��", 4000, "000000");
	DrawTransition("�G�F��", 0, 1000, 950, 15, null, "cg/data/slide_06_00_0.png", true);

	Request("�G�d�u��", OverlayRender);
	SetShade("�G�d�u��", MEDIUM);

	SetVolumeEX("SE11", 1000, 0, null);
	FadeDelete("�G��", 1000, null, true);

	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I open it a little&, but stop myself&.

I peek through the small gap of the door&, and see some 
bright colors&. It's not the red of his kimono&.

What is that&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	SoundPlay("@dm015",0,450,true);

	Move("�G�d�u*", 1000, @-25, @0, null, false);
	FadeDelete("�G�d�u��", 1000, Dxl1, false);
	DrawTransition("�G�F��", 1000, 900, 700, 50, null, "cg/data/slide_06_00_0.png", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I control my beathing and push on the knob just a little 
bit so I can see better&.

Inside is Koujaku&, he looks like he's washing his kimono 
in the sink&. I can hear the sound of water running and the 
squelch of fabric being rubbed&.

He doesn't notice me with his back turned to me&.

My eyes are locked onto the vivid display on his back&.

&.&.&.A tattoo&.

Sprawled across his back were beautiful&, blooming red 
flowers&.

I can tell from the vibrant and fresh colors that it's the real deal&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreateTextureEX("�G�ꖇ�G", 5000, Center, Middle, "cg/ev/m/ev118�g���̎h��_m.Jpg");

	Move("�G�ꖇ�G", 2000, @0, @-100, Dxl1, false);
	Fade("�G�ꖇ�G", 2000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Seeing such a marverlous tattoo puts me into a sort of 
shock&.

Not just the tattoo&. Koujaku is covered in scars&. This is 
the first time I've ever seen them&.

When Koujaku returned to the island&, all I ever saw were 
the scars on his face and hands&.

He would just avoid the subject and smile away without 
saying any more about it&.

The scars on his chest were easily from his childhood&, but I couldn't think of the reason for getting a tattoo all    over his body&.

The Koujaku I see now only has faint traces of scars&. 
They've been there for some time&.

What would you have to go through to get that many scars?

The tattoo and the scars must've all happened when he went to the mainland&.

&.&.&.This is the Koujaku I don't know&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�ꖇ�G", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
If I had never seen this&, I never would've known&.

What happened to Koujaku when he was off the island&.&.&.?

It wasn't as if it was just for a little while&, though&. I 
thought I knew everything about Koujaku after he came back home&.

All I know is the old Koujaku from my past&.

The Koujaku I see here now&.&.&. I don't know who he is&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F����", 5000, "000000");
	Fade("�G�F����", 1000, 1000, null, true);
	PrintGO("��w�i", 20000);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(0,true);


	FadeDelete("��w�i", 500, null, true);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
I step back from the door&, wondering how close I actually 
am to him&.

I realize that I had been holding my breath for some time&, and quietly breathe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(1000,true);

	Wait(500);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(1000,true);

	Wait(500);

	CreateColorSP("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 300, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
I stumble my way back up the stairs and into my bed&.

The tattoo on his back&. The countless scars&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
I couldn't count how many things were swirling around in 
my mind from then on&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I close my eyes and calm down&, and then the door to my 
room opens&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_normal");
	FadeSt("C",0,true);

	FadeDelete("�G�F��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
&.&.&.It's Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_�O���b�^�[����01�x�b�h�p");
	FadeBG(0,true);

	DeleteSt("C", 0,true);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
I turn over right away towards the wall&, away from him&.

I don't want to let Koujaku&, who's tense enough&, see my 
face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F�ȍ~�͍g���̊�\���Ȃ��v

	//Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000040a02">
"The bathroom dryer really helped me out&. It works really
 quick&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
He speaks with his usual tone&.

So I'll respond by being casual as well&.

Like nothing is wrong&.

But&.&.&.

I can't bring myself to do that&.

Still facing the wall&, I open my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000050a01">
"&.&.&.Koujaku&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000060a02">
"Hm?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000070a01">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000080a02">
"What is it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000090a01">
"What are you hiding from me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	//Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000100a02">
"&.&.&.What? Where'd this come from?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000110a01">
"Don't avoid the question&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0076]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000120a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0077]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000130a01">
"I don't know if I can trust you anymore&. I don't have it
 left in me&. I don't know anything about you anymore&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
&.&.&.No&.
That wasn't what I wanted to say&.

I'm not sure whether to keep on talking&, but I just keep 
my mouth moving&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	FwPro("fw���t_�ʏ�_worry",4700,"fw���t_�ʏ�_worry4");
	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000140a01">
"I don't know about the time when you were off Midorijima&.
 I want to&, but I don't know how I can come to know&.&.&."

{
	FwPro("fw���t_�ʏ�_worry4",9000,"fw���t_�ʏ�_worry");
//	FwPro2("fw���t_�ʏ�_think",6100,"fw���t_�ʏ�_worry",3400,"fw���t_�ʏ�_shock4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000150a01">
"Right now&, I need to figure things out so I can get to
 Toue&. I can't horse around&. But&.&.&."

{
//	FwPro("fw���t_�ʏ�_sad",3200,"fw���t_�ʏ�_pain2");
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000160a01">
"&.&.&.I don't have it in me to trust you anymore&. You're not
 giving me any reason to&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0099]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000170a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000180a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	PrintGO("��w�i", 20000);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_think");
	FadeSt("C",0,true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,900,null,false);

	CreateSE("SE02","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("��w�i", 300, Dxl1, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
I think on what I just said&, and get up to look at Koujaku&.

Koujaku has a stern look on his face&, and just stares at 
his feet&.

Regret pools up inside me when I look at his face&.

Right as I find another thing to say&, Koujaku opens his 
mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_think2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000190a02">
"No matter-"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000200a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_think2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000210a02">
"No matter what&.&.&. I can't tell you&. I'm sorry&, Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
He looks at me with a painful and anxious expression&, 
giving me the same refusal as last time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_cry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000220a02">
"If I tell you&, I'll just be causing you more pain&. Enough
 that I'd want to hurt myself&. If you can't believe in me&.&.
 Then that's how it is&."

{	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000230a02">
"But the fact that I want to help you isn't a lie&."

{
	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_cool");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000231a02">
"So at least believe in that&. It's hard for me to say this
 but&.&.&. Please&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000240a01">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000241a01">
"&.&.&.I understand&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0119]
I couldn't answer&.&.&. any other way&.

No matter how much we talk&, I won't reach Koujaku&. Nothing has or will change&.

I can only gently brush against him&, and our distance 
stays the same&.

If he tells me that he won't say anything&, it's not worth 
it for me to keep trying to pry&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_sad2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000250a02">
"I'm sorry for making you feel so awful&. You should sleep
 some more&. I'll be here&, so call me if you need anything&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000260a01">
"&.&.&.Okay&."

{	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_sad3");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/9000270a02">
"&.&.&.Night&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Wait(500);

//���r�d�F�Â��Ƀh�A��߂鉹
	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
Koujaku leaves the room&.

He carefully closes the door&, and the faint sound of it 
shutting reaches my ears&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
I shut my eyes close and throw my face into the bed&.

Koujaku was worried about me&, and I wanted to trust him&, 
but&.&.&.

I thought we felt the same way&, but we changed somewhere&.

Why am I acting so impatient&.&.&.?

&.&.This isn't the time to get hung over something like this&.

I need to focus on why I came to Platinum Jail; I can't 
act carefree like this&.

I know that very well&, but it's hard for me to think 
straight&.

Koujaku said some awful things to me&, but aren't I the one who's getting off track here?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/9000280a01">
"&.&.&.God damn it&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
I can't rid myself of the anger that's boiling over&, and 
waves of regret and self hatred once again hit me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm1200.nss"]

	ClearFadeAll(2000, true);
	Wait(1000);

}
