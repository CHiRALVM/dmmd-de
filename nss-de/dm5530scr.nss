//<continuation number="750">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();�@���A���Ƙ@�͊m���ɑ��݂��Ă���B
	}

}


scene dm5530scr.nss_MAIN
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
	#ev553���t��������߂�@=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5540_vs.nss";

}


scene dm5530scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg210011_2_�\�I�C�ƍ��l");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/bg210011_2_�\�I�C�ƍ��l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 1030, 1030, null, true);
	CreateTextureSP("�G�w�iEF", 100, Center, Middle, "cg/bg/bg210011_2_�\�I�C�ƍ��l.jpg");
	Request("�G�w�iEF", Smoothing);
	Zoom("�G�w�iEF", 0, 1030, 1030, null, true);
	Fade("�G�w�iEF", 0, 1000, null, true);
	Fade("�G�w�i", 0, 500, null, true);

	CreateSE("SE01","se�[��_���__����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 2000, null, true);
	DrawEffect("�G�w�iEF", 0, "Ripple", 200, 200, null);
	FadeDelete("�G�F��", 3000, null, true);

	Wait(1000);
	Fade("�G�w�i", 1500, 400, null, true);

	Wait(1000);

	SoundPlay("@dm015",0,450,true);

	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",500,true);

//�����o�F���ʏ�̘@���߂������ɑ��t�����߂�
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000010a06">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_shock4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000020a01">
"Ren&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Under the wall was Ren&, standing there with a sad look in 
his eyes&.

I can't sense any murderous intent from him&.

After this&, I'll face him&.
I'll be facing his true feelings&.

He stares at me for a little bit&, and then slowly opens 
his mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000030a06">
"I've always been watching over you&. I was always
 with you&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000040a01">
"&.&.&.Yeah&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal2");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000050a06">
"I was born for that reason&. My role was to protect you by
 keeping the balance of your mind in check&." 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000060a06">
"But as you started to lose control over yourself and
 became unstable&, my voice couldn't reach as far&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
That must've been when I used to lose control during Rhyme&.

I made Granny so worried&.&.&. but it must've been a burden 
on Ren too&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000070a06">
"I don't know what would've happened to you if you lost all control over your heart and my voice wouldn't reach you
 anymore&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000080a06">
"But I couldn't do anything except call out to you from
 inside&. Nothing physical&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000090a06">
"Terrified of my lack of ability&, I was left to only
 imagine what I could do&. But that's when I went inside
 of that old Allmate&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	EfRecoIn1(10000,200);
	Delete("�G�w�iEF");
	Delete("�G�w�i");

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev004���@�N��.jpg");

	EfRecoIn2(500);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
That Allmate&.&.&. so that dog one Ren was in&.

Ren was thrown out on the roadside&, and the sight was so 
pitiful that I ended up picking him up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000100a06">
"I thought it was my chance&. When the Allmate was
 registered&, the registrant recognition chip went
 online and I transferred in my consciousness&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000110a06">
"And when that happened&, my consciousness tuned in with
 the dog Allmate&. As an Allmate&, I could physically
 influence you&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000120a06">
"For a short while&, as that Allmate&.&.&. as Ren&, I connected with you&. I knew everything about the accident with Rhyme&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000130a06">
"But until now&, all memory of that incident had been
 erased&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);


	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000140a06">
"And then I had forgotten both about the Rhyme incident and
 who I really was&, that I was 'the other person inside
 Aoba'&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000150a06">
"I'd led myself to believe that I was living as Ren&, but I
 remembered&. Who I was&, what my purpose is&. I remembered
 it because of that worm&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal2");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000160a06">
"The worm that led to that bug had been built into the
 system and manifested in all the Allmates as emotional
 outbursts&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000170a01">
"'Emotional outbursts?'"

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000180a06">
"It just hasn't been announced publicly&. All Allmates have
 had it built in from the begninning&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev550�o�O��Ԃ̘@.jpg");
	DeleteAllSt(0,true);

	EfRecoIn2(500);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
If they were all infected from the beginning&, it must've 
been Toue's work&.

Noiz said that there was a bug going around with no way to repair it&, and this was probably it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000190a06">
"Not only does the bug tamper with emotions&, but memories&,
 too&.&.&. it rattles us with emotions that shouldn't be
 there&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000200a06">
