//<continuation number="420">
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


scene dm0530.nss_MAIN
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
	#bg106021_5_�p�r������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0540.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=1;

}


scene dm0530.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg106021_5_�p�r������");
	FadeBG(0,true);

	Wait(2000);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSP("�G��/�G����", 4000, "BLACK");
	DrawTransition("�G��/�G����", 0, 0, 200, 300, null, "cg/data/circle_02_00_1.png", true);


	CreateTextureSP("�G�w�i", 500, Center, Middle, "cg/bg/bg106021_5_�p�r������.jpg");
	SetShade("�G�w�i", MEDIUM);

	CreateColorSP("�G�F��", 5000, "000000");
	CreateColorEXsub("�G����", 3000, "WHITE");
	Fade("�G����", 0, 150, null, true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.&.&.&.&.&.&.&.

Mn&.&.&.&.


&.&.&.&.&.What's that smell&.&.&.?

I've smelled it before somewhere&.
It was a spice&.&.&.

Herbs?

Cinnamon?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 1500, 0, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I slowly open my eyes&, and I see someone standing some 
distance away from me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
That's&.&.&. the giant man&.

What was his name&, Mink&.&.&.?

He&.&.&.
What's he doing?

He casts his gaze down to the flame of a single lit candle&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Is he saying something?

I can't hear what it is&.

I wonder what he's saying&.&.&.

What is&.&.&.

He&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�w�i", 2000, 1000, null, false);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 2000, 1000, null, true);

	Delete("�G����");
	DeleteSt("C", 0,true);
	Wait(2000);


	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSP("�G��/�G����", 4000, "BLACK");
	DrawTransition("�G��/�G����", 0, 0, 200, 300, null, "cg/data/circle_02_00_1.png", true);

//�����o�F���Ԍo��
	FadeDelete("�G�F��", 2000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.&.&.&.

&.&.&.&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F����
	HAFade(6000, 0, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
&.&.&.Ow&.

Owowowow&.

My head hurts&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G��/�G*");
	Delete("�G��*");

	CreateColorEX("�G����", 4000, "BLACK");
	CreateTextureSP("�G�w�i", 500, -720, Middle, "cg/bg/l/bg106021_5_�p�r������_l.jpg");
	Move("�G�w�i", 0, @100, -50, null, true);

	Fade("�G����", 0, 300, null, true);

	Move("�G�w�i", 1000, @0, @-50, null, false);
	FadeDelete("�G��", 1000, null, true);

//	Fade("�G����", 500, 0, null, true);

	FadeDelete("�G����", 500, null, true);


	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The sharp pain forces me awake and I open my eyes to see a worn out ceiling&.

&.&.&.Where is this?
What happened to me&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, -150, -137, "cg/ev/m/ev052���t���u����a_m.jpg");

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
&.&.&.Right&.
I was about to be raped&.&.&.

&.&.&.What happened after that?
I'm still wearing all my clothes&.&.&.

At any any rate&, this room is most likely a different one  than before&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F����
	HAFade(2000, 0,true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000020a01">
"Owowow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I have to take my pills&.&.&.
Wait&, my bag&.

Where'd my bag go?
Ren was in there too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���h�A���J���鉹
	CreateSE("SE01","se����_�h�A�S_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000030a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	SetVolumeEX("SE*", 1500, 0, null);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("�G�w�i", 300, @0, @-50, Dxl1, false);
	FadeDelete("�G�w�i", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I hear the sound of the door opening&, jump up&, and forget 
the pain for a moment&.

Who is it? Mink?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	SoundPlay("@dm006",0,450,true);

//�����o�F�O���t�B�b�N������fw�ύX�\������
	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000040e01">
"&.&.&.So you're awake?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
A skinny&, lanky man peeks through the rusty iron door&.

When the man sees me&, he smiles and then he comes into the room&.

Who is this guy&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000050e01">
"How do you feel? It must've been traumatic to have people
 suddenly try and rape you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000060e01">
"It was because no one can go against Mink&. I can't even
 tell what he's thinking&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000070a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
The man comes into the room&, alone&. I glare at him and 
wave him away with my hand in a panic&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000080e01">
"I'm not going to do what Mink said&, so don't look so
 afraid&, okay? &.&.&.Aoba's your name&, right?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000090a01">
"! Who are you!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000100e01">
"Just like I thought&. Aoba&, from Junk Shop Heibon&, right?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000110a01">
"You know about Heibon?"

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000120e01">
"Yeah&. I used to go there to buy a lot of things a long
 time ago&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
He watches for my reaction and gives off a happy smile&. 

In this situation&, it's music to my ears to hear the shop'sname&.

Since he was a customer&, I almost want to be able to 
confide in him&.

But I can't do that&.

This guy is kind of weird&.

He's fidgeting&, and supicious on top of that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000130e01">
"It's so exciting to be able to meet you here&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000140a01">
"Y-Yeah&. Right&."

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000150e01">
"Really? When I heard you were caught&, I thought of
 something really good&."

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000160e01">
"I thought that we should get out of here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000170a01">
"&.&.&.Are you serious?"

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000180e01">
"Well of course! Isn't it a good idea?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000190a01">
"But&.&.&. Aren't Mink's people all around here?"

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000200e01">
"It's fine&, it's fine&. I'll do something about it&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000210a01">
"You'll do something about it&.&.&. What exactly would you
 do?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000220e01">
"I said it'll be fine&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000230a01">
"So then&, how?"

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000240e01">
"&.&.&.You just can't stay quiet&, can you?"

//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000250e01">
"I said that it'd be fine&, didn't I?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se�퓬_�e_�\����02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 5, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Wait(300);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000260a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
Hanging onto me&, the man's face suddenly changes and he 
pulls out a gun&.

His eyes widen and his mouth curls into a grin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000270e01">
"Hey&, it'll be fine&. I'll get you out of here&, so&, please
 let me hear your voice more&, okay?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000280a01">
"My voice&.&.&.?"

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000290e01">
"Yeah&. You're the one who always answers for Heibon on the
 phone&."

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000300e01">
"I found your voice so mesmerizing from the first time I
 heard it&, you know? I would always call just so I could
 hear your voice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000310a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
So he only came to the shop for that&.&.&. There were so many other people who called the shop for the same reason too&.

So he's just one of them&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000320e01">
"So make sure to let me hear even more of your many voices&. I want to hear them&. Okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se����_�x�b�h_�Q��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE01","se����_�x�b�h_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
He loads his gun&, and gets on his knees onto the bed&. He 
pushes the gun to me&, as if to gesture that I should lie 
down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0124]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000330e01">
"Don't move! If you try to escape I'll shoot&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000340a01">
"&.&.&.&.&."

</PRE>

	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000350e01">
"Whatever's fine&, it's not too demanding&. I just want to
 hear your voice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	CreateSE("SE02","se�[��_��_�͂˂�04");
	MusicStart("SE01",0,400,0,1000,null,false);
	SetVolumeEX("SE01", 200, 0, null);
	Wait(300);
	MusicStart("SE02",0,500,0,1500,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
He raises his voice and pants loudly&, and then begins to 
touch my face&.

Disgusting&.&.&.!

Besides&, why does he have to keep looking into my eyes&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	HAFade(2000, 0,true);

	Wait(200);

	HAFade(2000, 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
Ouch&.&.&.
My head&.&.&.

Shit&.&.&.
Why does it have to start up again now&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);

	CreateSE("SE01","se����_�h�A�S_���J������01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Wait(300);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000360a01">
"!"

{	Fw("fwm�d�b�̐l_�ʏ�_normal");}
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000370e01">
"&.&.&.Eek!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
The door to the room flies open&, and the man turns around&, face turning pale as a ghost&, dropping his gun&.

{
	St("C",740, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt("C",300,true);
}
The one standing there was&.&.&. Mink&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm05/3000380a05">
"&.&.&.What are you doing?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000390e01">
"F-Forgive me!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����06");
	MusicStart("SE01",0,700,0,000,null,false);
	DeleteSt("C", 300,true);

	Wait(500);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0153]
Mink comes inside and grabs the jumbled man by the collar&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0154]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/3000400e01">
"Eeek! I'm sorry&, I'm sorry!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);

	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0155]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm05/3000410a05">
"Get your ass over here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_shock2",900,"fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/3000420a01">
"Eh? Ow&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
Mink grabs me by the arm and drags me off of the bed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1500, true);

//�����t�@�C��["dm0540.nss"]

}
