//<continuation number="1070">
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


scene dm0810.nss_MAIN
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
	$GameName = "dm0820.nss";

}


scene dm0810.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104021_5_���t��䏊");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000010b03">
"Toue has always been doing neural research&. To put it
 simply&, I worked with the brain's plasticity&."

{
	Fw("fw�^�G_�ʏ�_normal");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000020b03">
"We tested how some drugs could affect brains that had lost their functionality&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000030b03">
"I was hoping to find the solution to be able to save
 people who had damaged brains; I always believed that it
 was an amazing thing to study&."

{
	Fw("fw�^�G_�ʏ�_sad");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000040b03">
"But&, it didn't turn out to be that way&."

{
	Fw("fw�^�G_�ʏ�_shock");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000050b03">
"Toue's real objective was to find a way to manipulate
 people in any and every way possible&. That's what the
 research was for&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000060b03">
"I believe that they often designed secretive programs&, and
 the issues grew over time&. When I looked into it&, you
 could see it in their documents&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000070b03">
"In there I read that they had perfectly substitued a
 person's consciousness successfully&."

{
	Fw("fw�^�G_�ʏ�_sad");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000080b03">
"When I saw that&, I felt like I was dead&. I did it all to
 save people&, and in the end it backfired&."

{
	Fw("fw�^�G_�ʏ�_normal");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000090b03">
"After that I stopped all of my research and quit&. I
 decided that I'd return to this island&, my hometown&,
 and live  the rest my life in peace&, without Toue in it&."

{
	Fw("fw�^�G_�ʏ�_normal2");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000100b03">
"But&, a little while ago I got a message&. From Toue&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000110a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000120b03">
"He wrote that there was an emergency at the research
 center and requested that I return&. But I kept refusing&.
 I never want to associate myself with him ever again&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000130b03">
"He must've gotten furious at me&. Then they took serious
 action&. That's what Morphine is&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000140a01">
"But&, then why was Mizuki&.&.&. Why was Dry Juice caught up in it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000150b03">
"Recently&, haven't young people all around on this island
 been disappearing? They drug them up&, cause them to lose
 their senses&, and make them their patients&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000160b03">
"I think those are Toue's victims&. They coax them into
 Morphine and release them into the city&, just so they
 can be monitored for progress&."

{
	Fw("fw�^�G_�ʏ�_normal2");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000170b03">
"Otherwise they wouldn't have released failed subjects&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000180a01">
"Failed subjects&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000190b03">
"The ones who can't handle it and break down&. Their minds
 are destroyed and they become invalids&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/1000200a02">
"Then what happens to the successful ones?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000210b03">
"They're retrieved and are subjected to even more
 experiments&. Like when I spoke of the people with
 substituted consciousness&.&.&. They've lost their
 freedom by then&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000220b03">
"Didn't you see it when you looked at Mizuki? He stepped
 all over me because I was caught unprepared&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000230a01">
"What's Toue trying to do with the research? What's going
 to happen to the island now?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000240b03">
"Most likely to rid all people on this island of their
 minds&. That way Toue will be able to rule unopposed over
 his 'Kingdom'&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000250b03">
"If the method to break a person's mind is found quickly
 enough&, he'll also be able to buy other countries&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000260a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000270b03">
"Toue has his hands deep in this Old Residential District&."

{
	Fw("fw�^�G_�ʏ�_normal");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000280b03">
"It's been peaceful for several years now&, but&.&.&. his real
 plan may be only beginning now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Then everyone in this district will become like those test subjects?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G���w�i", 100, Center, Middle, "cg/bg/bg101011_1_���Z����ʂ�\.jpg");
	CreateTextureSP("�G�����G", 300, Center, InBottom, "cg/st/st�H��_�ʏ�_normal.png");
	CreateTextureSP("�G�����G��", 300, Center, InBottom, "cg/st/st���V�G_�ʏ�_normal.png");
	CreateTextureSPmul("�G����z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");
	CreateColor("�G���o�F", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("�G���o�F","�G���o�F");
	Request("�G���o�F", OverlayRender);

	St("C",741, @0,@0,"st�~�I_�ʏ�_normal");
	St("ML",740, @0,@0,"st�L�I_�ʏ�_normal");
	St("MR",740, @0,@0,"st�i�I_�ʏ�_normal");
	FadeAllSt(0,true);
	Move("@StNameC/C*", 0, @0, @50, null, true);
	Move("@StNameML/ML*", 0, @30, @50, null, true);
	Move("@StNameMR/MR*", 0, @-30, @50, null, true);
	Move("�G�����G", 0, @-131, @40, null, true);
	Move("�G�����G��", 0, @131, @40, null, true);

	FadeDelete("�G��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
Haga-san&, the stupid brats&, Yoshie-san&, everyone&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G��*");
	DeleteAllSt(0,true);

	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000290a01">
"&.&.&.We have to stop him&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000300a01">
"I won't let him&. I'll never let that happen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
As I mutter those words&, Granny looks at me with a pained  face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000310b03">
"&.&.&.There's still something I have to say&, Aoba&. It's about you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000320a01">
"Me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000330b03">
"You lost consciousness when you came to save me&, didn't
 you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000340a01">
"Oh&, yeah&. I had a really realistic dream too&.&.&. I talked
 with Mizuki in it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000350b03">
"That wasn't a dream&. What you were seeing was in Mizuki's
 head&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	FwPro("fw���t_�ʏ�_shock",1600,"fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000360a01">
"&.&.&.Huh? &.&.&.In his head?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G���G", 720, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal_x02.png");
	CreateTextureSP("�G���G��", 710, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal2_x02.png");

	DeleteSt("C", 200,true);

	CreateTextureSP("�G�w�i", 100, 50, -160, "cg/bg/l/bg104021_5_���t��䏊_l.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", MEDIUM);

	Zoom("�G�w�i", 0, 1300, 1300, null, true);

	Move("�G���G*", 0, @-50, @0, null, true);

	Move("�G�w�i", 1000, @25, @0, Dxl1, false);
	Move("�G���G*", 1000, @50, @0, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
Granny makes sure of something and looks into my eyes&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G���G", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000370b03">
"Don't you tell me that it's nothing&."

{
	dm0620_delay_pro();
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000380b03">
"I don't know if you'll believe me so easily&, but&.&.&. You're
 able to mix your consciousness in with other peoples'
 minds&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreatePlainSP("�G��", 5000);

	Delete("@�v���t�F�[�h*");
	Delete("@�G���G*");
	Delete("�G�w�i");
	Delete("�G���G*");

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
&.&.&.What?
What did she say?

My own consciousness inside someone else's head?

I don't understand what Granny's saying&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000390b03">
"We called that ability Scrap&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000400a01">
"Scrap&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000410b03">
"In your case&, you can induce Scrap with your voice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000420a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000430b03">
"I get over emotional when making speeches sometimes&, but I listen to why people say some things&. Don't you have a lot of those experiences?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev002���t�o��.jpg");

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	Delete("�G����*");

	CreateMaskSetSPTate("�G��", 3010);//�i�b�g���A�D��x
	CreateTextureSP("�G��/�G�w�i", 500, Center, Middle, "cg/bg/m/bg102021_5_���}�n����_m.jpg");
	CreateTextureSP("�G��/�G���G", 1000, Center, Middle, "cg/fu/x/fuAM�E�T�M���h�L_�ʏ�_normal_x.png");
	CreateColorSP("�G��/�G����", 700, "000000");

	SetShade("�G��/�G�w�i", MEDIUM);

	Fade("�G��/�G����", 0, 300, null, true);

	CreateTextureSP("�G����", 300, Center, Middle, "cg/bg/bg102021_5_���}�n����.jpg");

	OpenTateMask("�G��",0, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	CloseTateMask("�G��",0,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev061�S���W��a.jpg");


	EfRecoIn2(500);

	Wait(500);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000440a01">
"&.&.&.I guess you could say that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000450b03">
"Your voice has the power to pull people in&. If you decide
 to put it to use&, you'll be able to gain access to others'
 minds&."

//��z���i"dm4460_vs.nss"�j
{
	Fw("fw�^�G_�ʏ�_normal");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000460b03">
"If you're doing it to someone you know well&, and have a
 deep wish or desire&, you will most likely be able to plant
 that into their consciousness with your own&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000470b03">
"But&, if you use physical contact through the flesh as a
 means of contact&, the other person will be completely
 defenseless&."

{
	Fw("fw�^�G_�ʏ�_shock");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000480b03">
"When you do that&, as soon as you speak&.&.&. There's a
 possibility that their mind will 'break'&. That's just
 a theory&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000490a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
I was already finding it difficult to understand Granny&, 
but now&.&.&.

If I speak to someone's consciousness&, I can control them?

Being able to face them in their own minds?
Possibily 'breaking' them?

I don't get it all&.

It feels like she's speaking in some language I don't 
understand&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
//	FadeSt("C",200,true);

	Fw("fw�~���N_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm08/1000500a05">
"&.&.&.So that's what it was&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
Mink&, who was in the other room&, walks in at some point&, 
arms folded and leaning on a wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000530b03">
"Scrap is a strong power in your voice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev071�~�Y�L�ꂵ��.jpg");
	DeleteSt("C", 0,true);

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);

//	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000540a01">
"Then that weird place in my dream was actually Mizuki's
 mind&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000550b03">
"I can't say what you saw exactly&. But it probably was&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000560a01">
"I talked to Mizuki back there&. He was like he usually is&,
 and&.&.&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000570a01">
"He told me about how he was in so much pain&, and how he
 worried about Rib and Dry Juice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/1000580a02">
"So that's what he was so hung up about&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000590b03">
"&.&.The one you were speaking to was Mizuki's consciousness&.
 It was the real Mizuki&, with no lies&, only complete 
 truths&. How did you answer?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000600a01">
"I&.&.&. For some reason&, I suddenly remembered my past&.&.&.
 I don't understand why I forgot completely about being in
 Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
Koujaku and Noiz look at me&.
So it was like that&.&.&.

It's because I've always refused to participate in Rhyme&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000610a01">
"But&.&.&. when I was talking to the real Mizuki&, it felt
 weird like Rhyme did&.&.&. I can't really describe it&.
 What was it&.&.&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000620a01">
"Mizuki&.&.&. He was telling me something&. That Morphine
 wasn't what we thought it was&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000630a01">
"But before he said that&, he looked like he was in so much
 pain&.&.&."

{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm08/1000640a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0133]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000650b03">
"Hm&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
Deep wrinkles form on Granny's brow&, she snorts&, and 
begins to think&.

There was still the matter at hand to talk about&, but her  silence stays heavy&.

Here&, everyone is listening to Granny's words&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000660b03">
"This is my opinion&, and I'm not trying to condemn you at
 all&. But&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	Fw("fw�^�G_�ʏ�_normal");

//����"dm1380.nss"�ŉ�z�i���q
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0142]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000670b03">
"If you had chosen the right words at that time&, Mizuki's
 consciousness might have returned&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0143]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000680a01">
"Huh&, you mean&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0144]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000690b03">
"It's a horrible way of saying it&, but you could've taken
 the half-dead Mizuki and drawn out his true feelings&, but
 you left him there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000700b03">
"If you had&, for example&, 'peeled off his outer shell and
 exposed his flesh' in a way&. It's a very delicate thing&."

{
	Fw("fw�^�G_�ʏ�_normal2");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000710b03">
"So&.&.&. Mizuki's consciousness will never return&. Isn't
 that right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/1000720a02">
"Yeah&, that's what I'm hearing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000730b03">
"Mizuki was strung along in a trap by Toue&. Like when he
 was feeling the pain of his head splitting apart when you
 tried to speak to him&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000740b03">
"When he was dragged out and then left alone&, Toue's trap
 set off&. And that's why his mind has been destroyed&."

{
	Fw("fw�^�G_�ʏ�_normal");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000750b03">
"If he ever does come back&, it'll be from of his own
 willpower&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0153]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000760a01">
"! No way&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, 0, Middle, "cg/bg/bg101021_5_���Z����ʂ藠�H�n01�h���C�W���[�X.jpg");

	St("C",1740, @0,@0,"st�~�Y�L_�ʏ�_smile");
	FadeSt("C",0,true);

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0154]
Mizuki's mind was destroyed&.&.&. and it was my fault?

{
	CreateColorSP("�G�F��", 10001, "000000");
	DrawTransition("�G�F��", 500, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);
}
&.&.&.My vision goes pitch black&.

My fault&, no&.&.&.&.
Mizuki&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	EfRecoOut1(0);

	Delete("�G����*");
	DeleteSt("C", 0,true);

	EfRecoIn2(0);

	FadeDelete("�G�F��", 500, null, true);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0155]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000770b03">
"Aoba&. Your power is capable of destroying people&. That's
 why you need to be aware of it&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000780b03">
"I've always been thinking about when I should tell you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0156]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000790a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0157]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000800b03">
"I've always been here for you&. I've been able to protect
 you in this cage&. But now that's no good anymore&."

{
	Fw("fw�^�G_�ʏ�_normal2");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000810b03">
"If you use it to protect me&, it'll just go wild and all
 you'll be met with is misery in the end&. It's why Toue
 found you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000820b03">
"You were one of the first there when Toue began his
 research&. They wanted that power&, and they were willing
 to put their hands on your throat for it&."

{
	Fw("fw�^�G_�ʏ�_sigh");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000830b03">
"This time they're forcing their way in&, but I don't know
 what Toue is up to right now&. That's why you have to go
 on your own now&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000840a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
Even if you say that&.&.&.
I can't just accept it like that&.

What Granny just said was as much as I could take&.

But&.&.&.

But&, I understand that letting Toue do whatever he wants 
is dangerous&.

If I ignore him&, this island will become his plaything&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0173]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000850b03">
"A special event is opening in Platinum Jail soon&. It's not
 clear what it'll be about until the day it opens&, but
 they're offering it to the Old Resident District too&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm08/1000870a04">
"Why is the Old Resident District being invited? Isn't it
 usually isolated from Platinum Jail?"

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm08/1000880a03">
"They're opening it to the public&, and testing things out
 by inviting the District&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000890b03">
"Exactly&. The research is still unknown to the public&."

{
	Fw("fw�^�G_�ʏ�_normal");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000900b03">
"But with this event&, they'll be able to observe the
 results of their experiment&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0182]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/1000910a02">
"How are they going to observe them?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0183]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000920b03">
"Songs&, speeches&, lights&, videos&.&.&. They want to figure out
 how the people can be broken&, and if they can acquire
 anything new&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0184]
Saying that&, there's nothing we can do before the event&, 
is there&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/1000930a02">
"We'd better get to Platinum Jail as soon as possible&.
 Maybe even tomorrow&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000940a01">
"How are we going to do this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000950b03">
"There's a way to get in before the gates open&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1000960a01">
"There is?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0193]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1000970b03">
"Yes&. But I can't move&. You'll have to depend on someone
 else to help&. Go to Haga-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1001000a01">
"To Haga-san?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1001010b03">
"People that have lived here for a long time pretty much
 all know&. It's not too difficult&. You can ask for even
 more details&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
After saying that&, Granny gives out a pained breath&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0203]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1001020b03">
"Well&.&.&. I've talked a lot&, haven't I&, even though you all
 kept interrupting me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1001030b03">
"It wasn't much&.&.&. but I told you of the truth I saw when I
 was a researcher&. I'm sorry for getting you all caught up
 in this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_�֎q_����01");
	MusicStart("SE01",0,700,0,1200,null,false);

//	CreateSE("SE01","se�l��_����_�ߎC��01");
//	MusicStart("SE01",0,500,0,1400,null,false);
//	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
Granny faces us and lowers her head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0212]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/1001040a01">
"Granny&.&.&."

{	Fw("fw�g��_�ʏ�_sad");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm08/1001050a02">
"Tae-san&, don't&.&.&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm08/1001060a04">
"Grandmother&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0213]
After lowering her head for a few more seconds&, she looks  at everyone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/1001070b03">
"Now&, you all must be tired now&. You all could do more if
 you'd like&, but it's better to let yourselves rest now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�����t�@�C��["dm0820.nss"]

}
