//<continuation number="2010">
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


scene dm2552h.nss_MAIN
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
	$GameName = "dm2553h.nss";

}


scene dm2552h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm013",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg107011_1_�a�@��");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
That was an embarrassing thing to say&.&.&.

{
	Fw("fw���t_�ʏ�_cranky2h");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000830a01">
"&.&.&.You're injured anyway&. Can't have you moving around too much&."

{
	Fw("fw�m�C�Y_�ʏ�a�@��_smile2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000840a03">
"My own senior is willing to give me some service?
 Awesome&."

{
	Fw("fw���t_�ʏ�_cranky3h");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000850a01">
"Shut up&. Hurry up&, it'll be bad if someone comes&."

{
	Fw("fw�m�C�Y_�ʏ�a�@��_smile");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000860a03">
"You aren't setting the right mood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0231]
Noiz smiled with a "show me what you got" sort of face and I irritatedly shut him up by kissing him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 100, -210, -394, "cg/bg/l/bg107011_1_�a�@��_l.jpg");
	Move("�G�w�i100", 300, -210, -424, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0232]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000870a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
We were only pushing our lips together at first&, but it 
turned into a tender kiss&.

I undid the knot on Noiz's clothes and put both of my hands
inside; his skin was a little hot and dry&.

I slid my hands down from the chest&, to his stomach&, and 
then down to his thighs&.

{
	Fw("fw�m�C�Y_�ʏ�a�@��_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000880a03">
"Wait&."

{
	Fw("fw���t_�ʏ�_worry2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000890a01">
"?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0241]
Noiz suddenly said in a serious tone&, and I stopped my 
hands&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw�m�C�Y_�ʏ�a�@��_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0242]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000900a03">
"Stay like this for a little bit&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0243]
Noiz puts his hands on mine and closes his eyes&.

{
	Fw("fw�m�C�Y_�ʏ�a�@��_cool2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000910a03">
"They're warm&. Both your fingers and your palms feel hot&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
&.&.&.So that's it&.

Noiz can actually feel sensations now&.

Before&, his sense of touch was only dull and barely 
recognizable&, but he can feel me clearly now&.

It's a normal thing for people&, but this is an important 
first for Noiz&.

I didn't move like Noiz asked&.

And before long&, Noiz opened his eyes&.

Seeing that&, I slowly lowered my hands&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fw�m�C�Y_�ʏ�a�@��_serious");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000920a03">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��08");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
I stroked over the piercing on his navel between his tough abs&, gradually inching my fingers downwards&.&.&.

Noiz's half-hard dick was now exposed&.

The piercings on it were kind of disgusting&.&.&. but kind of exciting at the same time&.

{
	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i100", 800, @-70, @-50, Dxl1, true);
}
I shifted myself to lay by Noiz's legs and leaned my head 
over&.

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000930a01">
"&.&.&.&.Mn&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0261]
I licked his head&, held the base of it with my hands&, and  then held it in my mouth&.

{
	Fw("fw�m�C�Y_�ʏ�a�@��_angry3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000940a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
I move my hand while pushing my mouth deeper&, and let out 
gasping breaths&.

Noiz was slightly frowning but was looking at me with 
moist eyes&.

Although he couldn't feel it unless I bit it before&.&.&.
This must be the first time he's ever tasted this kind of 
feeling before&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000950a01">
"&.&.&.Does it feel good?"

{
	Fw("fw�m�C�Y_�ʏ�a�@��_ero");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000960a03">
"-! &.&.&.Don't ask&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0271]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000970a01">
"I won't know if you don't tell me&.&.&.!"

While I move my head&, I look up and can see the blood 
pooling into Noiz's cheeks&.

This&.&.&.is kind of fun&.
He's cute&.

I started to strangely tense up and focused on my mouth&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5000980a01">
"Ah&, mn&.&.&.Fu&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,600,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
While working my hands as hard as I could&, I moved my head to rub his dick against the inside of my cheek&. The 
piercing on it rubs against my tongue&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5000990a03">
"&.&.&.Ha&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0281]
Noiz's breaths are disgruntled&, and his cock swells even 
harder in my mouth&.

I slurp up the bitter semen and swallow&.

I become a little happy knowing that Noiz is actually&, 
really feeling this&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001000a01">
"Ngh&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001010a03">
"-!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001020a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0290]
My teeth slightly clench when Noiz jolts backwards&.

Shit&. That must've hurt&.

I look up to try and apologize&.&.&.but was shocked&.
Noiz's mouth and eyes are both half-open&, and his cheeks 
are dyed a deep red&.

He looks at me&, taking shallow breaths&.

It didn't hurt&.
It felt good&.&.&.

I test it out again and bite the tip of his cock&.

{
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1300,null,false);

	Fw("fw�m�C�Y_�ʏ�a�@��_ero3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001030a03">
"&.&.&.! Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0300]
Noiz closes his eyes with strained eyebrows while his weak 
breaths spilled out of his lungs&.

&.&.&.He really feels it&.

He slowly opened his eyes and smiled with a romantic 
expression&.

{
	Fw("fw�m�C�Y_�ʏ�a�@��_ero2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001040a03">
"That hurts&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0301]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001050a01">
"&.&.&.Perverted brat&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0310]
I murmer a snarky comment out unconsciously&, then move 
my hands and mouth again&.

This guy actually does like pain&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);
}
Something touched my stomach when I started to bite up and down his stiff dick&.

Noiz's bandaged fingers were loosely tracing the line of 
my body&.

{
	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,400,0,1200,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001060a01">
"Mn&, mm&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0311]
The feeling of it was too slow&.&.&. and I impatiently swallow
again but then take my mouth off his still-stiff cock&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001070a01">
"-!&.&.&.Ha&.&.&.Haah&."

{
	Fw("fw�m�C�Y_�ʏ�a�@��_ero3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001080a03">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��23");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��24");
	MusicStart("SE02",0,600,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0320]
I wipe my mouth and pull down my pants and underwear&,
leaving them to hang off one of my legs&.

I got pretty hard from giving Noiz head earlier&.

His piercing focus flicked to the lower half of my body and
his face went even redder&.

{
	Fw("fw�m�C�Y_�ʏ�a�@��_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/5001090a03">
"Woah&. It can get like that just by sucking?"

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/5001100a01">
"&.&.&.Shut up already&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i200", 200, -217, -217, "cg/bg/l/bg107011_1_�a�@��_l.jpg");
	Zoom("�G�w�i200", 0, 1500, 1500, null, true);
	Request("�G�w�i200", Smoothing);
	Fade("�G�w�i200", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0321]
I get on my knees and straddle myself onto Noiz's lap&.

The sound of the bed springs squeaking clearly rang in my 
ears&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2553h.nss"]

}