"When an unexpected error occurs&, the bug will link with an Allmate's consciousness&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000210a06">
"It effects an Allmate's emotion function&, and that is
 why these emotions were born inside of me&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000220a06">
"So&.&.&. I ended up becoming Ren&, unable to live as my
 original self&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");

	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",0,true);

	EfRecoIn2(400);

	Wait(300);
	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000230a01">
"What do you mean&.&.&.?"

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000240a06">
"The first emotion I learned was an unbearable pain&. I&.&.&.
 Ren was an old model&. No match for a new model in terms of
 functions&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000250a06">
"Envy&, an inferiority complex&, despair&. I panicked at the
 thought that you might throw me away for a new model&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000260a06">
"It may have been the feelings of 'Ren'&, not me&, but&.&.&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000270a06">
"I noticed that&.&.&. it was a feeling that made me
 tremble with fear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000280a06">
"I don't want to hand you over to anyone&. I always want to
 be by your side&. Not to just watch over you&, but be
 something that could experience emotions with you&."

{	Fw("fw���t_�ʏ�_shock4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000290a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000300a06">
"It was an idea far from what my original duty was&. I knew
 that&, but I couldn't stop it&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal2");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000310a06">
"Stuck between my emotions and my duty&, I wasn't able to
 pick either one&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000320a06">
"So I accepted the route where you would remove me from
 yourself&. If you would strongly reject me&, I'd disappear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000330a01">
"And&.&.&. when you were seperated from me&, you'd bare your
 teeth at me and snap&."

{	St("C",740, @0,@0,"st�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000340a06">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Ren keeps silent&.

After listening to his entire story&.&.&.

Frankly&, I was a little pissed off&.

Half of it was just shock&, but the other was&.&.&.

What the hell was he saying?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);

	Wait(300);
	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000350a01">
"You're such a little kid&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000360a01">
"If you've always been with me&, shouldn't you know me the
 best?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000370a01">
"Do you really think I hate you just because you snapped at me?"

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000380a06">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000390a01">
"Why do you think I kept working on you for so long even
 though you were some old model? Because you're important
 to me&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000400a01">
"You're important&, so I'd search like hell for parts just
 to fix you if you were broken&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000410a01">
"All of it&, all&, all&, all of it was because you're precious to me&. Who cares about newer types?"

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000420a01">
"I don't really get what you're going on about with your
 emotions and all&, but is it really that bad?"

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000430a01">
"Is it such a bad thing to feel emotions&, or to think about things?"

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_normal2");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000440a06">
"&.&.&.Right now I'm going against my very reason for being&.
 My role is only to keep your mind in balance&, but I'm only
 disturbing it now&."

//felt a little too odd for Ren to be using raison d'etre

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000450a06">
"I can't exist like this&. Neither your mind or body can
 take my contradicting existance for long&. I'll finally
 be extinguished&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000460a01">
"No&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
The idea of Ren disappearing entirely from my life flashes through my mind&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000470a01">
"&.&.&.No&. I won't ever forgive you&. Aren't you me? Aren't I
 the one who decides whether you can or can't be here?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000480a01">
"I'll do whatever I have to do to keep you here&. Rhyme was
 like that too&."

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_normal2");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000490a06">
"The one who vanishes will only be me&. The Allmate Ren will return back to what it was like at the beginning&,
 without any problems&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000500a06">
"So there won't be any drawbacks for you&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000510a01">
"&.&.&.!"

{	FwPro("fw���t_�ʏ�_rage",7000,"fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000520a01">
"No one said anything like that&. It's not about the
 Allmate&. Now&, you listen to me&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000530a01">
"Ren&, you're&.&.&. irreplaceable&, and not as an Allmate&. I
 don't want you to go away&. I want you to stay with me&."

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000540a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000550a01">
"But you're still going to disappear&.&.&.?"

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000560a06">
"Aoba&.&.&."

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_worry");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000570a06">
"I'm very happy that you feel that way&, but&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
Ren shuts his mouth and casts his eyes downwards&.

No matter how much we argue&, nothing will get through for 
sure&.

So I went up close to him&.

I reached my arms out and gently embraced him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
	Wait(150);

//���r�d�F�y���ߎC��
//�����o�F�d�u�̑��������\��

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

/*
	CreateTextureEX("�G�d�u100", 3000, Center, InBottom, "cg/ev/l/ev553���t��������߂�@_l.jpg");
	Fade("�G�d�u100", 1500, 1000, null, true);
	Delete("�G�w�iEF");
*/

	CreateTextureEX("�G�d�u100", 3000, -851, -331, "cg/ev/l/ev553���t��������߂�@_l.jpg");
	Move("�G�d�u100", 1000, -751, -331, Dxl1, false);
	Fade("�G�d�u100", 1000, 1000, null, true);
	Delete("�G�w�iEF");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000580a06">
"Aoba&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000590a01">
"I'll say it over and over&. I don't want you to disappear&.
 You're irreplaceable&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000600a01">
"So&, stay with me&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000610a06">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
When I raise my head&, I see Ren's expression changing for 
the first time&.
His eyebrows squeeze together&, and he squints with pain&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
His hand timidly touches my cheek&.&.&.
And he tightly returns my embrace&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("�G�d�u200", 3000, -338, -188, "cg/ev/l/ev553���t��������߂�@_l.jpg");
	Move("�G�d�u100", 1000, -651, -331, Dxl1, false);
	Move("�G�d�u200", 1000, -338, -138, Dxl1, false);
	Fade("�G�d�u200", 700, 1000, null, true);
	Wait(500);

	Delete("�G�d�u100");
//�����o�F�d�u�̑��t�Ƙ@�Ɋ��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000620a06">
"&.&.&.! Aoba&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
This world is fake&, only composed of data&. I'm not truly 
able to touch Ren&, and he's not able to touch me&.

But the feel of Ren's skin is definitely on my hands&.

His body heat seeps through to my skin and under it&.

Ren holds me with a frightening strength&, enough to make 
it hard to breathe&.&.&.

But it makes me happy&.

Feeling Ren's strong emotions for me&, I firmly hug him 
back&.

Right now&, we're both here&. The two of us&.
And that's the most important thing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u300", 3000, Center, Middle, "cg/ev/ev553���t��������߂�@.jpg");
	Fade("�G�d�u300", 1000, 1000, null, true);
	Delete("�G�d�u200");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000630a01">
"Ren&, promise me this&. Promise me that you'll never think
 of disappearing ever again&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000640a06">
"Aoba&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000650a01">
"Promise me&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000660a06">
"&.&.&.I understand&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
Ren buries his face into my shoulder&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0162]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000670a06">
"I understand&, Aoba&. I promise&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000680a01">
"&.&.&.Okay&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("�G�d�u300", 500, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
I slowly move away and look into Ren's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�@_�ʏ�o�O_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
Inside of his amber eyes&, I see a dim twinkle&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0173]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/3000690a01">
"Now&, let's go&. Everyone's waiting on the other side&."

{	St("C",740, @0,@0,"bu�@_�ʏ�o�O_normal2");
	FadeSt("C",200,true);}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/3000700a06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//	DeleteFw();
//	DeleteAllSt(200,true);

	Wait(300);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0174]
I grab Ren's hand&, nod to him&, and close my eyes&.

{
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I concentrate&, thinking of the two of us rising up from 
the ground&.

Higher&, higher&.&.&.

I picture the image of breaking through an invisible wall&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);

/*
	ClearFadeAll(3000, true);

	CreateColorSP("�G�F��", 5000, "000000");

	Wait(2000);

	CreateSE("SE01","se��_���R_�g01L");
	MusicStart("SE01",3000,600,0,1000,null,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/bg210011_2_�\�I�C�ƍ��l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 1030, 1030, null, true);
	CreateTextureSP("�G�w�iEF", 100, Center, Middle, "cg/bg/bg210011_2_�\�I�C�ƍ��l.jpg");
	Request("�G�w�iEF", Smoothing);
	Zoom("�G�w�iEF", 0, 1030, 1030, null, true);
	Fade("�G�w�iEF", 0, 1000, null, true);
	Fade("�G�w�i", 0, 500, null, true);

	DrawEffect("�G�w�iEF", 0, "Ripple", 200, 200, null);

	OnBG(10,"bg210011_2_�\�I�C�ƍ��l");
	FadeBG(3000,true);

	FadeDelete("�G�F��", 2000, null, true);

	dm5530_SE_LOOP();

	Wait(1500);
*/

	ClearFadeAll(2000, true);
	CreateColorSP("�G�F��", 5000, "000000");

	Wait(1000);

	CreateColorSPadd("�G�F��", 3000, "FFFFFF");

	CreateTextureSP("�G�d�u200", 200, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");
	CreateTextureEXadd("�G�d�u201", 201, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");
	LastfireOGMIX("@�G�d�u201","�v���Z�X�t�@�C���[");

	CreateSE("SE01","se��_���R_�g01L");
	MusicStart("SE01",3000,400,0,1000,null,true);

	Wait(1500);

	CreateVOICE("���t","dm02/2000070b01");
	$SETime01 = RemainTime("���t")/3*2;
	CreateVOICE("�@","dm02/2000080c03");
	$SETime02 = RemainTime("�@")/3*2;
	MusicStartSet("���t",1000,-200,1000,null,false);
	MusicStartSet("�@",1000,200,1000,null,false);

	CreateProcessEX("�v���Z�X���ɂ傲�ɂ�", "Proc_dm5530scr_01Act");
	Request("�v���Z�X���ɂ傲�ɂ�", Start);

	FadeDelete("�G�F��", 1500, null, true);

	Fade("�G�F��", 3000, 100, null, true);

	Wait(1500);

//�����o�F���̖�
//���r�d�F�Â��Ȕg�̉�

//�����Ə��߂ĉ�����C�ӂ�\���B�Â��Ȕg�̉��B
//���ɉ��͂��Ȃ��B
//�t���ɂȂ��Ă��镃�̉e�B
//���S�ĉ��o�ł̕\������]�ł����A�f�ނ�����Ȃ��Ȃǂł�����`�ʂ����܂��B

//��dm0220�Ř^�����������g�p�B
//�����ȉ��͂قƂ�Ǖ������Ȃ����炢�̉��ʂŁASE�Ƃ��ă��[�v�����܂��B
//���̒��ŕ������q�\�q�\�₦�ԂȂ���b���Ă銴���ł��B

//�c���^�r�d�p�f��
//�y�����t�z
//<voice name="�����t" class="�����t" src="voice/dm55/3000710b01">
//�u�_�����B�R�C�c�ɂ͋ߊ��ȁB����ȃ��c��M����ȁB���̌������Ƃ𕷂���B�R�C�c�͊�Ȃ��B����ȃ��c��艴��M����v

//���c���^�r�d�p�f��
//�y�@�i�q���j�z
//<voice name="�@�i�q���j" class="�@�i�q���j" src="voice/dm55/3000720c03">
//�u�ނ�M���āB�ނ͕K�����t�̗͂ɂȂ��Ă����B�ނ̌������ƂɎ����X���āB���v�A��������B�����|�����Ƃ͂Ȃ��B���v������v

//�����݁FSE���[�v���o

//��dm0220�Ř^�����������g�p�B
//���ȉ��A�������H�����Ďg�p
//�i�Ƃ���ǂ��땷�����Ȃ������Ɂj

	SetVolumeEX("SE01", 3000, 300, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//It's not scary, so leave your own world
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm55/3000730b17">
"&.&.&.&.-ry, your&.&.&. -ld&."
//It should be this unidentifyable from the full line in the comments

//It'll be fine&. You can always destroy it&.
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm55/3000740b17">
"&.&.&.-ne&.&.&.y&.&.&.can&.&.&.al- it&."

//You can destroy it and then make a new one afterwards&. The possibilities are endless&.
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm55/3000750b17">
"&.&.&.-roy&.&.&.th&.&.&.world&.&.&.-less&.&.&."

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F���I���
//�����o�F�����̒�����m�C�Y�����̃��C���t�B�[���h�֖߂�

//	dm5530_SE_LOOP_Delete(2000);
//	Wait(1000);
//	SetVolumeEX("SE*", 2000, 0, null);
//	ClearFadeAll(1500, true);
//	Wait(2000);

	Wait(1500);

	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("���t", 3000, 0, null);
	SetVolumeEX("�@", 3000, 0, null);
	Fade("�G�F��", 3000, 1000, null, true);

	ClearFadeAll(2000, true);

	Wait(2000);

//�����t�@�C��["dm5540_vs.nss"]

}