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


scene dm5370.nss_MAIN
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
	
	#bg304041_5_���]�^���[�����G���A������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5380.nss";

}


scene dm5370.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm018",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304041_5_���]�^���[�����G���A������");
	FadeBG(0,true);

	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("@dm*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
With the man's card&, the door opens&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 300, -1024, InBottom, "cg/bg/l/bg304041_5_���]�^���[�����G���A������_l.jpg");

	CreateSE("SE02","se��_�[��_�|�{�^���N01L");
	MusicStart("SE02",1000,700,0,500,null,true);

	CreateSE("SE03","se��_�[��_�|�{�^���N01L");
	MusicStart("SE03",3000,300,-300,550,null,true);
	CreateSE("SE04","se��_�[��_�|�{�^���N01L");
	MusicStart("SE04",3000,300,300,700,null,true);


	Move("�G�w�i", 3000, @0, @288, Dxl2, false);
	Wait(500);
	FadeDelete("�G��", 1000, null, true);

	Wait(2000);

	FadeDelete("�G�w�i", 500, null, true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/7000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Before placing my foot through the door&, before sealing my fate&, I hesitate&.

The room is dim&, lit up by the flickering lights of 
various machines&. It feels eerie&, as if eyes are 
watching me from afar&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F�����ɃY�[��
	CreateTextureEX("�G�w�i", 105, -50, Middle, "cg/bg/l/bg304041_5_���]�^���[�����G���A������_l.jpg");
	CreateTextureEX("�G�w�i��", 100, -974, Middle, "cg/bg/l/bg304041_5_���]�^���[�����G���A������_l.jpg");

	Move("�G�w�i", 1000, @50, @0, Dxl1, false);
	Fade("�G�w�i", 1000, 1000, null, true);
	Fade("�G�w�i��", 0, 1000, null, true);
	Wait(500);
	Move("�G�w�i��", 1000, @-50, @0, Dxl1, false);
	FadeDelete("�G�w�i", 1000, null, true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
There are large water tanks standing all around the room&, 
all with strange things inside them&.

Several living things twitch in the tanks&, and one has a 
massive clump of hair growing inside of it&.

They remain inside whatever liquid the tank holds&, 
pulsing&, alive&.

One of them holds something&.&.&. Something strangely like a 
human&, with a face&, arms&, and legs similar to what any 
person would have&.

But it clearly isn't one&. 

What in the world? What is that?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE02", 5000, 0, null);

	Fade("�G�w�i��", 1000, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I enter the room with caution&, checking to see if anyone 
else is inside&.

All of this seems to be research equipment&.

Why would Toue have all of this?
What are these suspicious-looking specimens?

And where are all the people&.&.&.?

No other words except curses come to mind&.

I look into the tanks&, bewildered&, and I soon feel a gaze 
coming from somewhere inside of the room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i��", 200, @-50, @0, Dxl1, false);
	Fade("�G�w�i��", 200, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.Something that looks like a mermaid&, with their lower 
half like a fish's with a tail and fins&, is looking at me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 100, 0, null);

//���o���I�Ɛl�����K���X���������@��
	CreateSE("SE01","se�l��_�Ռ�_�@��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	Shake("�G��", 500, 0, 20, 0, 0, 500, null, false);
	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/7000020a01">
"-!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
The pure white mermaid widens its eyes and knocks on the 
glass&.

It flaps its mouth open and closed&, as if trying to speak 
to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/7000030a01">
"Wha-What&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_���ǂ남�ǂ�01");
	MusicStart("SE01",5000,300,0,2000,null,true);

	DeleteFw();
	FadeDelete("�G�w�i��", 250, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
The other things in the water tanks&.&.&.

It's either my imagination&, or they're staring at me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 105, 0, Middle, "cg/bg/m/bg304041_5_���]�^���[�����G���A������_m.jpg");

	Move("�G�w�i", 20000, @-512, @0, AxlDxl, false);
	Fade("�G�w�i", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//���W�{
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm53/7000040b14">
"&.&.&.You&.&.&. really- came&.&.&."

//���W�{
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm53/7000050b14">
"I was- wait ing&.&.&. always&.&.&."

//���W�{
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm53/7000060b14">
"Hurry&, to- me&.&.&."

//���W�{
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm53/7000070b14">
"Destroy -me&.&.&."

//���W�{
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm53/7000080b14">
"With your po -wer&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Delete("�G�w�i");

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/7000090a01">
"&.&.&.&.&.!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("�G����", 5000, "BLACK");

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawTransition("�G����", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Wait(200);

	CreateSE("SE02","se�l��_�Ռ�_�@��02");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("�G�t���b�V����", 6000, "FFFFFF");
	Fade("�G�t���b�V����", 200, 1000, Dxl1, true);

	Delete("�G�w�i");

	Wait(30);

	FadeDelete("�G�t���b�V����", 100, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
When I tried to leave the room&, something hit against me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSPover("��", 2000, "BLACK");

	CreateTextureSP("�G�w�i", 1000, -1016, -75, "cg/ev/l/evf02�����q�l�ÈłɘȂ�_l.jpg");
	CreateTextureSP("�G�w�i��", 800, Center, Middle, "cg/ev/evf02�����q�l�ÈłɘȂ�.jpg");
	CreateTextureSP("�G���S", 700, Center, Middle, "cg/ef/efl���S�����q�l.jpg");

	Move("�G�w�i", 500, @0, @-80, Dxl1, false);

	FadeDelete("�G����", 500, null, true);

	FadeDelete("��", 500, null, true);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/7000100a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
Due to the distraction of the water tanks&, a black figure 
had crept its way behind me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i", 500, @300, @0, Dxl3, false);
	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
And now there are more of them!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	Shake("�G��", 200, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/7000110a01">
"-! Hey&, what-! &.&.&.Let go&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreatePlainSP("�G��", 5000);
	Shake("�G��", 300, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,700,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
I try to escape&, but they catch me and hold me down to the floor&.

Who are these guys&.&.&.!?

When I turn my head to see their faces&, I see a certain 
design on their jacket&.

That's&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�w�i*", 500, Dxl1, true);

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
Morphine&.&.&.!!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5380.nss"]

}
