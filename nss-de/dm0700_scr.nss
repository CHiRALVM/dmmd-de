//<continuation number="170">
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


scene dm0700_scr.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0710_scr.nss";

}


scene dm0700_scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//�������u���P�F���������͌�Œ����v

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg105011_1_�h�X�^�W�I���r�[");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);
	Wait(500);
	FadeDelete("�G�F��", 2000, null, true);

	Wait(300);

	//SoundPlay("@dm017",5000,450,true);//�\�I

//���~�Y�L�̐��_���E�F
//�@�ꏊ�͋��Z����̃~�Y�L�̓X�B
//�@�����Ⴎ����Ƃ�������̃`�[�������o�[��q�̊炪���荬����A
//�@���イ���イ�ɂȂ��ăN�X�N�X�΂��Ȃ���\�b�����Ă���B
//�@�`�[�������o�[��q�̊�͂̂��؂�ڂ��ŁA�����������Ă��ԁB

	CreateSE("SEL01","se��_�K��_�����01L");
	MusicStart("SEL01",3000,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]

&.&.&.&.&.
Wha&.&.&.t&.&.&.?
{	Wait(300);}

This is&.&.&.

This is Mizuki's shop&.

But it's a little different&.

Inside it are countless customers&, more than it's ever had before&.

But every one of them&.&.&.

They're all missing a face&.

Only bright red&, slimy mouths were wriggling with a joyful giggle to them&.

And even more so&, I could hear what everyone was saying&, 
word for word&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
//�y���z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="��" class="��" src="voice/dm07/0000010e31">
"Eh&, Rib is so out of style!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�j�z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="�j" class="�j" src="voice/dm07/0000020e34">
"Yeah&, Rhyme is so much better&."

//�y���z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="��" class="��" src="voice/dm07/0000030e31">
"Everyone doing it is dropping dead&."

//�y�j�z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="�j" class="�j" src="voice/dm07/0000040e34">
"Yeah&, Rib is gonna be dead soon&, right?"

//�y���z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="��" class="��" src="voice/dm07/0000050e31">
"People are just gonna do Rhyme from now on&."

//�y�j�z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="�j" class="�j" src="voice/dm07/0000060e34">
"Rib is gonna be out of the picture&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F�������͓��������ɂ��Ăr�d�Ƃ��ė����v
//�������u���P�F�����܂�����Ɓv

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="��" class="��" src="voice/dm07/0000070e31">
"Ahahahahahaha!"

//�y�j�z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="�j" class="�j" src="voice/dm07/0000080e34">
"Ahahahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/
	CreateVOICE("��","dm07/0000070e31");
	CreateVOICE("�j","dm07/0000080e34");
	MusicStart("��",0,1500,-250,1000,null,false);
	MusicStart("�j",0,1500,250,1000,null,false);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/0000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
All the rustling voices jumble up my mind&. They're so 
unbearably loud&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/0000100a01">
"Wha- What is this&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
This can't be real&.
Then&, is this a dream? <k>
Am I dreaming&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
But&.&.&. this sensation&.

It's like the time when I was pulled into Rhyme&.

And even&.&.&.

From a long time ago&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/0000110a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
I try to think of something&, anything to get these voices 
out of my head&.

Shut up&, shut up&.&.&.

My head hurts&.

The voices are giving me a horrible headache&.
Shit&.&.&.!

I'm going to go crazy&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��_�͂˂�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "000000");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0059]
I feel an unusual heat in both my hands and ears&, and 
something starts to pour out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/0000120a01">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
It's a black&, slimy liquid&, like tar&.

In the liquid there were a bunch of katakana and hiragana  characters mixed together&.

Just floating there&.

This&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F�������͓��������ɂ��Ăr�d�Ƃ��ė����v
//�������u���P�F�����܂�����Ɓv
/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y���z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="��" class="��" src="voice/dm07/0000130e31">
"Ahahahahahaha!"

//�y�j�z���������H�F�e�[�v�̑��񂵂̂悤�Ȑ�
<voice name="�j" class="�j" src="voice/dm07/0000140e34">
"Ahahahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	CreateVOICE("��","dm07/0000130e31");
	CreateVOICE("�j","dm07/0000140e34");
	MusicStart("��",0,1500,-250,1000,null,false);
	MusicStart("�j",0,1500,250,1000,null,false);

	CreateSE("SE01","se�[��_��_�͂˂�Q��01");
	MusicStart("SE01",0,1000,0,180,null,false);
	CreateColorSP("�G�F��", 4000, "000000");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/0000150a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_���C��_��͔�������������01.ogg");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Some of the words are coming into my mind&.&.&.!?

The black liquid begins to fill my ears&, and they suddenly become heavy&.

All the dead words are squeezing together&, and both of my  ears are overflowing&.&.&.



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/0000160a01">
"What's going on&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
If this is a dream&, I want to wake up soon&.

But this feels so real&.

If this was a dream&.&.&.

It doesn't matter&, I have to get out of here or else&.

As I search for the entrance&, I suddenly feel someone's 
gaze on me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Right now&.&.&. Is someone watching me?

When I turn around&, I pass a familiar face&.

&.&.&.A face&. They have a face&.

Although it was featureless&, this one had a face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/0000170a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
I start running after him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateSE("SE03","se�l��_����_�ߎC��10");
	MusicStart("SE03",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
The man with the featureless face suddenly stops speaking&, and I push through the crowd with both hands towards the 
inside of the shop&.

{
	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}

This place is a tattoo parlor&. 

I open the door and enter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0710_scr.nss"]

}
