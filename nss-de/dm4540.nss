//<continuation number="0">
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


scene dm4540.nss_MAIN
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
	$GameName = "dm4550.nss";

}


scene dm4540.nss
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
shutdown of its main system&. Further details are unknown&.

Most of the people left in the tower were miraculously 
saved&, and there were no deaths or critical injuries&.

Before the tower began to act up&, a message was apparently transmitted to it&.

However&, a portion of Toue's inner personnel are missing&.

Taking advantage of this opportunity&, Toue's plans&, 
research&, and experiments were brought into the light&.

With the plan to attract the people of the Old Resident 
District in with his special commemorative event foiled&, 
the people barely escaped his clutches&.

Toue Inc&.'s affiliated businesses have been undertaken by 
different companies&. Allmates as well&.

Even the Rhyme companies have been transformed&, and Usui is
no longer used&.

Soon&, Toue Inc&.'s presence will fade from Midorijima&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg101011_1_���Z����ʂ�\");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Right now the islanders are active in their efforts to 
take back Midorijima&.

Koujaku is still a hairdresser&, and I hear many rumors 
about Noiz's team&.

Mink broke all contact&, but he couldn't have simply droppeddead&.

Mizuki regained consciousness&. He can't leave the hospital 
yet&, but he's always smiling whenever I come to visit him&.

My headaches have become a thing of the past&.

And the pain I feel in my hair has become dimmer lately&.

I haven't felt "his" presence lately&.

He's the one who would flicker in my head whenever I would use the power of Scrap&.&.&.

But I know that he's still inside me&.

He's asleep in the innermost depths of my heart&.
That's what I feel&.

So in all honestly&, my anxiety isn't exactly gone&, but I'm calm enough&.

I had somehow managed to take Clear all the way to the Old Resident District for repairs&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg104001_1_���t��O�ʂ�");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
A month must have passed by now&. I asked Haga-san for a 
large amount of time off&, and would do nothing but 
attempt to fix Clear while secluded in my room&.

I hid him in my closet&, and would only go outside when I 
needed to eat&, go to the toilet&, or shower&.

Granny was always worried about me and pulled me out to 
ask what I was doing&.

At first I would get angry and just lie&, but I eventually 
confessed about Clear&.

Granny&.&.&. wasn't angry&.

She told me that she had asked a former researcher she 
worked with to repair him&.

Hearing that made me overjoyed&.&.&. I thought I would be able
to fix him myself&, but hearing that someone else could do 
it even better was a large relief to me&.

And it was the only way I could think of that could save 
Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(2000, true);

	Wait(2000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
It's been a year since Clear was taken to the research 
facility&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I've come back to work&, and I live my days out peacefully 
like before&.

The thought of Clear coming back always floats in the back of my mind&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(2000);

//�����t�@�C��["dm4550.nss"]

}
