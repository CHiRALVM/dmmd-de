//<continuation number="230">
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


scene dm3770.nss_MAIN
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

	#bg002012_1_���Z����S�i=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3780.nss";

}


scene dm3770.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg002012_1_���Z����S�i");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -479, -578, "cg/bg/l/bg002012_1_���Z����S�i_l.jpg");

	FadeDelete("��w�i", 1000, null, true);

	Move("�G�w�i100", 2000, -479, -265, Dxl1, true);

	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
After the central part of Oval Tower collapsed&, all 
functions of Platinum Jail came to a halt&.

But a quick intervention from the mainland calmed the 
chaos&.

The cause of Oval Tower's collapse was said to be the 
breakdown of its main system and subsequent destructive 
blasts set off by terorists&.

Most of the people left in the tower were miraculously 
saved&, and there were no deaths or critical injuries&.

Before the tower began to act up&, it seems like a message 
was transmitted to the tower&.

However&, a portion of Toue's inner personnel are missing&.

Toue's plans&, research&, and experiments regarding 
destroying peoples' minds were brought into the light and 
Toue Inc&. took on furious blame&.

As a result&,Toue Inc&.'s affiliated businesses have been 
undertaken by different companies&. Allmates as well&.

Even the Rhyme companies have been transformed&, Usui is 
no longer used&.

Soon&, Toue Inc&.'s image will fade from Midorijima&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Right now&, the islanders are trying to restore their 
island to what it originally was&.

