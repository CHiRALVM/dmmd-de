//<continuation number="110">
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


scene dm1250.nss_MAIN
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
 	RainDropDelete(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	RainDrop2Delete(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	$GameName = "dm1260.nss";

$HALevel=2;

}


scene dm1250.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm015",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/5000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
When the door closes&.&.&. it finally feels as if time starts to move again&.

As if I had just been suffocating&, my shoulders shake and 
I take frantic breaths&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/5000020a01">
"Hah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i20", 20, 0, -500, "cg/bg/l/bg302011_5_�O���b�^�[����01_l.jpg");
	Fade("�G�w�i20", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I let out a shivering breath and stretch out on the bed&.

My head still hurts&.
I close my eyes and the pain pulses&.

My head feels like it's in a blender&.

The strain and terror lingers&, and the inside of my ear 
has gone numb&.

Koujaku&.&.&. That wasn't the real him&.

He just took it out on me and did that on impulse&.

I can still&.&.&. feel the wetness on my neck and ear&.

That was a different person&, not Koujaku&.
He came back to his senses when I screamed&.

That sensation from earlier&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F�����t�̌��e�������
	CreateColorEX("�G�F��", 12000, "000000");
	Fade("�G�F��", 300, 1000, null, true);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,-501,30,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	CreateColorEX("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("�G�������t�U�f���B", 0, 1000, null, true);
	Fade("�G�������t�U�f", 0, 1000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	$HALevel=2;

	Wait(200);

	CreateSE("SE01","se�[��_����_�h��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("�G�F��");

	TemptationAobaOut(200,false);

	Wait(500);

	TemptationDelete("@�G�������t�U�f���B");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginFN(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainEX("�G��", 300100);
	SetShade("�G��", MEDIUM);
	Fade("�G��", 1000, 1000, null, true);

	Delete("@text0014");
	TextBoxDelete(0);


	Fade("�G��", 500, 0, null, true);
	FadeDelete("�G�F��", 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Was that&.&.&.
The power of Scrap?

And that's why Koujaku came to?

Granny did say that my power pulled people in&.

That I can enter their minds and make them work as I wish&.

And depending on how you use it&.&.&. you can have the power 
to destroy a person's mind&.

Did that power just save me?

&.&.&.&.&.

What if back then&, if I didn't bring Koujaku back&.&.&. What 
would've happened?

Fear and dread slither through my body&.

&.&.&.It was terrifying&.

Koujaku wasn't himself&, but&.&.&.

I was terrified of destroying our relationship&.

But what should I do now?
How should I act around Koujaku now?

Am I telling myself that even if he went through with 
that&, we'd still be the same?

Of course that wouldn't work out&.

It would've crumbled right there too&.

Koujaku and I&.&.&.
We can't go back to how we used to be anymore&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Move("�G�w�i*", 500, @0, @50, Dxl1, true);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/5000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I don't want that&.

Even after that&, I still don't hate Koujaku&.

It was just so shockingly scary&.

But what hurts the most&.&.&. is that I don't know why 
Koujaku did that&.

He still won't tell me anything&,

I'm just sitting here watching again&.&.&.

&.&.&.<k>If I know the person very well&, I can insert my will 
to his consciousness&.

Granny told me that I was able to do that as well&.

If that's true&, I could strongly wish for Koujaku to tell 
me more about him&. 

But&.&.&.

I don't want to use my power like that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	Fade("�G�F��", 0, 1000, null, true);

	Move("�G�d�u", 0, @0, @20, null, true);
	Zoom("�G�d�u", 0, 1100, 1100, null, true);
	Fade("�G�d�u", 0, 1000, null, true);
	Fade("�G�����B", 0, 1000, null, true);

	Fade("�G�F��", 0, 0, null, true);
	Wait(30);
	Fade("�G�F��", 200, 1000, null, false);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029a]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


/*
	Fade("�G�F��", 0, 1000, null, true);

	Move("�G�d�u", 0, @0, @20, null, true);
	Zoom("�G�d�u", 0, 1300, 1300, null, true);
	Fade("�G�d�u", 0, 1000, null, true);
	Fade("�G�����B", 0, 1000, null, true);

	Fade("�G�F��", 0, 0, null, true);
	Wait(30);
	Fade("�G�F��", 200, 1000, null, false);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029b]
�@�\�\�\�\�@Destroy him�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	Fade("�G�d�u", 0, 0, null, true);
	Fade("�G�����B", 0, 0, null, true);
	Fade("�G�F��", 200, 0, null, true);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029c]
Someone's voice reverberates in my still pounding head&.

It's as if it's blowing away my consciousness&.

It feels like something is dragging my feet into a 
bottomless swamp&.

I&.&.&. what should I do?

{
	SetVolumeEX("@dm*", 2000, 0, null);
	CreateSE("SE01","se����_����_�@���@��01");
	MusicStart("SE01",0,700,0,1000,null,false);

}
I'm at a loss when I suddenly hear the sound of a door 
creaking open&.

What now?

{
	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i*", 500, @0, @80, Dxl1, false);
	FadeDelete("�G�w�i*", 500, null, true);
}
I get up from the bed and walk towards the door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
When I look to my feet&, I see a ball of blue fur wagging 
its tail&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/5000040a01">
"&.&.&.Ren&."

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/5000050a06">
"Aoba&, are you okay?"

{
	Fw("fw���t_�ʏ�_worry2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/5000060a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��19");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I crouch down and pick up Ren&.

I feel the usual sensation of his fur&, and cover my face 
with it&.

My arms still hurt from when Koujaku was holding them down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/5000070a06">
"Aoba?"

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/5000080a01">
"&.&.&.I'm okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I mutter that to myself&, and put Ren back down on the 
ground&.

&.&.&.I'm fine&. I'm fine&.

I recite that in my head because I feel like I'll fall 
down if I don't&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I fix my clothes back to normal&, pick up Ren&, and then 
walk down to the first floor&.

{
	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,600,0,1000,null,false);
}
I pick up my bag sitting on the sofa and place Ren inside 
it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/5000090a06">
"Are you going out?"

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/5000100a01">
"Yeah&. I&.&.&. I could use some fresh air&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/5000110a06">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�O���b�^�[����_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I pet Ren's head and leave through the entryway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE11","se��_���R_�J01L");
	MusicStart("SE11",1000,200,0,1000,null,true);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//	RainDrop(740,0,128);

	RainDrop(1000,0,16);
	RainDrop2(501,0,64);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Rain is still falling&.

But it seems much lighter than before&.

I breathe in some open air and feel just a bit of my 
anxiety wash away&.

Without an umbrella&, I walk around the streets&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//�����t�@�C��["dm1260.nss"]

}
