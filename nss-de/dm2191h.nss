//<continuation number="840">
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


scene dm2191h.nss_MAIN
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
	#ev219�m�C�Y�Y���R�L=true;
	#ev219�m�C�Y�Y���R�La=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2192h.nss";

}


scene dm2191h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

//	OnBG(10,"bg302012_5_�O���b�^�[����02");
//	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -1019, -487, "cg/bg/l/bg302012_5_�O���b�^�[����02_l.jpg");

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Crap&. I'm nervous&.

But&.&.&. I have to do it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateTextureEX("�G�w�i101", 101, Center, Middle, "cg/bg/bg302011_5_�O���b�^�[����01�x�b�h�p.jpg");
	Fade("�G�w�i101", 500, 1000, null, true);

	Delete("�G�w�i100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I put my hand in Noiz's underwear and take out his dick 
that was still soft&.

Looking at his exposed member&, something catches my eye&.

&.&.&.He has piercings there&.

There are multiple piercings on the tip&. And even at the 
base&.&.&.

Looks like he has piercings all over his body&.

But I still didn't think he'd have them there&, at least&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);
}
As I stared at him&, strangely captivated&, Noiz takes out 
my shaft in the same manner&.

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000150a01">
"Nn&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Having someone else's fingers touching me feels a little 
ticklish&.

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000160a03">
"Move your hand&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
Noiz immediately starts to stroke my shaft&.

Is it okay to rub the piercings together&.&.&.?

I try to rub Noiz's cock gently&.

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000170a03">
"Do it stronger&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
&.&.&.This asshole keeps talking with a straight face&.

I decisively grab Noiz's cock&.

{
	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,600,0,1000,null,false);
}
I pump my hand up and down with more force&, the hard 
feeling of the piercings constantly on my palm&.

Feels kinda weird&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000180a01">
"&.&.&.Do these piercings hurt?"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000190a03">
"Nope&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000200a01">
"Even when you got them?"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000210a03">
"Yeah&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000220a01">
"Are you serious&.&.&. Ah&, is your tongue pierced too?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000230a03">
"This?"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000240a01">
"Aah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Noiz sticks out his tongue&.
I see several silver balls on it&, shining wet with saliva&.

Shouldn't it hurt to have your tongue and dick full of 
holes&.&.&.?

Overwhelmed&, my breathing gradually grows stronger because of Noiz's stimulation&.

Maybe because it's been so long&, but I feel super sensitive&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("�G�d�u110", 110, -245, -35, "cg/ev/l/ev219�m�C�Y�Y���R�L_l.jpg");
	Move("�G�d�u110", 1000, -404, -35, Dxl1, false);
	Fade("�G�d�u110", 1000, 1000, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000250a01">
"&.&.&.Nn&, uhn&.&.&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000260a03">
"&.&.&.Would you want a piercing too?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
While stroking my shaft that had become quite stiff&, Noiz  whispers low in my ear&. 

Just hearing him makes my heart jump a little&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000270a01">
"&.&.&.No way&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000280a03">
"Why?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000290a01">
"It seems painful&.&.&. Plus I've never really thought
 about it&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000300a03">
"Should I do it for you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,800,null,false);

	Move("�G�d�u110", 1000, -267, -361, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000310a01">
"Aah&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,800,null,false);

//	CreateSE("SE02","se�[��_��_�͂˂�06");
//	MusicStart("SE02",0,500,0,1200,null,false);
}
Noiz licks my ear&.

Again&, it feels ticklish&, now because of the piercing on 
his tongue&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000320a03">
"Your ears are pretty sensitive&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000330a01">
"&.&.&.I don't know&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000340a03">
"If that's the case&, it might hurt to get them pierced&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000350a01">
"&.&.&.Nh&, n&, ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,450,0,1200,null,false);

	Move("�G�d�u110", 500, -108, -529, Dxl1, false);
	FadeDelete("�G�d�u110", 500, null, true);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
As he speaks to me&, breathing in my ear&, Noiz starts to 
put more power to his hand movement&.

The liquid dripping from the tip smooths the movement&, and a sweet numbness spreads from my waist throughout my whole body&.

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000360a03">
"You too&, do it right&."

{
	Fw("fw���t_�ʏ�_shy4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000370a01">
"&.&.&.Ngh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
I try to hold back my voice&, and I start to move my hand&.

But&.&.&.

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000380a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
Noiz is only a little hard&, and he hasn't had any further  reaction for a while now&.

I check his facial expression with a little upward glance&, but he seems completely normal&.

&.&.&.Weird&.

Normally&, when you're getting a handjob&, you'd have to at  least feel something&, right?

Or maybe I'm just extraordinarily bad at this&.&.&.?

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000390a01">
"&.&.&.Not quite feeling it?"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000400a03">
"Mmn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��20");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
Letting out a voice I almost can't hear&, Noiz silently 
continues to stroke my cock&.

I try to move my hand harder too&, but I'm more focused on  something else&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��16");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u112", 112, -116, -64, "cg/ev/m/ev219�m�C�Y�Y���R�L_m.jpg");
	Move("�G�d�u112", 500, -189, -91, Dxl3, false);
	Fade("�G�d�u112", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000410a01">
"A&, unn&.&.&. Haa&, ah&.&.&. un&.&.&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000420a03">
"&.&.&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000430a01">
"Haa&, a&.&.&. aah&, wa&, it&.&.&."

I'm almost at my limit&.&.&.

But his face reflected in my view remains calm&, and I'm 
seized by a strange&, sudden worry&.

It might be weird to say now&, but&.&.&.

This is so embarrassing&. I&, the older one&, am the one 
getting worked up over this&, and he's just there like 
nothing's happening&.

At this rate&, it'll totally look like I have some kind 
of premature ejaculation problem&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��20");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u113", 113, Center, Middle, "cg/ev/ev219�m�C�Y�Y���R�L.jpg");
	Move("�G�d�u112", 500, -244, -127, Dxl3, false);
	Fade("�G�d�u113", 500, 1000, null, true);
	Delete("�G�d�u112");

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0149]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000440a01">
"Haa&, this is bad&, ah&.&.&. uah&, I'm gonna&, no way&, ah&.&.&.
 your hand&.&.&."

Get your hand off&, it'll get dirty&.
That's what I wanted to say&, but&.&.&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000450a03">
"&.&.&.Go ahead&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��20");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u114", 114, Center, Middle, "cg/ev/ev219�m�C�Y�Y���R�La.jpg");
	Fade("�G�d�u114", 500, 1000, null, true);
	Delete("�G�d�u113");

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000460a01">
"&.&.&.Gu&.&.&. ah&, ha&, ah&, ah&.&.&.Mn!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	FadeDelete("�G�d�u*", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
In the end&, I climax while holding Noiz's hand&.

My body trembles&, and the semen I just released drips from Noiz's fingertips&.

Out of breath&, I take a sidelong glance at Noiz&.

Honestly&.&.&. it felt good&.

But&, me alone&.&.&.

While I linger in self-hatred and regret&, Noiz lightly 
raises his soaked hand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2192h.nss"]

}