The Scratch members and I safely returned to the Old 
Resident District&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000&, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(1000);

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/bg/bg305021_5_�v���`�i�W�F�C���Q�[�g�O.jpg");

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�F��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
When we made it to the gates outside of Platinum Jail&, the 
remainder Scratch members in the Old Resident District came
to greet us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("��z1001", 1001, -675, -479, "cg/bg/l/bg305021_5_�v���`�i�W�F�C���Q�[�g�O_l.jpg");
	Move("��z1001", 1000, -775, -479, Dxl1, false);
	Fade("��z1001", 1000, 1000, null, true);
	Delete("��z1000");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
And then&, a member asked me&, "So you're Aoba?"

It seems that he was the man Mink said he "wanted to hand 
over" me to&.

It was like he was giving me support&.

When I heard that&, I felt ashamed of all the time I 
distrusted Mink&.

I was ashamed from the bottom of my heart&.
I wanted to apologize&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 500, 1000, Dxl3, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
&.&.&.But I can't possibly do that now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(1500);

	OnBG(10,"bg106011_5_�p�r���L��");
	FadeBG(0,true);

	Delete("��z1001");

	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
When Mink's plans were over&, the Scratch members 
disassembled&.&.&.

And I've heard they've been going about their lives freely now&.

But it looked like none of them wanted to dissolve&.

They were triumphantly smiling when Mink was their Head 
that they protected&.

I was the last person to be with Mink&, so everyone kept 
asking me questions&.

So they would laugh when they would joke around and ask&, 
"Do you think Mink died after that?"

And then everyone would laugh saying "I sure bet he did!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(1500);

	OnBG(10,"bg101011_1_���Z����ʂ�\");
	FadeBG(0,true);
	Delete("��z*");

	FadeDelete("�G�F��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
I too changed when I returned to the Old Resident 
District&.

Mainly&, it was as if my headaches never happened in the 
first place&.

The feeling of pain in my hair gradually numbed out&.

And I haven't felt any of "his" presence lately&.

Who would start up my headaches when I used the power of 
Scrap&, a different being inside of me&.

But I know that he's still inside of me&.
Somewhere deep inside of my mind&, sleeping&.
That's how I feel&.

So I'm just a little anxious over it&, but otherwise pretty calm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
&.&.&.The days passed with Mink gone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(2000);

	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

	PrintGO("��w�i", 10000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	CreateTextureEX("�G�d�u101", 101, -308, -118, "cg/ev/m/ev002���t�o��a_m.jpg");
	CreateTextureSP("�G�d�u100", 100, -308, -195, "cg/ev/m/ev002���t�o��_m.jpg");

	Wait(1000);

	Move("�G�d�u100", 500, -308, -118, Dxl1, false);
	FadeDelete("��w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/7000010a01">
"Yes&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/7000020a01">
"&.&.&.Yes&. Yes&. Oh&, understood&. I look forward to
 working with you&. Please excuse me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,500,null,false);

	Fade("�G�d�u101", 500, 1000, Dxl3, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/7000030a01">
"&.&.&.Whew&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u101", 250, null, true);

	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I put down the receiver and stretch out&, my elbow resting 
on the counter&.

That was just an inquiry from a customer&.

I used to keep getting weird calls from people obsessed 
with my voice&, but it hasn't been happening lately&.

After Platinum Jail's tower fell&, life here has returned 
to normal&.

I went back to working at Heibon&, and Koujaku&, Noiz&, 
and Clear are all fine&.

Mizuki has also been doing great in rehab&, I even went to 
visit him yesterday&.

Sometimes I think that&.&.&. it feels like the entire&, huge 
incident was just a dream&.

But that's not how it is&.
There are people I shared thoughts with&, and even&.&.&.

Mink isn't here&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The tower collapsed&, so I don't know whether Mink was 
saved or not&.

I tried what I could to get information&, but I wasn't able 
to find anything&.

And it's unreasonable to think he was saved at all&.

But I still wasn't able to accept that hopeless reality&.

He may have been saved and be living somewhere&.

I couldn't get that thought out of my mind&.

&.&.&.My desire for that to be true was just too strong&.

There was some deliberation going on because all of the 
Scratch members were escaped prisoners&, but in the end 
they were all released on parole&.

Looking at the system on the island&, nearly all prisoners 
had been in there for minor offenses&.

So I still went to visit Scratch members from time to time&.

I went because I wanted to know what they knew about Mink&.

It's just my opinion&, but I feel like they changed after 
that incident in Platinum Jail&.

I wouldn't have known them otherwise&, but right now 
there's a secret feeling of solidarity going around&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1000, Center, Middle, "cg/bg/bg106011_5_�p�r���L��.jpg");

	EfRecoIn2(500);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000040e45">
"Isn't there a prison in the Northern District? When anyone was sent there&, they believed it when they were told
 'You're going to die if you leave this place&.'"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000050e45">
"We were put in weird rooms&, with lights and this weird
 song playing&.&.&. Something like that&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000060e45">
"So we didn't break outta there&. We couldn't even if we
 wanted to&. There were some brutal prisoners in there&, we
 were pretty obedient compared&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/7000070e46">
"But the one who knew that the most was Mink-san&. He
 busted us out and opened our eyes when he beat our asses!"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000080e45">
"Thinking about it&, his punches were meant to kill back
 then&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/7000090e46">
"Mink-san was one of those rare ones with one hell of a
 will&, it shone through&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/7000100e46">
"I think he came to the prison just to get to Toue too&.&.&.
 It was all according to plan&, I guess&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000110e45">
"Why did Mink come&, again? He was kind of a special guy&.
 I think he came on direct orders from Toue&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000111e45">
"I heard from the jailer that he was there to observe the
 convicts&. The ones being researched&. Trials or something?
 Something like that&, I dunno&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000112e45">
"It's because prisoners from the Old Resident District
 were like trash&. They couldn't do it to the Platinum
 Jail's public so they did it all in secret&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000113e45">
"And Mink-san was there for a long time&, I think he did
 what he wanted when he made friends with the jailers&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000120e45">
"I'm pretty sure he was greasing some palms&. It was free
 roaming in the prison&, so making some cash was normal&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/7000130e45">
"Besides&, we'll meet him again&. He's not a guy that dies so easily&. Don't you tink he's alive and kickin'?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");
	DeleteSt("C", 0,true);

	EfRecoIn2(400);

//	Fw("fw�H��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm37/7000140b07">
"Aoba-kun&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Haga-san called out to me as I was lost in thought while 
staring at Bonjin-kun&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm37/7000150b07">
"You can take off for the rest of the day&."

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/7000160a01">
"But it's still a little early&.&.&."

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm37/7000170b07">
"Not many customers have come today&, one person should do
 it&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/7000180a01">
"&.&.&.Excuse me&, and thank you&. I'll be leaving&, then&."

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm37/7000190b07">
"Yes&. See you tomorrow&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
He didn't say it&, but I know Haga-san has been looking out for me&.

He's been telling me that I can get off earlier a lot more lately&.

It probably shows on my face&.

How I still haven't given up on Mink yet&.

I couldn't shake off the feeling of being really sorry for what Haga-san is doing for me&.

Mink must be out there alive&, somewhere&.

Those feelings grow stronger day by day&.

{
	CreateTextureEX("�G�w�i100", 100, -371, -359, "cg/bg/l/bg102011_5_���}�X��_l.jpg");
	Move("�G�w�i100", 800,  -371, -289, Dxl1, false);
	Fade("�G�w�i100", 800, 1000, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1800, 0, null);
}
I slightly lower my head to Haga-san and pick up my bag 
across from me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/7000200a01">
"Ren&, we're going back&."

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm37/7000210a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
I pick up Ren from my feet and place him in my bag&.

I was able to repair Ren when we returned to the Old 
Resident District&.

Although I say that&, Haga-san did give me the parts I 
needed&.

It was definitely a tough job&, but I didn't want Haga-san 
or the manufacturer to do it&.

I had decided that I would be the one to fix Ren&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i100", 500, null, true);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/7000220a01">
"Excuse me&, then&."

{
	Fw("fw�H��_�ʏ�_normal");
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm37/7000230b07">
"Be careful&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

	ClearFadeAll(1000, true);

//�����t�@�C��["dm3780.nss"]

}
